using System;

namespace MledNew2023.MVC.Models
{
    public class Line
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? LineCodeName { get; set; }
        public string? BranchCodeName { get; set; }
        public string? TeamCodeName { get; set; }
        public string? TeamName { get; set; }
        public string? BranchName { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public Int32 Type { get; set; }
        public Int32 Status { get; set; }
        public Int32 TeamId { get; set; }
    }
}
