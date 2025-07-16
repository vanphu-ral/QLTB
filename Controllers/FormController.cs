using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis.Elfie.Diagnostics;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using MledNew2023.MVC.Helpers;
using MledNew2023.MVC.Models;
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
    public class FormController : Controller
    {
        private readonly ILogger<FormController> _logger;
        public SystemParameter SystemParameter = new SystemParameter();
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public FormController(ILogger<FormController> logger, IConfiguration configuration)
        {
            _logger = logger;
            Configuration = configuration;
            SystemParameter.UploadForm = configuration["SystemParameter:UploadForm"];
        }
        private string currentUserID;
        private string IpAddress;
        public IActionResult Index()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress); ;
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
        public MessageResults Add(Form department, IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddForm";

                cmd.Parameters.AddWithValue("@Name", (department.Name == null ? DBNull.Value : (object)department.Name));
                cmd.Parameters.AddWithValue("@Description", department.Description == null ? DBNull.Value : (object)department.Description);
                cmd.Parameters.AddWithValue("@FactoryId", (object)department.FactoryId == null ? DBNull.Value : (object)department.FactoryId);
                cmd.Parameters.AddWithValue("@BranchId", (object)department.BranchId == null ? DBNull.Value : (object)department.BranchId);
                cmd.Parameters.AddWithValue("@TeamId", (object)department.TeamId == null ? DBNull.Value : (object)department.TeamId);
                cmd.Parameters.AddWithValue("@LineId", (object)department.LineId == null ? DBNull.Value : (object)department.LineId);

                if (fileUpload == null || fileUpload.Length == 0)
                {  //Không có file được chọn
                    cmd.Parameters.AddWithValue("@FilePath", department.FilePath == null ? DBNull.Value : (object)department.FilePath);
                    cmd.Parameters.AddWithValue("@FileName", department.FileName == null ? DBNull.Value : (object)department.FileName);
                }
                else
                {
                    string sDir = String.Format("/wwwroot/uploads/UploadForm/").Replace("/", "\\");
                    var rootFolder = Directory.GetCurrentDirectory();
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("fileTemp_{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
                    var newFilePath = String.Format("{0}{1}", sDir, newFileName);
                    var filePathFull = Path.Combine(rootFolder + newFilePath);
                    FileInfo fileInfo = new FileInfo(filePathFull);

                    if (!System.IO.File.Exists(filePathFull))
                        if (!System.IO.Directory.Exists(fileInfo.Directory?.FullName))
                        {
                            Directory.CreateDirectory(String.Format("{0}", fileInfo.Directory?.FullName));
                        }
                    using (var inputStream = fileInfo.Create())
                    {
                        fileUpload.CopyTo(inputStream);
                        //Xóa File cũ
                        if (department.FilePath != "")
                        {
                            var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", sDir, department.FilePath).Replace("/", "\\"));
                            if (System.IO.File.Exists(filePathOld))
                            {
                                System.IO.File.Delete(filePathOld);
                            }
                        }
                    }
                    cmd.Parameters.AddWithValue("@FilePath", newFileName);
                    cmd.Parameters.AddWithValue("@FileName", newFileName);
                }

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                BaseService.AddUserActive(currentUserID, IpAddress, _result, ConnectionString);
                return _result;
            }
            catch (Exception ex)
            {
                _result.success = false; _result.Id = 0;
                _result.message = "Thêm mới không thành công";
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
            }
            finally
            {
                sqlConnection.Close();
            }
            return _result;
        }
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults Edit(Form department, IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
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
                cmd.CommandText = "EditForm";

                cmd.Parameters.AddWithValue("@Id", department.Id);
                cmd.Parameters.AddWithValue("@Name", (department.Name == null ? DBNull.Value : (object)department.Name));
                cmd.Parameters.AddWithValue("@Description", department.Description == null ? DBNull.Value : (object)department.Description);
                cmd.Parameters.AddWithValue("@FactoryId", (object)department.FactoryId == null ? DBNull.Value : (object)department.FactoryId);
                cmd.Parameters.AddWithValue("@BranchId", (object)department.BranchId == null ? DBNull.Value : (object)department.BranchId);
                cmd.Parameters.AddWithValue("@TeamId", (object)department.TeamId == null ? DBNull.Value : (object)department.TeamId);
                cmd.Parameters.AddWithValue("@LineId", (object)department.LineId == null ? DBNull.Value : (object)department.LineId);
                if (fileUpload == null || fileUpload.Length == 0)
                {  //Không có file được chọn
                    cmd.Parameters.AddWithValue("@FilePath", department.FilePath == null ? DBNull.Value : (object)department.FilePath);
                    cmd.Parameters.AddWithValue("@FileName", department.FileName == null ? DBNull.Value : (object)department.FileName);
                }
                else
                {
                    string sDir = String.Format("/wwwroot/uploads/UploadForm/").Replace("/", "\\");
                    var rootFolder = Directory.GetCurrentDirectory();
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("fileTemp_{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
                    var newFilePath = String.Format("{0}{1}", sDir, newFileName);
                    var filePathFull = Path.Combine(rootFolder + newFilePath);
                    FileInfo fileInfo = new FileInfo(filePathFull);

                    if (!System.IO.File.Exists(filePathFull))
                        if (!System.IO.Directory.Exists(fileInfo.Directory?.FullName))
                        {
                            Directory.CreateDirectory(String.Format("{0}", fileInfo.Directory?.FullName));
                        }
                    using (var inputStream = fileInfo.Create())
                    {
                        fileUpload.CopyTo(inputStream);
                        //Xóa File cũ
                        if (department.FilePath != "")
                        {
                            var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", sDir, department.FilePath).Replace("/", "\\"));
                            if (System.IO.File.Exists(filePathOld))
                            {
                                System.IO.File.Delete(filePathOld);
                            }
                        }
                    }
                    cmd.Parameters.AddWithValue("@FilePath", newFileName);
                    cmd.Parameters.AddWithValue("@FileName", newFileName);
                }

                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                BaseService.AddUserActive(currentUserID, IpAddress, _result, ConnectionString);
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
        // POST: FormController/Delete/5
        [HttpGet]
        public MessageResults Distroy(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeleteForm";
                cmd.Parameters.AddWithValue("@Id", Id);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                BaseService.AddUserActive(currentUserID, IpAddress, _result, ConnectionString);
                if (DelName != "")
                {
                    //string sDir = String.Format("/wwwroot/uploads/UploadForm/").Replace("/", "\\");
                    //var filePathOld = Path.Combine(sDir + DelName.Replace("/", "\\"));
                    //if (System.IO.File.Exists(filePathOld))
                    //{
                    //    System.IO.File.Delete(filePathOld);
                    //}
                }
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
        [HttpGet]
        public FileResult DownloadFile(string fileName)
        {
            //Build the File Path.
            string sDir = String.Format("/wwwroot/uploads/UploadForm/").Replace("/", "\\");
            string path = Path.Combine(sDir + fileName.Replace("/", "\\"));
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
