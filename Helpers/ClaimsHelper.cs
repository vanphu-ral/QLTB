using Microsoft.AspNetCore.Identity;
using MledNew2023.MVC.Models;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Reflection;
using System.Security.Claims;
using System.Threading.Tasks;
using static MledNew2023.MVC.Constants.Permissions;

namespace MledNew2023.MVC.Helpers
{
    public static class ClaimsHelper
    {
        public static void GetPermissions(this List<RoleClaimsViewModel> allPermissions, Type policy, string roleId)
        {
            FieldInfo[] fields = policy.GetFields(BindingFlags.Static | BindingFlags.Public);

            foreach (FieldInfo fi in fields)
            {
                allPermissions.Add(new RoleClaimsViewModel { Value = String.Format("{0}", fi.GetValue(null)), Type = "Permission", Text = getClainmType(String.Format("{0}", fi.GetValue(null))) });
            }
        }
        public static string getClainmType(string inValue)
        {
            string sreturn = "";
            string[] _avalue = inValue.Split(".");
            if (_avalue.Length > 1)
            {
                switch (_avalue[1])
                {
                    case "Lists": sreturn = "Danh mục chung (Danh mục tỉnh thành, quận, huyện, xưởng, ngành...)"; break;
                    case "Device": sreturn = "Danh mục nhóm thiết bị, thiết bị máy móc (TBMM)"; break;
                    case "Supplie": sreturn = "Danh mục nhóm vật tư, vật tư"; break;
                    case "User": sreturn = "Quản lý người dùng"; break;
                    case "Role": sreturn = "Quản lý nhóm quyền, phân quyền"; break;
                    case "UserLogin": sreturn = "Nhật ký đăng nhập"; break;
                    case "UserActive": sreturn = sreturn = "Nhật ký hoạt động"; break;
                    case "Config": sreturn = sreturn = "Cấu hình hệ thống"; break;
                    case "PlanDaily": sreturn = "Kế hoạch hàng ngày hàng tuần"; break;
                    case "PlanPeriodic": sreturn = "Kế hoạch bảo dưỡng thiết bị định kỳ theo năm"; break;
                    case "PlanOver": sreturn = "Kế hoạch sửa chữa lớn, Đại tu, Cải tạo thiết bị"; break;
                    case "PlanSupplie": sreturn = "Kế hoạch Vật tư sửa chữa -Thay thế"; break;
                    case "Target": sreturn = "Ké hoạch - Thực hiện mục tiêu thiết bị"; break;
                    case "Form": sreturn = "Biểu mẫu, Hướng dẫn SCBD"; break;
                    case "ErorrLog": sreturn = sreturn = "Nhật ký lỗi"; break;
                    case "Report1": sreturn = "Báo cáo thống kê"; break;
                    case "Threshold": sreturn = "Thiết lập giá trị ngưỡng cảnh báo"; break;
                    case "PlanApprove": sreturn = "Phê duyệt văn bản"; break;
                    case "PlanSummary": sreturn = "Tổng hợp hồ sơ"; break;
                    default:
                        sreturn = _avalue[1]; break;
                }
            }
            return sreturn;
        }
        public static async Task AddPermissionClaim(this RoleManager<IdentityRole> roleManager, IdentityRole role, string permission)
        {
            var allClaims = await roleManager.GetClaimsAsync(role);
            var textClaim = getClainmType(permission);
            if (!allClaims.Any(a => a.Type == "Permission" && a.Value == permission))
            {
                await roleManager.AddClaimAsync(role, new Claim("Permission", permission, textClaim));
            }
        }
        public static async Task AddUserLogin(this RoleManager<IdentityRole> roleManager, IdentityRole role, string permission)
        {
            var allClaims = await roleManager.GetClaimsAsync(role);
            var textClaim = getClainmType(permission);
            if (!allClaims.Any(a => a.Type == "Permission" && a.Value == permission))
            {
                await roleManager.AddClaimAsync(role, new Claim("Permission", permission, textClaim));
            }
        }
        public static bool IsSysAdmin(IdentityRole role)
        {
            if (role.Name == "SuperAdmin" || role.Name == "SystemAdmin")
                return true;
            else return false;
        }
    }
}
