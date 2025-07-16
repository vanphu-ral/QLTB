using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using MledNew2023.MVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Security.Claims;
using System.Threading.Tasks;

namespace MledNew2023.MVC.Controllers
{
    //[Authorize(Roles = "SuperAdmin")]
    [Authorize]
    public class UserRolesController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        private readonly SignInManager<IdentityUser> _signInManager;
        private readonly UserManager<IdentityUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;

        public UserRolesController(UserManager<IdentityUser> userManager, SignInManager<IdentityUser> signInManager, RoleManager<IdentityRole> roleManager)
        {
            _userManager = userManager;
            _signInManager = signInManager;
            _roleManager = roleManager;
        }

        public async Task<IActionResult> Index(string userId)
        {
            var viewModel = new List<UserRolesViewModel>();
            var user = await _userManager.FindByIdAsync(userId);
            string userName = user.UserName;
            foreach (var role in _roleManager.Roles.ToList())
            {
                if (role.Name == "SuperAdmin" || role.Name == "SystemAdmin")
                {

                }
                else
                {
                    var userRolesViewModel = new UserRolesViewModel
                    {
                        RoleName = role.Name
                    };
                    if (await _userManager.IsInRoleAsync(user, role.Name))
                    {
                        userRolesViewModel.Selected = true;
                    }
                    else
                    {
                        userRolesViewModel.Selected = false;
                    }
                    viewModel.Add(userRolesViewModel);
                }
            }
            var model = new ManageUserRolesViewModel()
            {
                UserId = userId,
                UserName = userName,
                UserRoles = viewModel
            };

            return View(model);
        }

        public async Task<IActionResult> Update(string id, ManageUserRolesViewModel model)
        {
            var user = await _userManager.FindByIdAsync(id);
            var roles = await _userManager.GetRolesAsync(user);
            var result = await _userManager.RemoveFromRolesAsync(user, roles);
            result = await _userManager.AddToRolesAsync(user, model.UserRoles.Where(x => x.Selected).Select(y => y.RoleName));
            var currentUser = await _userManager.GetUserAsync(User);
            await _signInManager.RefreshSignInAsync(currentUser);
            //await Seeds.DefaultUsers.SeedSuperAdminAsync(_userManager, _roleManager);
            return RedirectToAction("Index", new { userId = id });
        }
        [HttpGet]
        public async Task<object> GetRoleUserLogin()
        {
            try
            {
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                var user = await _userManager.FindByIdAsync(currentUserID);
                var roles = await _userManager.GetRolesAsync(user);
                ////string sreturn = "";
                ////foreach(var role in roles)
                ////{
                ////    sreturn += string.Format( "{ role.Normalize;
                //}    
                return (object)roles;
            }
            catch (Exception ex)
            {

                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return null;
            }
        }
        [HttpGet]
        public async Task<int> GetCheckUserWoker()
        {
            ClaimsPrincipal currentUser = this.User;
            var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            var user = await _userManager.FindByIdAsync(currentUserID);
            var roles = await _userManager.GetRolesAsync(user);
            var IsWorker = false;
            foreach (var role in roles)
            {
                _Nlog.Info(role);
                var result = await _roleManager.FindByNameAsync(role);
                if (result.Id == "2546e9d0-809e-4846-acb8-f4e4ac40e9e5") //tài khoản nhóm công nhân
                {
                    IsWorker = true; break;
                }
            }

            if (IsWorker)
            {
                return 1;
            }
            else
            {
                return 0;
            }
        }
    }
}