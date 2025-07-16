using System;

namespace MledNew2023.MVC.Models
{
    public class Branch
    {
        public Int64 Id { get; set; }
        public string? Code { get; set; }
        public string? BranchCodeName { get; set; }
        public string? FactoryCodeName { get; set; }
        public string? Name { get; set; }
        public Int64 FactoryId { get; set; }
        public string? FactoryName { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
}
