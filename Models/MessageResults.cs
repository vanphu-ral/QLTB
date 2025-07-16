using System;

namespace MledNew2023.MVC.Models
{
    public class MessageResults
    {
        public string? Tittle { get; set; }
        public Int64 Id { get; set; }
        public bool success { get; set; }
        public string? message { get; set; }
        public object? Data { get; set; }
    }
    public class RegisterDTO
    {
        public string? UserName { get; set; }
        public string? Email { get; set; }
        public int EmailCormfirm { get; set; }
        public string? Password { get; set; }
        public string? PhoneNumber { get; set; }

        public string? FullName { get; set; }

        public string? Address { get; set; }

        public string? Description { get; set; }
        public string? Description1 { get; set; }

    }
}
