using System;
using System.Collections.Generic;

namespace MledNew2023.MVC.Models
{
    public class PlanSupplie
    {
        public Int64 Id { get; set; }
        public Int32 Year { get; set; }
        public Int32 FactoryId { get; set; }
        public Int32 BranchId { get; set; }
        public Int32 PlanType { get; set; }
public string? PlanOverNumber { get; set; }
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
        public string? SupplieCode { get; set; }
        public string? BranchName { get; set; }
        public string? FactoryName { get; set; }
        public string? UserNameAuthority { get; set; }
        public string? UserNameBranch { get; set; }
        public string? UserNameFactory { get; set; }
        public string? UserNamePlan { get; set; }
        public Int64 PlanIdOrg { get; set; }
        public int Number { get; set; }
        public string? FileScan { get; set; }

        public List<PlanSupplieDevice> PlanSupplieDeviceList { get; set; }
    }
    public class PlanSupplieDevice
    {
        public Int64 Id { get; set; }
        public Int64 PlanId { get; set; }
        public Int32 SupplieId { get; set; }
        public Int32 LineId { get; set; }
        public string? SupplieName { get; set; }
        public Int32 Amount { get; set; }
        public string? NumberNote { get; set; }
        public string? Belonging { get; set; }
        public string? BelongingId { get; set; }

        public string? SupplieCode { get; set; }
        public string? Requirements { get; set; }
        public string? Manufacture { get; set; }
        public string? Duration { get; set; }
        public string? UserAct { get; set; }
        public string? Note { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
}
