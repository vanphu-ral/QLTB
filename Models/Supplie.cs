using System;

namespace MledNew2023.MVC.Models
{
    public class Supplie
    {
        public Int64 Id { get; set; }
        public Int64 GroupID { get; set; }
        public Int64 LineId { get; set; }
        public string? Name { get; set; }
        public string? Unit { get; set; }
        public string? SupplieCodeName { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? Code { get; set; }
        public string? Origin { get; set; }
        public string? InstallationPlace { get; set; }
        public string? GroupName { get; set; }
        public string? LineName { get; set; }
        public Int32 Status { get; set; }
        public Int32 YearOfUse { get; set; }
        public Int32 MaintenanceCycle { get; set; }
        public Int32 YearOfManufacture { get; set; }
        public Int32 NumberTotal { get; set; }
        public string? QRCode { get; set; }
        public string? QRCodeImg { get; set; }
        public string? FileScan { get; set; }
    }
}
