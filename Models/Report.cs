using System;

namespace MledNew2023.MVC.Models
{
    public class ReportCostOfSupplieMonth
    {
        public Int64 Id { get; set; }
        public Int32 MONTH01 { get; set; }
        public Int32 MONTH02 { get; set; }
        public Int32 MONTH03 { get; set; }
        public Int32 MONTH04 { get; set; }
        public Int32 MONTH05 { get; set; }
        public Int32 MONTH06 { get; set; }
        public Int32 MONTH07 { get; set; }
        public Int32 MONTH08 { get; set; }
        public Int32 MONTH09 { get; set; }
        public Int32 MONTH10 { get; set; }
        public Int32 MONTH11 { get; set; }
        public Int32 MONTH12 { get; set; }
    }
    public class ReportCurLineSum
    {

        public string? LineName { get; set; }
        public string? GroupName { get; set; }
        public Int64 QuantityDevice { get; set; }
    }
    public class CurLineSum
    {
        public string? BranchName { get; set; }
        public Int64 LineSum { get; set; }
        public Int64 DeviceSum { get; set; }
    }

    public class ReportMaintenanceTracking
    {
        public Int64 Id { get; set; }
        public int IsTrouble { get; set; }
        public string? DatePlan { get; set; }
        public string? ContentAct { get; set; }
        public string? StopHour { get; set; }
        public string? UserAct { get; set; }
        public string? SupplieName { get; set; }
        public string? Note { get; set; }
        public string? COLVAL01 { get; set; }
        public string? COLVAL02 { get; set; }
        public string? COLVAL03 { get; set; }
        public string? COLVAL04 { get; set; }
        public string? COLVAL05 { get; set; }
        public string? COLVAL06 { get; set; }
        public string? COLVAL07 { get; set; }
        public string? COLVAL08 { get; set; }
        public string? COLVAL09 { get; set; }
        public string? COLVAL10 { get; set; }
    }
    public class ReportNumberBigTrouble
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public Int32 MONTH01 { get; set; }
        public Int32 MONTH02 { get; set; }
        public Int32 MONTH03 { get; set; }
        public Int32 MONTH04 { get; set; }
        public Int32 MONTH05 { get; set; }
        public Int32 MONTH06 { get; set; }
        public Int32 MONTH07 { get; set; }
        public Int32 MONTH08 { get; set; }
        public Int32 MONTH09 { get; set; }
        public Int32 MONTH10 { get; set; }
        public Int32 MONTH11 { get; set; }
        public Int32 MONTH12 { get; set; }
    }
    public class ReportNumberInYear
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Item01 { get; set; }
        public string? Item02 { get; set; }
        public string? Item03 { get; set; }
        public string? Item04 { get; set; }
        public string? Item05 { get; set; }
        public string? Item06 { get; set; }
        public string? Item07 { get; set; }
        public string? Item08 { get; set; }
        public string? Item09 { get; set; }
        public string? Item10 { get; set; }
        public string? Item11 { get; set; }
        public string? Item12 { get; set; }
    }
    public class ReportNumberInMonth
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Item01 { get; set; }
        public string? Item02 { get; set; }
        public string? Item03 { get; set; }
        public string? Item04 { get; set; }
        public string? Item05 { get; set; }
        public string? Item06 { get; set; }
        public string? Item07 { get; set; }
        public string? Item08 { get; set; }
        public string? Item09 { get; set; }
        public string? Item10 { get; set; }
        public string? Item11 { get; set; }
        public string? Item12 { get; set; }
        public string? Item13 { get; set; }
        public string? Item14 { get; set; }
        public string? Item15 { get; set; }
        public string? Item16 { get; set; }
        public string? Item17 { get; set; }
        public string? Item18 { get; set; }
        public string? Item19 { get; set; }
        public string? Item20 { get; set; }
        public string? Item21 { get; set; }
        public string? Item22 { get; set; }
        public string? Item23 { get; set; }
        public string? Item24 { get; set; }
        public string? Item25 { get; set; }
        public string? Item26 { get; set; }
        public string? Item27 { get; set; }
        public string? Item28 { get; set; }
        public string? Item29 { get; set; }
        public string? Item30 { get; set; }
        public string? Item31 { get; set; }
    }
    public class ReportNumberInDay
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }

        public string? Item01 { get; set; }
        public string? Item02 { get; set; }
        public string? Item03 { get; set; }
        public string? Item04 { get; set; }
        public string? Item05 { get; set; }
        public string? Item06 { get; set; }
        public string? Item07 { get; set; }
        public string? Item08 { get; set; }
        public string? Item09 { get; set; }
        public string? Item10 { get; set; }
        public string? Item11 { get; set; }
        public string? Item12 { get; set; }
        public string? Item13 { get; set; }
        public string? Item14 { get; set; }
        public string? Item15 { get; set; }
        public string? Item16 { get; set; }
        public string? Item17 { get; set; }
        public string? Item18 { get; set; }
        public string? Item19 { get; set; }
        public string? Item20 { get; set; }
        public string? Item21 { get; set; }
        public string? Item22 { get; set; }
        public string? Item23 { get; set; }
        public string? Item24 { get; set; }
    }
    public class Report4Rul
    {
        public Int64 Id { get; set; }
        public string? ColX { get; set; }
        public string? ColDate { get; set; }
        public string? ColVAl { get; set; }       
    }
    public class ReportUsedSupplie
    {
        public Int64 Id { get; set; }
        public string? TeamName { get; set; }
        public string? SupplieName { get; set; }
        public string? SupplieCode { get; set; }
        public string? Unit { get; set; }
        public Int64 Quantity { get; set; }
        public Int64 Price { get; set; }
        public Int64 ToMoney { get; set; }
        public string? Uses { get; set; }
    }
    public class CurDeviceInLine
    {
        public string? LineName { get; set; }
        public Int64 DeviceInLine { get; set; }
    }
    public class InforReport
    {
        public string? LabelContent1 { get; set; }
        public string? LabelContent2 { get; set; }
        public string? LabelContent3 { get; set; }
        public string? LabelContent4 { get; set; }
        public int VAl1_1 { get; set; }
        public int VAl1_2 { get; set; }
        public int VAl2_1 { get; set; }
        public int VAl2_2 { get; set; }
        public int VAl3_1 { get; set; }
        public int VAl3_2 { get; set; }
        public int VAl4_1 { get; set; }
        public int VAl4_2 { get; set; }
    }
    public class InforReportDetail
    {
        public string? Col1 { get; set; }
        public string? Col2 { get; set; }
        public string? Col3 { get; set; }
        public string? Col4 { get; set; }
        public string? Col5 { get; set; }
        public string? Col6 { get; set; }
        public string? Col7 { get; set; }
        public string? Col8 { get; set; }
        public string? Col9 { get; set; }
        public string? Col10 { get; set; }
        public string? Col11 { get; set; }
        public string? Col12 { get; set; }
        public string? Col13 { get; set; }
        public string? Col14 { get; set; }
        public string? Col15 { get; set; }
        public string? Col16 { get; set; }
        public string? Col17 { get; set; }
        public string? Col18 { get; set; }
        public string? Col19 { get; set; }
        public string? Col20 { get; set; }
    }
}
