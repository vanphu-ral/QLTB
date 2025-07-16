using System;

namespace MledNew2023.MVC.Models
{
    public class Form
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Description { get; set; }
        public string? FileName { get; set; }
        public string? FilePath { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public int FactoryId { get; set; }
        public int BranchId { get; set; }
        public int TeamId { get; set; }
        public int LineId { get; set; }
        //public IEnumerable<string> Roles { get; set; }
    }
}
