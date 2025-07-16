using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using MledNew2023.MVC.Constants;
using MledNew2023.MVC.Helpers;
using MledNew2023.MVC.Models;
using System.Collections.Generic;
using System.Linq;
using System.Threading.Tasks;

namespace MledNew2023.MVC.Controllers
{
    //[Authorize(Roles = "SuperAdmin")]
    [Authorize]
    public class PermissionController : Controller
    {
        private readonly RoleManager<IdentityRole> _roleManager;

        public PermissionController(RoleManager<IdentityRole> roleManager)
        {
            _roleManager = roleManager;
        }

        public async Task<ActionResult> Index(string roleId)
        {
            var model = new PermissionViewModel();
            var allPermissions = new List<RoleClaimsViewModel>();
            allPermissions.GetPermissions(typeof(Permissions.Lists), roleId);
            allPermissions.GetPermissions(typeof(Permissions.Device), roleId);
            allPermissions.GetPermissions(typeof(Permissions.Supplie), roleId);
            allPermissions.GetPermissions(typeof(Permissions.User), roleId);  //Quản lý người dùng"; break;
            //allPermissions.GetPermissions(typeof(Permissions.Role), roleId);  //Quản lý nhóm quyền, phân quyền"; break;
            allPermissions.GetPermissions(typeof(Permissions.UserLogin), roleId);  //Nhật ký đăng nhập"; break;
            allPermissions.GetPermissions(typeof(Permissions.UserActive), roleId); // "Nhật ký hoạt động"; break;
            allPermissions.GetPermissions(typeof(Permissions.Config), roleId); //Cấu hình hệ thống"; break;
            allPermissions.GetPermissions(typeof(Permissions.PlanDaily), roleId);  //Kế hoạch hàng ngày hàng tuần"; break;
            allPermissions.GetPermissions(typeof(Permissions.PlanPeriodic), roleId);  //Kế hoạch bảo dưỡng thiết bị định kỳ theo năm"; break;
            allPermissions.GetPermissions(typeof(Permissions.PlanOver), roleId);  //Kế hoạch sửa chữa lớn, Đại tu, Cải tạo thiết bị"; break;
            allPermissions.GetPermissions(typeof(Permissions.PlanSupplie), roleId);  //Kế hoạch Vật tư sửa chữa -Thay thế"; break;
            allPermissions.GetPermissions(typeof(Permissions.Target), roleId);  //Ké hoạch - Thực hiện mục tiêu thiết bị"; break;
            allPermissions.GetPermissions(typeof(Permissions.Form), roleId);  //Biểu mẫu, Hướng dẫn SCBD"; break;
            allPermissions.GetPermissions(typeof(Permissions.ErorrLog), roleId); // "Nhật ký lỗi"; break;
            allPermissions.GetPermissions(typeof(Permissions.Report1), roleId);  //Báo cáo thống kê"; break;
            allPermissions.GetPermissions(typeof(Permissions.Threshold), roleId);  //Thiết lập giá trị ngưỡng cảnh báo"; break;
            allPermissions.GetPermissions(typeof(Permissions.PlanApprove), roleId);  //Phê duyệt văn bản"; break;
            allPermissions.GetPermissions(typeof(Permissions.PlanSummary), roleId);

            var role = await _roleManager.FindByIdAsync(roleId);
            model.RoleId = roleId;
            model.RoleName = role.Name;
            var claims = await _roleManager.GetClaimsAsync(role);
            var allClaimValues = allPermissions.Select(a => a.Value).ToList();
            var roleClaimValues = claims.Select(a => a.Value).ToList();
            var authorizedClaims = allClaimValues.Intersect(roleClaimValues).ToList();
            foreach (var permission in allPermissions)
            {
                if (authorizedClaims.Any(a => a == permission.Value))
                {
                    permission.Selected = true;
                }
            }
            model.RoleClaims = allPermissions;
            return View(model);
        }

        public async Task<IActionResult> Update(PermissionViewModel model)
        {
            var role = await _roleManager.FindByIdAsync(model.RoleId);
            var claims = await _roleManager.GetClaimsAsync(role);
            foreach (var claim in claims)
            {
                await _roleManager.RemoveClaimAsync(role, claim);
            }
            var selectedClaims = model.RoleClaims.Where(a => a.Selected).ToList();
            foreach (var claim in selectedClaims)
            {
                await _roleManager.AddPermissionClaim(role, claim.Value);
            }
            return RedirectToAction("Index", new { roleId = model.RoleId });
        }
    }
}
