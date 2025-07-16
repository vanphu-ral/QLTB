using System;
using System.Collections.Generic;

namespace MledNew2023.MVC.Models
{
    public class DeviceRepair
    {
        public Int64 Id { get; set; }
        public Int32 Month { get; set; }
        public Int32 Year { get; set; }
        public Int32 FactoryId { get; set; }
        public Int32 BranchId { get; set; }
        //public string? DatePlan { get; set; }
        //public string? UserPlan { get; set; }
        //public string? DateBranch { get; set; }
        //public string? UserBranch { get; set; }
        //public string? DateFactory { get; set; }
        //public string? UserFactory { get; set; }
        //public string? DateAuthority { get; set; }
        //public string? UserAuthority { get; set; }
        //public string? PlanNumber { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? Targets { get; set; }
        public string? BranchName { get; set; }
        public string? FactoryName { get; set; }
        //public string? UserNameAuthority { get; set; }
        //public string? UserNameBranch { get; set; }
        //public string? UserNameFactory { get; set; }
        //public string? UserNamePlan { get; set; }
        public List<DeviceRepairDetail>? DeviceRepairDetailList { get; set; }
    }
    public class DeviceRepairDetail
    {
        public Int64 Id { get; set; }
        public Int64 DeviceRepairId { get; set; }
        public Int32 DeviceId { get; set; }
        public string? DeviceName { get; set; }
        public string? AssemblyDetail { get; set; }
        public string? Contents { get; set; }
        public string? UserAct { get; set; }
        public string? SupplieList { get; set; }
        public string? Note { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public int DayOfMonth { get; set; }
    }
}

