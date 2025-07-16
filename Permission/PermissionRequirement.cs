using Microsoft.AspNetCore.Authorization;

namespace MledNew2023.MVC.Permission
{
    internal class PermissionRequirement : IAuthorizationRequirement
    {
        public string? Permission { get; private set; }

        public PermissionRequirement(string permission)
        {
            Permission = permission;
        }
    }
}