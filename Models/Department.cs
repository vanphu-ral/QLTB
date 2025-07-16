using System;

namespace MledNew2023.MVC.Models
{
    public class Department
    {
        public Int64 Id { get; set; }
        public string? Code { get; set; }
        public string? DepartmentCodeName { get; set; }
        public string? Name { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
}
