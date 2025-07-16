using System;

namespace MledNew2023.MVC.Models
{
    public class PlanList
    {
        public Int64 Id { get; set; }
        public Int32 PlanYear { get; set; }
        public Int32 FactoryId { get; set; }
        public Int32 BranchId { get; set; }
        public Int32 PlanMonth { get; set; }
        public Int32 DeviceId { get; set; }
        public string? ColValue01 { get; set; }
        public string? ColValue02 { get; set; }
        public string? ColValue04 { get; set; }
        public string? ColValue03 { get; set; }
        public string? ColValue05 { get; set; }
        public string? ColValue06 { get; set; }
        public string? ColValue07 { get; set; }
        public string? ColValue08 { get; set; }
        public string? ColValue09 { get; set; }
        public string? ColValue10 { get; set; }
        public string? ColValue11 { get; set; }
        public string? ColValue12 { get; set; }
        public string? ColValue13 { get; set; }
        public string? ColValue14 { get; set; }
        public string? ColValue15 { get; set; }
        public string? FileScan { get; set; }
        public Int32? TeamId { get; set; }
        public Int32? LineId { get; set; }
        public Int32? PlanReportNumber { get; set; }
    }
    public class PlanDaily
    {
        public Int64 Id { get; set; }
        public Int32 Year { get; set; }
        public Int32 FactoryId { get; set; }
        public Int32 BranchId { get; set; }
        public string? DatePlan { get; set; }
        public string? UserPlan { get; set; }
        public string? PlanNumber { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? Targets { get; set; }
        public string? BranchName { get; set; }
        public string? FactoryName { get; set; }
        public string? DeviceName { get; set; }
        public string? DeviceCode { get; set; }
        public string? LineName { get; set; }
        public string? TeamName { get; set; }
        public string? UserNamePlan { get; set; }
        public Int32 DeviceId { get; set; }
        public string? UserWeek { get; set; }
        public string? DaySignAct { get; set; }
        public Int64 PlanIdOrg { get; set; }
        public int Number { get; set; }
        public int PlanReportNumber { get; set; }
        public string? FileScan { get; set; }
        public string? ReprintPlanDaily { get; set; }
        public string? PlanDailyDetai { get; set; } //sJson
                                                    //public List<PlanDailyDetail> PlanDailyDetailList { get; set; }
    }
    public class PlanDailyDetail
    {
        public Int64 Id { get; set; }
        public Int64 PlanId { get; set; }
        public Int32 LineId { get; set; }
        public Int32 DeviceId { get; set; }
        public int TestMethod { get; set; }
        public string? MainCategory { get; set; }
        public string? ContentAct { get; set; }
        public string? UserAct { get; set; }
        public string? UserAction { get; set; }
        public int TestStatus { get; set; }
        public int IsEnable { get; set; }
        public string? UserWeek1 { get; set; }
        public string? UserWeek2 { get; set; }
        public string? UserWeek3 { get; set; }
        public string? UserWeek4 { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public int MachineStopTime { get; set; }
        //public string? Day1 { get; set; }
        //public string? Day2 { get; set; }
        //public string? Day3 { get; set; }
        //public string? Day4 { get; set; }
        //public string? Day5 { get; set; }
        //public string? Day6 { get; set; }
        //public string? Day7 { get; set; }
        //public string? Day8 { get; set; }
        //public string? Day9 { get; set; }
        //public string? Day10 { get; set; }
        //public string? Day11 { get; set; }
        //public string? Day12 { get; set; }
        //public string? Day13 { get; set; }
        //public string? Day14 { get; set; }
        //public string? Day15 { get; set; }
        //public string? Day16 { get; set; }
        //public string? Day17 { get; set; }
        //public string? Day18 { get; set; }
        //public string? Day19 { get; set; }
        //public string? Day20 { get; set; }
        //public string? Day21 { get; set; }
        //public string? Day22 { get; set; }
        //public string? Day23 { get; set; }
        //public string? Day24 { get; set; }
        //public string? Day25 { get; set; }
        //public string? Day26 { get; set; }
        //public string? Day27 { get; set; }
        //public string? Day28 { get; set; }
        //public string? Day29 { get; set; }
        //public string? Day30 { get; set; }
        //public string? Day31 { get; set; }
    }
    public class PlanDailyTrouble
    {
        public Int64 Id { get; set; }
        public Int64 PlanId { get; set; }
        public Int64 TroubleReportID { get; set; }
        public string? TroubleContent { get; set; }
        public string? TroubleDate { get; set; }
        public string? ContentAndResult { get; set; }
        public string? UserConfirm { get; set; }
        public string? DateConfirm { get; set; }
        public string? Conclusion { get; set; }
        public string? TimeCreated { get; set; }
        public string TimeStopTotal { get; set; }
        public string? TimeStopBegin { get; set; }
        public string? TimeStopEnd { get; set; }
        public string? LocationDetai { get; set; }
        public string? RepairContent { get; set; }
        public string? RepairUser { get; set; }
        public string? Repair { get; set; }
        public string? Note { get; set; }
        public int HasReport { get; set; }
        public Int64 FactoryId { get; set; }
        public Int64 BranchId { get; set; }
        public int DaySelect { get; set; }
        public string? SupplieList { get; set; } //SJson
        public string? DeviceSupplieList { get; set; } ///Lấy các thành phần (vật tư bị hỏng)
    }
    public class PlanDailyTroubleSupplie
    {
        public Int64 Id { get; set; }
        public Int64 TroubleId { get; set; }
        public Int64 SupplieId { get; set; }
        public string? SupplieName { get; set; }
        public string? SupplieDesc { get; set; }
        public Int64 Quantity { get; set; }
        public Int64 Price { get; set; }
        public Int64 ToMoney { get; set; }
    }
    public class PlanDailyTroubleReport
    {
        public Int64 Id { get; set; }
        public Int64 TroubleId { get; set; }
        public Int64 PlanId { get; set; }
        public string? AddressTrouble { get; set; }
        public string? DateTrouble { get; set; }
        public string? DescriptionTrouble { get; set; }
        public string? ReasonTrouble { get; set; }
        public string? HandlingMeansure { get; set; }
        public string? UserAct { get; set; }
        public string? UserActList { get; set; }
        public string? UserActName { get; set; }
        public string? DateDone { get; set; }
        public string? UserPartAvatar { get; set; }
        public string? UserPart { get; set; }
        public string? UnitPart { get; set; }
        public string? UserPartList { get; set; }
        public string? UnitPartList { get; set; }
        public string? UserManager { get; set; }
        public string? UserBranch { get; set; }
        public string? UserAuthority { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public Int64 FactoryId { get; set; }
        public Int64 BranchId { get; set; }
        public string? ReportNumber { get; set; }
        public string? FileScan { get; set; }
        public string? DeviceNumber { get; set; }
        public string? LineName { get; set; }
        public string? BranchNumber { get; set; }
        public string? OrtherInfor { get; set; }
    }
}
