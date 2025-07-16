﻿using System.Collections.Generic;

namespace MledNew2023.MVC.Models
{
    public class ManageUserRolesViewModel
    {
        public string? UserId { get; set; }
        public string? UserName { get; set; }
        public IList<UserRolesViewModel> UserRoles { get; set; }
    }

    public class UserRolesViewModel
    {
        public string? RoleName { get; set; }
        public bool Selected { get; set; }
    }
}