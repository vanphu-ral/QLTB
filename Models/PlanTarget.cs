using System;
using System.Collections.Generic;

namespace MledNew2023.MVC.Models
{
    public class PlanTarget
    {
        public Int64 Id { get; set; }
        public Int32 Year { get; set; }
        public Int32 FactoryId { get; set; }
        public Int32 BranchId { get; set; }
        public string? DatePlan { get; set; }
        public string? UserPlan { get; set; }
        public string? DateBranch { get; set; }
        public string? UserBranch { get; set; }
        public string? DateFactory { get; set; }
        public string? UserFactory { get; set; }
        public string? DateAuthority { get; set; }
        public string? UserAuthority { get; set; }
        public string? PlanNumber { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? Targets { get; set; }
        public string? BranchName { get; set; }
        public string? FactoryName { get; set; }
        public string? UserNameAuthority { get; set; }
        public string? UserNameBranch { get; set; }
        public string? UserNameFactory { get; set; }
        public string? UserNamePlan { get; set; }
        public Int64 PlanIdOrg { get; set; }
        public string? FileScan { get; set; }
        public int Number { get; set; }
        public List<PlanTargetDevice> PlanTargetDeviceList { get; set; }
    }
    public class PlanTargetDevice
    {
        public Int64 Id { get; set; }
        public Int64 PlanId { get; set; }
        public Int32 DeviceId { get; set; }
        public Int32 LineId { get; set; }
        public decimal? MinValue { get; set; }
        public Int32? TargetType { get; set; }
        public string? DeviceName { get; set; }
        public string? LineName { get; set; }
        public string? Measurement { get; set; }
        public string? Duration1 { get; set; }
        public string? Targets { get; set; }
        public string? Solution { get; set; }
        public string? Duration2 { get; set; }
        public string? UserAct { get; set; }
        public string? Note { get; set; }
        public string? CoordinationUnit { get; set; }
        public string? UserID { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
}
