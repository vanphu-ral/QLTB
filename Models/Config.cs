using System;

namespace MledNew2023.MVC.Models
{
    public class ConfigSystem
    {
        public Int64 Id { get; set; }
        public string? ConfigCode { get; set; }
        public string? ConfigName { get; set; }
        public string? ConfigValue { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? OrderView { get; set; }
        //public IEnumerable<string> Roles { get; set; }
    }
}
