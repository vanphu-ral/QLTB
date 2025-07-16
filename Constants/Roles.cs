using System;

namespace MledNew2023.MVC.Constants
{
    public enum Roles
    {
        SuperAdmin,
        Admin,
        Basic
    }
    public class CurentSetting
    {
        public Int64 LineId { get; set; }
        public Int64 TeamId { get; set; }
        public Int64 BranchId { get; set; }
        public Int64 FactoryId { get; set; }
        public string? LineName { get; set; }
        public string? TeamName { get; set; }
        public string? BranchName { get; set; }
        public string? FactoryName { get; set; }
    }
    public class EmailSetting
    {
        public string? EmailAddress { get; set; }
        public long EmailPort { get; set; }
        public string? EmailSmtp { get; set; }
        public string? EmailUser { get; set; }
        public string? EmailPassword { get; set; }
    }
}