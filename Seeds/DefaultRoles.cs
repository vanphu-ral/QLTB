﻿using Microsoft.AspNetCore.Identity;
using MledNew2023.MVC.Constants;
using System.Threading.Tasks;

namespace MledNew2023.MVC.Seeds
{
    public static class DefaultRoles
    {
        public static async Task SeedAsync(UserManager<IdentityUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            //await roleManager.CreateAsync(new IdentityRole(Roles.SuperAdmin.ToString()));
            await roleManager.CreateAsync(new IdentityRole(Roles.Admin.ToString()));
            await roleManager.CreateAsync(new IdentityRole(Roles.Basic.ToString()));
        }
    }
}