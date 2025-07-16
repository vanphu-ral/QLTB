using System;

namespace MledNew2023.MVC.Models
{
    public class Parameter
    {
    }
    public class DatabaseParameter
    {
        public string? ConnectionString { get; set; }
    }
    public class SystemParameter
    {
        public Int64 LineId { get; set; }
        public Int64 TeamId { get; set; }
        public Int64 BranchId { get; set; }
        public Int64 FactoryId { get; set; }
        public string? HomePage { get; set; }//"index.html",
        public string? AdminPage { get; set; }//"DefaultPage.html",       
        public int MaxUploadFileSize { get; set; }//20971520,
        public string? UploadExcelDirectory { get; set; }//"/Uploads/ExcelFiles/",
        public string? UploadUserImage { get; set; }//"/Uploads/UserImages/",
        public string? UploadProductImage { get; set; }//"/Uploads/Products/",
        public string? UploadCategoryImage { get; set; }//"/Uploads/Categorys/",
        public string? UploadSearchTrendImage { get; set; }//"/Uploads/SearchTrends/",
        public string? UploadForm { get; set; }//"/Uploads/UploadForm/",
        public string? FileImport { get; set; }//"/uploads/FileImport/",
        public string? UploadAvatar { get; set; }//"/Uploads/UploadForm/",
        public string? UploadSignalture { get; set; }//"/Uploads/UploadForm/",
        public string? CultureInfo { get; set; }//"vi-VN",
        public string? WebRootPath { get; set; }//wwwroot
        public string? ContentRootPath { get; set; }
        public string? EmailAddress { get; set; }//"vielina@gmail.com",
        public string? EmailSmtp { get; set; }//"smtp.gmail.com",
        public int EmailPort { get; set; }//587,
        public string? EmailUser { get; set; }//"vielina@gmail.com",
        public string? EmailPassword { get; set; }//"123456"
        public int UseSqlServer { get; set; }//1,
    }
}
