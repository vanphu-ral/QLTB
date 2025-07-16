using Microsoft.AspNetCore.Authentication;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Cors;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using MledNew2023.MVC.Helpers;
using System;
using System.Collections.Generic;
using System.ComponentModel.DataAnnotations;
using System.Linq;
using System.Reflection;
using System.Threading.Tasks;

namespace caomis2023.Areas.Identity.Pages.Account
{
	[AllowAnonymous]
	public class LoginModel : PageModel
	{
		private readonly UserManager<IdentityUser> _userManager;
		private readonly SignInManager<IdentityUser> _signInManager;
		private readonly ILogger<LoginModel> _logger;
		public IConfiguration Configuration { get; }
#pragma warning disable CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
		public LoginModel(SignInManager<IdentityUser> signInManager,
#pragma warning restore CS8618 // Non-nullable field must contain a non-null value when exiting constructor. Consider declaring as nullable.
			ILogger<LoginModel> logger,
			UserManager<IdentityUser> userManager, IConfiguration configuration)
		{
			try
			{
				_userManager = userManager;
				_signInManager = signInManager;
				_logger = logger;
				Configuration = configuration;
			}
			catch (Exception ex)
			{
				BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);
			}
		}

		[BindProperty]
		public InputModel Input { get; set; }

		public IList<AuthenticationScheme> ExternalLogins { get; set; }

		public string ReturnUrl { get; set; }

		[TempData]
		public string ErrorMessage { get; set; }

		public class InputModel
		{
			[Required]
			public required string UserName { get; set; }

			[Required]
			[DataType(DataType.Password)]
			public required string Password { get; set; }

			[Display(Name = "Ghi nhớ đăng nhập?")]
			public bool RememberMe { get; set; }
		}

		public async Task OnGetAsync(string? returnUrl = null)
		{
			try
			{
				if (!string.IsNullOrEmpty(ErrorMessage))
				{
					ModelState.AddModelError(string.Empty, ErrorMessage);
				}

				returnUrl = returnUrl ?? Url.Content("~/");

				// Clear the existing external cookie to ensure a clean login process
				await HttpContext.SignOutAsync(IdentityConstants.ExternalScheme);

				ExternalLogins = (await _signInManager.GetExternalAuthenticationSchemesAsync()).ToList();

				ReturnUrl = returnUrl;
			}
			catch (Exception ex)
			{
				BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);
			}
		}

		public async Task<IActionResult> OnPostAsync(string? returnUrl = null)
		{
			returnUrl = returnUrl ?? Url.Content("~/");
			string _connectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            try
			{
				if (ModelState.IsValid)
				{
					// This doesn't count login failures towards account lockout
					// To enable password failures to trigger account lockout, set lockoutOnFailure: true
					string uEmail = String.Format("{0}", Input.UserName);
					var result = await _signInManager.PasswordSignInAsync(Input.UserName, Input.Password, Input.RememberMe, lockoutOnFailure: false);
					BaseService.NLogInfor("User logged in.");
					if (result.Succeeded)
					{
						//Insert into UserLogin                    
						string IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress);						
                        _ = BaseService.AddUserLogin(String.Format("{0}", Input.UserName), IpAddress, _connectionString);
						BaseService.NLogInfor("User logged in.");
						return LocalRedirect(returnUrl);
					}
					if (result.RequiresTwoFactor)
					{
						return RedirectToPage("./LoginWith2fa", new { ReturnUrl = returnUrl, RememberMe = Input.RememberMe });
					}
					if (result.IsLockedOut)
					{
						_logger?.LogWarning("User account locked out.");
						return RedirectToPage("./Lockout");
					}
					else
					{
						ModelState.AddModelError(string.Empty, "Mật khẩu hoặc tên đăng nhập không đúng.");
						return Page();
					}
				}

				// If we got this far, something failed, redisplay form
			}
			catch (Exception ex)
			{
				BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);
				return LocalRedirect(returnUrl);
			}
			return Page();
		}
	}
}