using Microsoft.AspNetCore.Identity;

namespace MledNew2023.MVC.Models
{
    public class AspNetUsers : IdentityUser
    {
        public string? Id { get; set; }
        public string? UserName { get; set; }
        public string? NormalizedUserName { get; set; }
        public string? Email { get; set; }
        public string? NormalizedEmail { get; set; }
        public bool EmailConfirmed { get; set; }
        public string? PasswordHash { get; set; }
        public string? SecurityStamp { get; set; }
        public string? ConcurrencyStamp { get; set; }
        public string? PhoneNumber { get; set; }
        public bool PhoneNumberConfirmed { get; set; }
        public bool TwoFactorEnabled { get; set; }
        public string? LockoutEnd { get; set; }
        public bool LockoutEnabled { get; set; }
        public string? AccessFailedCount { get; set; }
        public string? FullName { get; set; }
        public int PositionId { get; set; }
        public int DepartmentId { get; set; }
        public string? Avatar { get; set; }
        public string? Signature { get; set; }
        public string? Address { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? DepartmentName { get; set; }
        public string? PositionName { get; set; }
        public int ManagerLevelId { get; set; }
        public int FactoryId { get; set; }
        public int BranchId { get; set; }
        public int TeamId { get; set; }
        public int LineId { get; set; }
    }
}
