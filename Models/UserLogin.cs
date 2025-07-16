using System;

namespace MledNew2023.MVC.Models
{
    public class UserLogin
    {
        public Int64 Id { get; set; }
        public string? UserId { get; set; }
        public string? IpAddress { get; set; }
        public string? UserName { get; set; }
        public string? DateLogin { get; set; }
        public string? FullName { get; set; }
        public string? PhoneNumber { get; set; }
    }
}
