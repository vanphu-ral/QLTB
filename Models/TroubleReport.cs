using System;

namespace MledNew2023.MVC.Models
{
    public class TroubleReport
    {
        public Int64 Id { get; set; }
        public Int64 TroubleId { get; set; }
        public string? AddressTrouble { get; set; }
        public string? DateTrouble { get; set; }
        public string? DescriptionTrouble { get; set; }
        public string? ReasonTrouble { get; set; }
        public string? HandlingMeansure { get; set; }
        public string? UserAct { get; set; }
        public string? DateDone { get; set; }
        public string? UserPart { get; set; }
        public string? UnitPart { get; set; }
        public string? UserManager { get; set; }
        public string? UserBranch { get; set; }
        public string? UserAuthority { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public Int64 FactoryId { get; set; }
        public Int64 BranchId { get; set; }
        public string? ReportNumber { get; set; }
        public int year { get; set; }
        public string? FileScan { get; set; }
    }
}
