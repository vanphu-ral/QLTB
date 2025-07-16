using System;

namespace MledNew2023.MVC.Models
{
    public class Position
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        //public IEnumerable<string> Roles { get; set; }
    }
}
