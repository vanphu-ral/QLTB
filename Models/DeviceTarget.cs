using System;
using System.Collections.Generic;

namespace MledNew2023.MVC.Models
{
    public class DeviceTarget
    {
        public Int64 Id { get; set; }
        public Int32 Month { get; set; }
        public Int32 Year { get; set; }
        public Int32 FactoryId { get; set; }
        public Int32 BranchId { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? Targets { get; set; }
        public string? BranchName { get; set; }
        public string? FactoryName { get; set; }
        public Int64 PlanIdOrg { get; set; }
        public int Number { get; set; }
        public string? FileScan { get; set; }
        public List<DeviceTargetDetail>? DeviceTargetDetailList { get; set; }
    }
    public class DeviceTargetDetail
    {
        public Int64 Id { get; set; }
        public Int64 DeviceTargetId { get; set; }
        public Int32 Evaluate { get; set; }
        public string? Contents { get; set; }
        public string? ResultAct { get; set; }
        public string? Targets { get; set; }
        public Int64 PlanTargetId { get; set; }
        public string? PlanContent { get; set; }
        public string? Note { get; set; }
    }
}
