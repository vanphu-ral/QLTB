using System;
using System.Collections.Generic;

namespace MledNew2023.MVC.Models
{
    public class SupplieUse
    {
        public Int64 Id { get; set; }
        public Int32 Month { get; set; }
        public Int32 Year { get; set; }
        public Int32 FactoryId { get; set; }
        public Int32 BranchId { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? SupplieCode { get; set; }
        public string? BranchName { get; set; }
        public string? FactoryName { get; set; }       
        public List<SupplieUseDetail> SupplieUseDetailList { get; set; }
    }
    public class SupplieUseDetail
    {
        public Int64 Id { get; set; }
        public Int64 SupplieUseId { get; set; }
        public Int32 SupplieId { get; set; }
        public Int32 LineId { get; set; }
	    public string? BranchName { get; set; }
        public string? FactoryName { get; set; }
        public string? SupplieName { get; set; }
        public string? SupplieCode { get; set; }
        public string? NumberNote { get; set; }
        public Int64 Quantity { get; set; }
        public string? Belonging { get; set; }
public string? BelongingName { get; set; }
public string? Origin { get; set; }
        public Int64 Price { get; set; }
        public Int64 ToMoney { get; set; }
        public Int64 TeamId { get; set; }
        public string? TeamName { get; set; }
    }
}
