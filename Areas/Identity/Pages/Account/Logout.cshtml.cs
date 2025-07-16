// Licensed to the .NET Foundation under one or more agreements.
// The .NET Foundation licenses this file to you under the MIT license.
#nullable disable

using System;
using System.Threading.Tasks;
using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Mvc.RazorPages;
using Microsoft.Extensions.Logging;
using NLog.Web;

namespace caomis2023.Areas.Identity.Pages.Account
{
    public class LogoutModel : PageModel
    {
		[Obsolete]
		private static readonly NLog.Logger _Nlog = NLogBuilder.ConfigureNLog("nlog.config").GetCurrentClassLogger();
		private readonly SignInManager<IdentityUser> _signInManager;
		private readonly ILogger<LogoutModel> _logger;

		public LogoutModel(SignInManager<IdentityUser> signInManager, ILogger<LogoutModel> logger)
		{
			_signInManager = signInManager;
			_logger = logger;
		}

		public void OnGet()
		{
		}

		[Obsolete]
		public async Task<IActionResult> OnPost(string returnUrl = null)
		{
			await _signInManager.SignOutAsync();
			_Nlog.Info(String.Format("UserLogout", "Application End"));
			if (returnUrl != null)
			{
				return LocalRedirect(returnUrl);
			}
			else
			{
				return LocalRedirect(Url.Content("~/Home"));
			}
		}
	}
}
