using System;

namespace MledNew2023.MVC.Models
{
    public class Transformers
    {
        public Int64 Id { get; set; }
        public string? TransformerCode { get; set; }
        public decimal TempBa1 { get; set; }
        public decimal TempBa2 { get; set; }
        public decimal TempBa3 { get; set; }
        public decimal TempArea1 { get; set; }
        public decimal TempArea2 { get; set; }
        public decimal TempArea3 { get; set; }
        public decimal MachineIBa1 { get; set; }
        public decimal MachineUBa1 { get; set; }
        public decimal MachineIBa2 { get; set; }
        public decimal MachineUBa2 { get; set; }
        public decimal MachineIBa3 { get; set; }
        public decimal MachineUBa3 { get; set; }
        public decimal MachineIBa4 { get; set; }
        public decimal MachineUBa4 { get; set; }
        public Int64 MachineRunningTime { get; set; }
        public Int64 MachineStopTime { get; set; }
        public int Signal { get; set; }
        public string? TimeReceived { get; set; }
        public decimal MachineRunningHour { get; set; }
        public decimal MachineStopHour { get; set; }
        public decimal TempBa4 { get; set; }
        public decimal TempArea4 { get; set; }
        public int Wr_TempBa1 { get; set; }
        public int Wr_TempBa2 { get; set; }
        public int Wr_TempBa3 { get; set; }
        public int Wr_TempBa4 { get; set; }
        public int Wr_TempArea1 { get; set; }
        public int Wr_TempArea2 { get; set; }
        public int Wr_TempArea3 { get; set; }
        public int Wr_TempArea4 { get; set; }
        public int Wr_MachineIBa1 { get; set; }
        public int Wr_MachineUBa1 { get; set; }
        public int Wr_MachineIBa2 { get; set; }
        public int Wr_MachineUBa2 { get; set; }
        public int Wr_MachineIBa3 { get; set; }
        public int Wr_MachineUBa3 { get; set; }
        public int Wr_MachineIBa4 { get; set; }
        public int Wr_MachineUBa4 { get; set; }
        public int Wr_MachineRunningTime { get; set; }
        public int Wr_MachineStopTime { get; set; }
        public int Wr_MachineRunningHour { get; set; }
        public int Wr_MachineStopHour { get; set; }
    }
    public class TransformerSend
    {
        public Int64 Id { get; set; }
        public string? TransformerCode { get; set; }
        public decimal TempBa1 { get; set; }
        public decimal TempBa2 { get; set; }
        public decimal TempBa3 { get; set; }
        public decimal TempArea1 { get; set; }
        public decimal TempArea2 { get; set; }
        public decimal TempArea3 { get; set; }
        public decimal MachineIBa1 { get; set; }
        public decimal MachineUBa1 { get; set; }
        public decimal MachineIBa2 { get; set; }
        public decimal MachineUBa2 { get; set; }
        public decimal MachineIBa3 { get; set; }
        public decimal MachineUBa3 { get; set; }
        public decimal MachineIBa4 { get; set; }
        public decimal MachineUBa4 { get; set; }
        public Int64 MachineRunningTime { get; set; }
        public Int64 MachineStopTime { get; set; }
        public int Signal { get; set; }
        public string? TimeReceived { get; set; }
    }
    public class ReportRealTime
    {
        public int ColX { get; set; }
        public decimal ColY { get; set; }
        public string? LabelX { get; set; }
    }
    public class ReportTransformerRealTime
    {
        public int ColX { get; set; }
        public decimal ColY { get; set; }
        public decimal ColYBA1 { get; set; }
        public decimal ColYBA2 { get; set; }
        public decimal ColYBA3 { get; set; }
        public decimal ColYBA4 { get; set; }
        public string? LabelX { get; set; }
    }
    public class InforPageHome
    {
        public int VAl1_1 { get; set; }
        public int VAl1_2 { get; set; }
        public int VAl2_1 { get; set; }
        public int VAl2_2 { get; set; }
        public int VAl3_1 { get; set; }
        public int VAl3_2 { get; set; }
        public int VAl4_1 { get; set; }
        public int VAl4_2 { get; set; }
    }
    public class InforPageHomeNew
    {
        public string? Label_01 { get; set; }
        public int Val_01 { get; set; }
        public string? Label_02 { get; set; }
        public int Val_02 { get; set; }
        public string? Label_03 { get; set; }
        public int Val_03 { get; set; }
        public string? Label_04 { get; set; }
        public int Val_04 { get; set; }
        public string? Label_05 { get; set; }
        public int Val_05 { get; set; }
        public string? Label_11 { get; set; }
        public int Val_11 { get; set; }
        public string? Label_12 { get; set; }
        public int Val_12 { get; set; }
        public string? Label_13 { get; set; }
        public int Val_13 { get; set; }
        public string? Label_14 { get; set; }
        public int Val_14 { get; set; }
        public string? Label_15 { get; set; }
        public int Val_15 { get; set; }
        public string? Sup_01 { get; set; }
        public string? Sup_02 { get; set; }
        public string? Sup_03 { get; set; }
        public string? Sup_04 { get; set; }
        public string? Sup_05 { get; set; }
        public string? Sup_11 { get; set; }
        public string? Sup_12 { get; set; }
        public string? Sup_13 { get; set; }
        public string? Sup_14 { get; set; }
        public string? Sup_15 { get; set; }
    }
    public class InforPageHomeDetail
    {
        public string? DeviceName { get; set; }
        public string? DeviceCode { get; set; }
        public string? BranchName { get; set; }
        public int Col1 { get; set; }
        public int Col2 { get; set; }
        public int Col3 { get; set; }
        public int Col4 { get; set; }
    }
    public class InforPageHomeTable
    {
        public string? ColVal1 { get; set; }
        public string? ColVal2 { get; set; }
        public string? ColVal3 { get; set; }
        public string? ColVal4 { get; set; }
        public string? ColVal5 { get; set; }
        public string? ColVal6 { get; set; }
        public string? ColVal7 { get; set; }
        public string? ColVal8 { get; set; }
    }
    public class InforPageHomeChart
    {
        public string? LabelX_01 { get; set; }
        public string? LabelX_02 { get; set; }
        public int ColValY { get; set; }
    }
    public class InforPageHomeBarChart
    {
        public string? LabelX_01 { get; set; }
        public string? LabelX_02 { get; set; }
        public int ColValY_01 { get; set; }
        public int ColValY_02 { get; set; }
        public int ColValY_03 { get; set; }
        public int ColValY_04 { get; set; }
        public int ColValY_05 { get; set; }
        public int ColValY_06 { get; set; }
    }
}

