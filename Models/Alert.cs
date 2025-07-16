using System;

namespace MledNew2023.MVC.Models
{    
    public class Alert
    {
        public Int64 Id { get; set; }
        public int Status { get; set; }
        public int DeviceType { get; set; }
        public int WarningType { get; set; }
public string? Name { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
}
