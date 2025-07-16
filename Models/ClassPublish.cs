using System;

namespace MledNew2023.MVC.Models
{
    public class UserProfileSessionData
    {
        public Int64 FactoryId { get; set; }
        public Int64 BranchId { get; set; }
        public string? UserId { get; set; }
        public string? ConnectionString { get; set; }
        public string? FactoryName { get; set; }
        public string? BranchName { get; set; }
        public string? FullName { get; set; }
        public string? Email { get; set; }
    }
}
