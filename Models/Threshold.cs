using System;

namespace MledNew2023.MVC.Models
{
    public class Threshold
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Description { get; set; }
        public string? ThresholdCodeName { get; set; }
        public string? Code { get; set; }
        public int ThresholdType { get; set; }
        public decimal? LowerValue { get; set; }
        public decimal? UpperValue { get; set; }
        public decimal? OrangeLowerValue { get; set; }
        public decimal? OrangeUpperValue { get; set; }
        public decimal? RedLowerValue { get; set; }
        public decimal? RedUpperValue { get; set; }
        public string? Key { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public int OrangeThresholdType { get; set; }
        public int RedThresholdType { get; set; }
        public string? GreenRange { get; set; }
        public string? OrangeRange { get; set; }
        public string? RedRange { get; set; }
    }
}
