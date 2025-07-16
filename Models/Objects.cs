using Microsoft.EntityFrameworkCore.Query;
using NPOI.SS.Formula.Functions;
using NPOI.Util;
using System;
using System.Collections.Generic;
using System.IO.Pipelines;
using System.Reflection.Emit;

namespace MledNew2023.MVC.Models
{
    public class District
    {
        public Int64 Id { get; set; }
        public string? Code { get; set; }
        public string? DistrictCodeName { get; set; }
        public string? ProvinceCodeName { get; set; }
        public string? Name { get; set; }
        public Int64 ProvinceId { get; set; }
        public string? ProvinceName { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class Partner
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? LinksUrl { get; set; }
        public string? LogoImage { get; set; }
        public int StatusValue { get; set; }
        public int CountryId { get; set; }
        public string? CountryName { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class tbDepartment
    {
        public int YearFounded { get; set; }
        public string? ScaleFounded { get; set; }
        public string? Description2 { get; set; }
        public Int64 Id { get; set; }
        public string? Code { get; set; }
        public string? Name { get; set; }
        public string? NameShort { get; set; }
        public int CountryId { get; set; }
        public int ProvinceId { get; set; }
        public int DistrictId { get; set; }
        public int WardId { get; set; }
        public int DepartmentTypeId { get; set; }
        public int BusinessTypeId { get; set; }
        public string? LogoImage { get; set; }
        public byte[] ImageUrl { get; set; }
        public string? Website { get; set; }
        public string? TaxCode { get; set; }
        public string? Address { get; set; }
        public string? RepresentativeLegal { get; set; }
        public string? Position { get; set; }
        public string? LicenseDate { get; set; }
        public string? OperationDate { get; set; }
        public string? Phone { get; set; }
        public string? Email { get; set; }
        public int StatusValue { get; set; }
        public int AcceptedValue { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? DepartmentScaleJson { get; set; }
        public string? DepartmentStrategyJson { get; set; }
        public string? OtherInforJson { get; set; }
        public string? OtherProductList { get; set; }
    }
    public class StyleDepartment
    {
        public int Id { get; set; }
        public string? Name { get; set; }
    }
    public class Guest
    {
        public Int64 Id { get; set; }
        public string? CountryName { get; set; }
        public string? Name { get; set; }
        public int CountryId { get; set; }
        public string? Website { get; set; }
        public string? Address { get; set; }
        public string? Representative { get; set; }
        public string? RepresentativePosition { get; set; }
        public string? Telephone { get; set; }
        public string? Mobilephone { get; set; }
        public string? Email { get; set; }
        public string? Demand { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }    
    public class Province
    {

        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? ZoneName { get; set; }
        public Int32 ZoneId { get; set; }
        public string? Code { get; set; }
        public string? ProvinceCodeName { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class Ward
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? DistrictCodeName { get; set; }
        public string? WardCodeName { get; set; }
        public string? DistrictName { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public Int32 Type { get; set; }
        public Int32 Status { get; set; }
        public Int32 DistrictId { get; set; }
    }
    public class BusinessType
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }

    }
    public class Category
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public int StatusValue { get; set; }
        public int BelongId { get; set; }
        public string? ProductList { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class OnlineSupport
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? Icon { get; set; }
        public string? Account { get; set; }
        public int StatusValue { get; set; }
        public int OrderCode { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class Links
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? LinksUrl { get; set; }
        public string? LogoImage { get; set; }
        public int StatusValue { get; set; }
        public int CountryId { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class Advertisement
    {
        public int CountryId { get; set; }
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? LinksUrl { get; set; }
        public string? LogoImage { get; set; }
        public int StatusValue { get; set; }
        public int Location { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? DateStart { get; set; }
        public string? DateEnd { get; set; }
    }
    public class DepartmentType
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class Product
    {
        public Int32 Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public Int32 GroupId { get; set; }
        public string? Standard { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class ProjectSearch
    {
        public Int64 Id { get; set; }
        public string? Key { get; set; }
        public int? TypeId { get; set; }
        public int? YearActive { get; set; }
        public int? LevelId { get; set; }
        public int? FormId { get; set; }
        public int? ActiveUnitId { get; set; }
        public int? ZoneId { get; set; }
        public int? ProvinceId { get; set; }
        public string? UserCVId { get; set; }
        public string? UserLDId { get; set; }
        public int? DecisionId { get; set; }
        public int? CategoryId { get; set; }
        public int? StatusId { get; set; }
        public int? SupportUnitId { get; set; }
    }
    public class Project
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public int? TypeId { get; set; }
        public int? YearActive { get; set; }
        public string? TypeName { get; set; }
        public int? LevelId { get; set; }
        public string? LevelName { get; set; }
        public int? FormId { get; set; }
        public string? FormName { get; set; }
        public int? IsGroupQD1881 { get; set; }
        public int? ActiveUnitId { get; set; }
        public string? ActiveUnitName { get; set; }
        public int? ProvinceId { get; set; }
        public string? MainContent { get; set; }
        public decimal? KPDUTT { get; set; }
        public decimal? KPKCQG { get; set; }
        public string? StartDate { get; set; }
        public string? EndDate { get; set; }
        public string? UserCVId { get; set; }
        public string? UserCVName { get; set; }
        public string? UserLDId { get; set; }
        public string? UserLDName { get; set; }
        public int? NumberProject { get; set; }
        public int? DecisionId { get; set; }
        public string? DecisionName { get; set; }
        public int? CategoryId { get; set; }
        public string? CategoryName { get; set; }
        public string? ContractCode { get; set; }
        public string? ContractDate { get; set; }
        public string? ContractTime { get; set; }
        public int? StatusId { get; set; }
        public string? StatusName { get; set; }
        public decimal? KPChuyenTCKTTD { get; set; }
        public decimal? KPHoanTra { get; set; }
        public int? IsQD2948 { get; set; }
        public int? YearProjectDecision1 { get; set; }
        public int? IsQDNumber { get; set; }
        public int? YearProjectDecision2 { get; set; }
        public string? ProjectDetailJson { get; set; }
        public int? ZoneId { get; set; }
        public int? SupportUnitId { get; set; }
    }
    public class ProjectDetail
    {
        public int Id { get; set; }
        public int? ProjectID { get; set; }
        public string? NamResult { get; set; }
        public string? AnnexContent { get; set; }
        public decimal? ContractKPQG { get; set; }
        public decimal? ContractTotalCapital { get; set; }
        public decimal? ContractKPCL { get; set; }
        public decimal? ContractKPTCKT { get; set; }
        public int? StatusId { get; set; }
        public string? StatusName { get; set; }
        public decimal? KPHoanTra { get; set; }
        public decimal? AdvanceValue1 { get; set; }
        public decimal? AdvanceValue2 { get; set; }
        public decimal? AdvanceValue3 { get; set; }
        public decimal? AdvanceValue4 { get; set; }
        public decimal? AdvanceValue5 { get; set; }
        public int? TypeId { get; set; }
        public string? TypeName { get; set; }
        public string? TitleOther { get; set; }
        public decimal? IKPKCQGByType { get; set; }
        public int? NumberUnit { get; set; }
        public int? IsGroupQD1881 { get; set; }
        public string? Note { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? ProjectDetailSupportJson { get; set; }
        //public int? sumIsCraftVillage { get; set; }
        //public int? sumIsAgricultural { get; set; }
        //public int? sumIsQG { get; set; }
        //public int? sumIsKV { get; set; }
        //public int? sumIsExport { get; set; }
        //public int? sumNumberEmployees { get; set; }
        //public decimal? sumTotalRevenue { get; set; }
        //public decimal? sumTotalCapital { get; set; }
        //public string? SuportUnitType { get; set; }
    }
    public class ProjectDetailSumSupport
    {
        public int? Id { get; set; }
        public int? ProjectID { get; set; }       
        public decimal? ContractKPQG { get; set; }
        public string? NamResult { get; set; }
        public string? SupportUnitFull { get; set; }
        public string? LocalityFull { get; set; }      
        public string? ListYearFull { get; set; }
        public string? OtherInfo { get; set; }
    }
    public class ProjectDetailSupport
    {
        public int? Id { get; set; }
        public string? NamResult { get; set; }
        public int? ProjectDetailId { get; set; }
        public int? ProvinceID { get; set; }
        public int? DistrictID { get; set; }
        public int? WardId { get; set; }
        public int? SupportUnitId { get; set; }
        public string? ProvinceName { get; set; }
        public string? DistrictName { get; set; }
        public string? WardName { get; set; }
        public string? SupportUnitName { get; set; }
        public decimal? KPHT { get; set; }
        public string? ListYear { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public int? IsCraftVillage { get; set; }
        public int? IsAgricultural { get; set; }
        public int? IsExport { get; set; }
        public int? IsGetCNNTTB { get; set; }
        public int? CategoryId { get; set; }
 public string? CategoryName { get; set; }
        public int? NumberEmployees { get; set; }
        public decimal? TotalRevenue { get; set; }
        public decimal? TotalCapital { get; set; }
        public string? FacilityTypeName { get; set; }
    }
     public class ProductGroup
    {
        public Int64 Id { get; set; }
        public int BelongTo { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? Standard { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class FormGroup
    {
        public Int64 Id { get; set; }
        public int BelongTo { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
public class Documentary
    {
        public Int64 Id { get; set; }
        public int BelongTo { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }

    public class FormTemplate
    {
        public Int64 Id { get; set; }
        public int BelongTo { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class CertificateStatus
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class CertificateType
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public int Total { get; set; }
    }
 public class CertificateField
    {
        public Int64 Id { get; set; }
        public Int64 TypeId { get; set; }
        public string? TypeName { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public int Total { get; set; }
    }

    public class DesignatedStaus
    {
        public Int64 Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class CertificateAct
    {
        public int Id { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? DecisionNumber { get; set; }
        public string? DatePublish { get; set; }
        public int ProvinceId { get; set; }
        public string? ProvinceName { get; set; }
        public int OrganizationID { get; set; }
        public string? OrganizationName { get; set; }
        public string? OrganizationCode { get; set; }
        public int CertificateType { get; set; }
        public int CertificateCase { get; set; }
        public int CertificateField { get; set; }
        public string? FieldName { get; set; }
        public int CertificateStatus { get; set; }
        public string? TypeName { get; set; }
        public string? StatusName { get; set; }
        public string? StatusStyle { get; set; }
        public int CategoryId { get; set; }
        public string? Description { get; set; }
        public string? NumberRegister { get; set; }
        public int TimeAct { get; set; }
        public string? Signer { get; set; }
        public string? FileScan { get; set; }
    }
    public class DesignatedAct
    {
        public int Id { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? DecisionNumber { get; set; }
        public string? DatePublish { get; set; }
        public int ProvinceId { get; set; }
        public string? ProvinceName { get; set; }
        public string? StatusStyle { get; set; }
        public int OrganizationID { get; set; }
        public string? OrganizationName { get; set; }
        public string? OrganizationCode { get; set; }
        public int DesignatedType { get; set; }
        public int DesignatedStatus { get; set; }
        public string? TypeName { get; set; }
        public string? StatusName { get; set; }
        public int CategoryId { get; set; }
        public string? Description { get; set; }
        public string? NumberRegister { get; set; }
        public int TimeAct { get; set; }
        public string? Signer { get; set; }
        public string? FileScan { get; set; }
    }
    public class OrganizationApplication //=CertificateApplication =//DesignatedApplication
    {
        public int Id { get; set; }
        public int ActId { get; set; }  //=CertificateActID =//DesignatedActID
        public string? ActNumberRegister { get; set; }
        public int FileId { get; set; } //=CertificateFileId =//DesignatedFileId
        public string? FileName { get; set; } ////=CertificateFileId =//DesignatedFileId CertificateFile=> Description
        public string? FileUrl { get; set; }
        public string? FileSize { get; set; }
        public string? FileExtension { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? TITLE { get; set; }
    }
    public class OrganizationDocument //=CertificateApplication =//DesignatedApplication
    {
        public int Id { get; set; }
        public int ActId { get; set; }  //=CertificateActID =//DesignatedActID
        public int BelongTo { get; set; }  //=CertificateActID =//DesignatedActID
        public string? ActNumberRegister { get; set; }
        public string? DocNumber { get; set; }
        public string? FileList { get; set; } //=CertificateFileId =//DesignatedFileId Dánh sách các file cần sưa đổi, bổ sung
        public string? DatePublish { get; set; }
        public string? DateDie { get; set; }
        public string? Description { get; set; }
        public int StatusValue { get; set; } //Trạng thái: 0: ----; 1: Đã nhận ; 2: Đã trả lời
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? TITLE { get; set; }
        public string? FileScan { get; set; }
    }
    public class OrganizationFile //=CertificateFile =//DesignatedFile
    {
        public int Id { get; set; }
        public int TypeId { get; set; }
        public int FormId { get; set; }
        public string? TypeName { get; set; }
        public string? FormName { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class OrganizationPerson
    {
        public int Id { get; set; }
        public int OrganizationId { get; set; }
        public string? FullName { get; set; }
        public string? ManaSystem { get; set; }
        public int? WorkYears { get; set; }
        public string? Address { get; set; }
        public string? LaborContract { get; set; }
        public string? ContractUrl { get; set; }
        public string? Degree { get; set; }
        public string? DegreeUrl { get; set; }

        public string? LaborUrl { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? sForderName { get; set; }
    }
    public class DesignatedType
    {
        public int Id { get; set; }
        public string? Name { get; set; }
        public string? Code { get; set; }
        public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class DesignatedExpert
    {
        public int Id { get; set; }
        public int DesignatedActId { get; set; }
        public string? ActNumberRegister { get; set; } /// <summary>
        /// Chưa được cấp thì lấy số đăng ký, đã cấp thì lấy số quyết định
        /// </summary>
        public string? Description { get; set; }
        public string? UserId01 { get; set; }
        public string? UserId02 { get; set; }
        public string? UserId03 { get; set; }
        public string? UserId04 { get; set; }
        public string? UserId05 { get; set; }
        public string? UserId06 { get; set; }
        public string? UserId07 { get; set; }
        public string? TimeStart { get; set; }
        public string? TimeEnd { get; set; }
        public string? RecordScan { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
    }
    public class Organization
    {
        public int Id { get; set; }
        public string? Name { get; set; }
public string? FolderName { get; set; }
        public string? Code { get; set; }
		public int? StatusValue { get; set; }
		public string? Address { get; set; }
		public string? Tell { get; set; }
		public string? Fax { get; set; }
		public string? Email { get; set; }
		public string? Website { get; set; }
		public string? DecisionType { get; set; }
		public string? DecisionNumber { get; set; }
		public string? DecisionPub { get; set; }
		public string? DecisionDate { get; set; }
		public string? DecisionLocation { get; set; }
		public string? Representative { get; set; }
		public string? RepPositon { get; set; }
		public string? RepBirthday { get; set; }
		public string? RepCCCD { get; set; }
		public string? RepAddress { get; set; }
		public string? RepTemporary { get; set; }
		public int? ProvinceId { get; set; }
		public int? DistrictId { get; set; }
		public int? WardId { get; set; }
		public string? Description { get; set; }
        public string? TimeCreated { get; set; }
        public string? TimeModified { get; set; }
        public string? CertificateList { get; set; }
        public string? DesignatedList { get; set; }
    }
    public class DashboardTopData
    {
        public int data_1 { set; get; }
        public int data_2 { set; get; }
        public int data_3 { set; get; }
        public int data_4 { set; get; }

    }
}


