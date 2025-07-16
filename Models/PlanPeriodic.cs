using System;
using System.Collections.Generic;

namespace MledNew2023.MVC.Models
{
    public class PlanPeriodicDevice
    {
        public Int64 Id { get; set; }
        public Int64 PlanId { get; set; }
        public string? Name { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public Int64 Year { get; set; }
        public Int64 FactoryId { get; set; }
        public Int64 BranchId { get; set; }
        public string? DatePlan { get; set; }
        public Int64 UserPlan { get; set; }
        public string? UserNamePlan { get; set; }
        public string? DateBranch { get; set; }
        public string? UserNameBranch { get; set; }
        public Int64 UserBranch { get; set; }
        public string? DateFactory { get; set; }
        public string? UserNameFactory { get; set; }
        public Int64 UserFactory { get; set; }
        public string? DateAuthority { get; set; }
        public Int64 UserAuthority { get; set; }
        public string? UserNameAuthority { get; set; }
        public string? PlanNumber { get; set; }
        public string? PlanDeviceNumber { get; set; }
        public Int64 DeviceId { get; set; }
        public string? Note { get; set; }
        public string? BranchName { get; set; }
        public string? FactoryName { get; set; }
        public string? DeviceName { get; set; }
        public string? Month01 { get; set; }
        public string? Month02 { get; set; }
        public string? Month03 { get; set; }
        public string? Month04 { get; set; }
        public string? Month05 { get; set; }
        public string? Month06 { get; set; }
        public string? Month07 { get; set; }
        public string? Month08 { get; set; }
        public string? Month09 { get; set; }
        public string? Month10 { get; set; }
        public string? Month11 { get; set; }
        public string? Month12 { get; set; }
        public string? MonthPlan { get; set; }
        public Int64 PlanIdOrg { get; set; }
        public int Number { get; set; }
        public string? NoteGoiY { get; set; }
        public List<PlanPeriodicDetail> PeriodicDetailList { get; set; }
        public string? FileScan { get; set; }
    }
    public class PlanPeriodicDetail
    {
        public Int64 Id { get; set; }
        public Int64 PlanDeviceId { get; set; }
        public Int64 FormId { get; set; }
        public string? FormName { get; set; }
        public string? FilePath { get; set; }
        public string? WorkContent { get; set; }
        public string? DepartmentAct { get; set; }
        public string? Note { get; set; }
        public string? Month01 { get; set; }
        public string? Month02 { get; set; }
        public string? Month03 { get; set; }
        public string? Month04 { get; set; }
        public string? Month05 { get; set; }
        public string? Month06 { get; set; }
        public string? Month07 { get; set; }
        public string? Month08 { get; set; }
        public string? Month09 { get; set; }
        public string? Month10 { get; set; }
        public string? Month11 { get; set; }
        public string? Month12 { get; set; } 
        public int MonthAct { get; set; } 
        public List<PlanPeriodicReport> PeriodicReportList { get; set; }
        public string? FileScan { get; set; }
    }
    public class PlanPeriodicReport
    {
        public Int64 Id { get; set; }
        public Int64 PlanDeviceId { get; set; }
        public int? TimeDelivery { get; set; }
        public string? ReportNumberCode { get; set; }
        public string? ReportDate { get; set; }
        public string? WorkContent { get; set; }
        public string? DepartmentAct { get; set; }
        public string? StartDate { get; set; }
        public string? EndDate { get; set; }
        public string? ActStartDate { get; set; }
        public string? ActEndDate { get; set; }
        public string? WorkArising { get; set; }
        public string? OperatingResults { get; set; }
        public string? ActionMore { get; set; }
        public string? Responsibility { get; set; }
        public string? Duration { get; set; }
        public string? UserSCBD { get; set; }
        public string? UserBranch { get; set; }
        public string? UserDepartment { get; set; }
        public string? UserAuthority { get; set; }
        public string? BranchName { get; set; }
        public string? FactoryName { get; set; }
        public string? TeamName { get; set; }
        public string? DeviceName { get; set; }
        public int RequestSafe { get; set; }
        public int RequestQuality { get; set; }
        public int RequestProductivity { get; set; }
        public string? FileScan { get; set; }
    }
}
