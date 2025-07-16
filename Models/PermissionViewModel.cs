using System.Collections.Generic;

namespace MledNew2023.MVC.Models
{
    public class PermissionViewModel
    {
        public string? RoleId { get; set; }
        public string? RoleName { get; set; }
        public IList<RoleClaimsViewModel> RoleClaims { get; set; }
    }

    public class RoleClaimsViewModel
    {
        public string? Type { get; set; }
        public string? Value { get; set; }
        public string? Text { get; set; }
        public bool Selected { get; set; }
    }
    public class RoleClaimsPageModel
    {
        public string? Type { get; set; }
        public bool ViewSelected { get; set; }
        public bool AddSelected { get; set; }
        public bool EditSelected { get; set; }
        public bool DeleteSelected { get; set; }
    }
}
