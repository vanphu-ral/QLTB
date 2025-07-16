using System;

namespace MledNew2023.MVC.Models
{
    public class Device
    {
        public Int64 Id { get; set; }
        public Int64 GroupID { get; set; }
        public Int64 TeamId { get; set; }
        public Int64 BranchId { get; set; }
        public Int64 LineId { get; set; }
        public string? Name { get; set; }
        public string? DeviceCodeName { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? Code { get; set; }
        public string? QRCode { get; set; }
        public string? QRCodeImg { get; set; }
        public string? Origin { get; set; }
        public string? InstallationPlace { get; set; }
        public string? GroupName { get; set; }
        public string? GroupCodeName { get; set; }
        public string? BranchName { get; set; }
        public string? TeamName { get; set; }
        public string? LineName { get; set; }
        public string? LineCode { get; set; }
        public string? StatusName { get; set; }
        public Int32 Status { get; set; }
        public Int32 YearOfUse { get; set; }
        public Int32 MaintenanceCycle { get; set; }
        public string? StringMaintenanceCycle { get; set; }
        public Int32 YearOfManufacture { get; set; }
        public string? Description2 { get; set; }
        public Int32 Properties { get; set; }
        public Int32 GetRangDong { get; set; }
        public string? TimeReceived { get; set; }
        public string? TimeUse { get; set; }
        public Int32 MonthofUse { get; set; }
        public Int32 IsImportant { get; set; }
        public Int32 IsMotor { get; set; }
        public string? SContentAlert { get; set; }
        public string? FileScan { get; set; }
    }
    public class DeviceHistory
    {
        public Int32 BranchID { get; set; }
        public Int32 TeamId { get; set; }
        public Int32 LineId { get; set; }
        public Int32 DeviceId { get; set; }
        public string? Desc { get; set; }
        public Int32 Id { get; set; }
        public string? BranchName { get; set; }
        public string? TeamName { get; set; }
        public string? LineName { get; set; }
        public string? DeviceName { get; set; }
        public string? TimeCreated { get; set; }
    }
    public class DeviceAIStatus
    {
        public Int32 Id { get; set; }
        public string? DeviceCode { get; set; }
        public int ValueStatus { get; set; }
        public string? TimeCreated { get; set; }
        public int NumberReport { get; set; }
        public int TimeReport { get; set; }
        public string? Note { get; set; }
    }
    public class DeviceSupplie { 
        public Int32 SupplieId { get; set; }    
        public Int32 Quantity { get; set; }
        public Int32 DeviceId { get; set; }
        public Int32 Id { get; set; }
        public string? SupplieName { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
}
