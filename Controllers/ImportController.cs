using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using MledNew2023.MVC.Helpers;
using MledNew2023.MVC.Models;
using NPOI.HSSF.UserModel;
using NPOI.SS.UserModel;
using NPOI.XSSF.UserModel;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Reflection;
using System.Security.Claims;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    [System.Obsolete("This type is obsolete and will be removed in a future version. The recommended alternative is Microsoft.AspNetCore.Hosting.IWebHostEnvironment.", false)]
    public class ImportController : Controller
    {
        private readonly ILogger<ImportController> _logger;
        private readonly Microsoft.AspNetCore.Hosting.IHostingEnvironment _hostingEnvironment;
        public SystemParameter SystemParameter = new SystemParameter();
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public ImportController(Microsoft.AspNetCore.Hosting.IHostingEnvironment hostingEnvironment, ILogger<ImportController> logger, IConfiguration configuration)
        {
            _logger = logger;
            Configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            SystemParameter.FileImport = configuration["SystemParameter:FileImport"];
        }
        private string currentUserID;
        private string IpAddress;
        public IActionResult Index()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;

            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, 
                new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Quản lý biểu mẫu hồ sơ" }, ConnectionString);
            return View();
        }
        public IEnumerable<Form> Get()
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetForm";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var departmentList = new List<Form>();
                while (sqlDataReader.Read())
                {
                    var _result = new Form();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    _result.Name = sqlDataReader["Name"].ToString();
                    _result.Description = sqlDataReader["Description"].ToString();
                    _result.FileName = sqlDataReader["FileName"].ToString();
                    if (!(sqlDataReader["FactoryId"] is DBNull)) _result.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                    if (!(sqlDataReader["TeamId"] is DBNull)) _result.TeamId = int.Parse(String.Format("{0}", sqlDataReader["TeamId"]));
                    if (!(sqlDataReader["LineId"] is DBNull)) _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
                    if (!(sqlDataReader["BranchId"] is DBNull)) _result.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }

                    departmentList.Add(_result);
                }

                return departmentList;
            }
            catch (Exception ex)
            {

                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return null;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults ImportData(string ListType, IFormFile fileUpload)
        {
            //Kiểm tra file chọn đúng là mẫu cho danh mục ko
            //
            _Nlog.Info(ListType);
            _Nlog.Info(fileUpload.FileName);
            MessageResults _result = new MessageResults();

            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            try
            {
                if (fileUpload == null || fileUpload.Length == 0)
                {
                    _result.success = false; _result.Id = 0;
                    _result.message = "Không có file chọn";
                }
                else
                {
                    
                    var sFileExtension = Path.GetExtension(fileUpload.FileName).ToLower();
                    ISheet sheet;
                    var newFileName = String.Format("{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), sFileExtension);
                    var newFilePath = String.Format("{0}{1}", SystemParameter.FileImport, newFileName).Replace("/", "\\");
                    var filePath = Path.Combine(_hostingEnvironment.WebRootPath + newFilePath);
                    using (var stream = new FileStream(filePath, FileMode.Create))
                    {
                        fileUpload.CopyTo(stream);
                        stream.Position = 0;
                        if (sFileExtension == ".xls")
                        {
                            HSSFWorkbook hssfwb = new HSSFWorkbook(stream); //This will read the Excel 97-2000 formats  
                            sheet = hssfwb.GetSheetAt(0); //get first sheet from workbook  
                        }
                        else
                        {
                            XSSFWorkbook hssfwb = new XSSFWorkbook(stream); //This will read 2007 Excel format  
                            sheet = hssfwb.GetSheetAt(0); //get first sheet from workbook   
                        }
                        IRow rowtitle = sheet.GetRow(0); //Get Header Row
                        int cellCount = rowtitle.LastCellNum;
                        string tableName = "";
                        for (int j = 0; j < cellCount; j++)
                        {
                            //Kiểm tra hàng đầu tiên, 
                            NPOI.SS.UserModel.ICell cell = rowtitle.GetCell(j);
                            if (cell == null || string.IsNullOrWhiteSpace(cell.ToString())) continue;
                            //Dòng đầu tiên này lấy được tên danh mục
                            if (j == 0)
                            {
                                string[] arrvalueCell = (cell.ToString()).Split(':');
                                if(arrvalueCell.Length >1) tableName = arrvalueCell[1].Trim().ToLower();
                                else tableName = arrvalueCell[0].Trim().ToLower();
                                break;
                            }
                        }
                        _Nlog.Info("tableName:" + tableName);
                        _Nlog.Info("GetListName:" + BaseService.ImportService.GetListName(ListType).ToLower());
                        //So sánh nhiệm vụ trên file Excel và nhiệm vụ chọn từ File
                        if (tableName == BaseService.ImportService.GetListName(ListType).ToLower())
                        {
                            ///Dòng 1: Tên danh mục
                            ///Dòng 2: Dòng tiêu đề các cột
                            ///
                            ImportResult itemheader = new ImportResult();
                            IRow rowheader = sheet.GetRow(1);
                            itemheader.ColResult0 = "-1";
                            for (int j = rowheader.FirstCellNum + 1; j <= rowheader.LastCellNum; j++)
                            {
                                var value = "";
                                if (j == rowheader.LastCellNum)
                                    value = "Trạng thái ghi dữ liệu";                                   
                                else                                
                                    value = rowheader.GetCell(j).ToString().Trim();
                                //bắt đầu từ 1
                                string colName = String.Format("ColResult{0}", j);
                                //Lấy ra property giống với tên cột được khai báo ở trên
                                var property = itemheader.GetType().GetProperty(colName);
                                if (property != null)
                                {
                                    property.SetValue(itemheader, value);
                                }
                            }
                            ///
                            var ResulrObject = new List<object>();
                            if (itemheader != null) ResulrObject.Add(itemheader);
                            //Bắt đầu đọc dữ liệu //Read Excel File
                            //Dựa vào danh mục chọn=> vào dữ liệu theo các bảng khác nhau                            
                            //Cột 1 là số TT => không cần kiểm tra
                            ///
                            for (int i = (sheet.FirstRowNum + 2); i <= sheet.LastRowNum; i++)
                            {
                                //Kiểm tra các dòng tiếp theo sau dòng số 2
                                IRow row = sheet.GetRow(i); if (row == null) continue;
                                object _obresult = BaseService.ImportService.ActImportDataFromRow(ListType, row, ConnectionString);
                                if (_obresult != null) ResulrObject.Add(_obresult);
                            }
                            _result.success = true; _result.Id = ResulrObject.Count -1;
                            _result.Data = ResulrObject;
                            _result.message = String.Format("Đọc thành công {0} bản ghi vào danh mục {1}.", _result.Id, tableName);
                            return _result;
                        }
                        else
                        {
                            //không đúng mẫu file chọn cho danh mục
                            _result.success = false; _result.Id = 0;
                            _result.message = "Vui lòng chọn file Excel tương ứng với danh mục được chọn nhập dữ liệu.";
                            return _result;
                        }
                    }
                }
            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                _result.success = false; _result.Id = 0;
                _result.message = "Import Er." + ex.Message;
                return _result;
            }
            return _result;
        }      
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults ExportData(string ListType)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {               
                return _result;
            }
            catch (Exception ex)
            {

                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                _result.success = false; _result.Id = 0;
                _result.message = "Lỗi: " + ex.Message;
                return _result;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        public FileResult DownloadFile(string fileName)
        {
            //Build the File Path.
            string path = Path.Combine(_hostingEnvironment.WebRootPath + fileName.Replace("/", "\\"));
            //Read the File data into Byte Array.
            byte[] bytes = System.IO.File.ReadAllBytes(path);
            //Send the File to Download.
            return File(bytes, "application/octet-stream", fileName);
        }
        [HttpGet]
        public FileResult ShowFilePDF(string fileName)
        {
            //byte[] fileContent = Content;
            //string base64 = Convert.ToBase64String(fileContent);
            //Response.Headers.Remove("Content-Disposition");
            //Response.Buffer = true;
            //Response.ContentType = "application/pdf";
            //Response.Headers.Add("Content-Disposition", "inline; filename=MyPdfFile.pdf");
            //return File(fileContent, "applicaton/pdf");
            return null;
        }
    }
}
