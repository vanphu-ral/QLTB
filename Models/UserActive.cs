using System;

namespace MledNew2023.MVC.Models
{
    public class UserActive
    {
        public Int64 Id { get; set; }
        public string? UserId { get; set; }
        public string? IpAddress { get; set; }
        public string? LogContent { get; set; }
        public string? UserName { get; set; }
public string? FullName { get; set; }
        public string? DateActive { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        //public IEnumerable<string> Roles { get; set; }
    }
}
