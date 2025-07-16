using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using MledNew2023.MVC.Helpers;
using MledNew2023.MVC.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Net.Http;
using System.Reflection;
using System.Security.Claims;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    [System.Obsolete("This type is obsolete and will be removed in a future version. The recommended alternative is Microsoft.AspNetCore.Hosting.IWebHostEnvironment.", false)]
    public class UserController : Controller
    {
        private readonly ILogger<UserController> _logger;
        private readonly UserManager<IdentityUser> _userManager;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        private readonly Microsoft.AspNetCore.Hosting.IHostingEnvironment _hostingEnvironment;
        public SystemParameter SystemParameter = new SystemParameter();
        public UserController(UserManager<IdentityUser> userManager, ILogger<UserController> logger, IConfiguration configuration, Microsoft.AspNetCore.Hosting.IHostingEnvironment hostingEnvironment)
        {
            _userManager = userManager;
            _logger = logger;
            Configuration = configuration;
            _hostingEnvironment = hostingEnvironment;
            SystemParameter.UploadAvatar = configuration["SystemParameter:UploadAvatar"];
            SystemParameter.UploadSignalture = configuration["SystemParameter:UploadSignalture"];
        }
        private string currentUserID;
        private string IpAddress;
        public IActionResult Index()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, 
                new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Quản lý người dùng" }, ConnectionString);
            return View();
        }

        public IEnumerable<AspNetUsers> Get()
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
                cmd.CommandText = "GetUser";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _userList = new List<AspNetUsers>();
                while (sqlDataReader.Read())
                {
                    var _result = new AspNetUsers();
                    _result.Id = sqlDataReader["Id"].ToString();
                    _result.Email = sqlDataReader["Email"].ToString();
                    _result.Description = sqlDataReader["Description"].ToString();
                    _result.DepartmentName = sqlDataReader["DepartmentName"].ToString();
                    _result.PositionName = sqlDataReader["PositionName"].ToString();
                    _result.UserName = sqlDataReader["UserName"].ToString();
                    _result.FullName = sqlDataReader["FullName"].ToString();
                    if (!(sqlDataReader["PositionId"] is DBNull)) _result.PositionId = int.Parse(String.Format("{0}", sqlDataReader["PositionId"]));
                    if (!(sqlDataReader["DepartmentId"] is DBNull)) _result.DepartmentId = int.Parse(String.Format("{0}", sqlDataReader["DepartmentId"]));
                    if (!(sqlDataReader["ManagerLevelId"] is DBNull)) _result.ManagerLevelId = int.Parse(String.Format("{0}", sqlDataReader["ManagerLevelId"]));
                    if (!(sqlDataReader["FactoryId"] is DBNull)) _result.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                    if (!(sqlDataReader["TeamId"] is DBNull)) _result.TeamId = int.Parse(String.Format("{0}", sqlDataReader["TeamId"]));
                    if (!(sqlDataReader["LineId"] is DBNull)) _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
                    if (!(sqlDataReader["BranchId"] is DBNull)) _result.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));

                    _result.PhoneNumber = sqlDataReader["PhoneNumber"].ToString();
                    _result.Avatar = sqlDataReader["Avatar"].ToString();
                    _result.Signature = sqlDataReader["Signature"].ToString();
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }

                    _userList.Add(_result);
                }

                return _userList;
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
        [HttpGet]
        public MessageResults ADDNewUser(string Email, string Password)
        {
            MessageResults _result = new MessageResults();
            try
            {
                var user = new IdentityUser { UserName = Email, Email = Email };
                var result = _userManager.CreateAsync(user, Password);
                var httpclient = new HttpClient();
                string currentUrl = String.Format("{0}://{1}", HttpContext.Request.Scheme.ToString(), HttpContext.Request.Host.ToString());
                var response = httpclient.GetAsync(currentUrl);

                _result.success = true;
                _result.message = currentUrl;
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
                _result.message = "Thêm mới không thành công";
            }
            return _result;
        }
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public async Task<MessageResults> Add(AspNetUsers _user, IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            try
            {
                var existed = await checkReisterExisted(_user.UserName, _user.Email);
                if (existed.error)
                {
                    return new MessageResults
                    {
                        success = false,
                        message = existed.message
                    };
                }
                var user = new IdentityUser { UserName = _user.UserName, Email = _user.Email };
                var createUserResult = await _userManager.CreateAsync(user, "Admin123@");
                if (!createUserResult.Succeeded)
                {
                    _result.success = false; _result.Id = 0;
                    _result.message = "Lỗi: " + getErrorMessage(createUserResult.Errors);
                }
                else
                {
                    _user.Id = user.Id;
                    Edit(_user, fileUpload);
                    _result.success = true;
                    _result.message = String.Format("Tạo tài khoản {0} thành công", user.UserName);
                }
                return _result;
            }
            catch (Exception ex)
            {

                BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);
                _result.success = false; _result.Id = 0;
                _result.message = "Lỗi: " + ex.Message;
                return _result;
            }
            finally
            {
            }
        }
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults Edit(AspNetUsers _user, IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditUser";

                cmd.Parameters.AddWithValue("@Id", _user.Id);
                cmd.Parameters.AddWithValue("@FullName", (_user.FullName == null ? DBNull.Value : (object)_user.FullName));
                cmd.Parameters.AddWithValue("@Email", _user.Email == null ? DBNull.Value : (object)_user.Email);
                cmd.Parameters.AddWithValue("@PhoneNumber", _user.PhoneNumber == null ? DBNull.Value : (object)_user.PhoneNumber);
                cmd.Parameters.AddWithValue("@Description", _user.Description == null ? DBNull.Value : (object)_user.Description);
                cmd.Parameters.AddWithValue("@LineId", (object)_user.LineId == null ? DBNull.Value : (object)_user.LineId);
                cmd.Parameters.AddWithValue("@PositionId", (object)_user.PositionId == null ? DBNull.Value : (object)_user.PositionId);
                cmd.Parameters.AddWithValue("@TeamId", (object)_user.TeamId == null ? DBNull.Value : (object)_user.TeamId);
                cmd.Parameters.AddWithValue("@BranchId", (object)_user.BranchId == null ? DBNull.Value : (object)_user.BranchId);
                cmd.Parameters.AddWithValue("@ManagerLevelId", (object)_user.ManagerLevelId == null ? DBNull.Value : (object)_user.ManagerLevelId);
                cmd.Parameters.AddWithValue("@DepartmentId", (object)_user.DepartmentId == null ? DBNull.Value : (object)_user.DepartmentId);

                if (fileUpload != null && fileUpload.Length > 0)
                {
                    var rootFolder = Directory.GetCurrentDirectory();
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
                    var newFilePath = String.Format("{0}{1}", SystemParameter.UploadAvatar, newFileName).Replace("/", "\\");
                    var filePath = Path.Combine(rootFolder + newFilePath);
                    FileInfo fileInfo = new FileInfo(filePath);

                    if (!System.IO.File.Exists(filePath))
                        if (!System.IO.Directory.Exists(fileInfo.Directory.FullName))
                        {
                            Directory.CreateDirectory(fileInfo.Directory.FullName);

                        }
                    using (var inputStream = fileInfo.Create())
                    {
                        fileUpload.CopyTo(inputStream);
                        //Xóa File cũ
                        if (_user.Avatar == "")
                        {
                            var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", SystemParameter.UploadAvatar, _user.Avatar).Replace("/", "\\"));
                            if (System.IO.File.Exists(filePathOld))
                            {
                                System.IO.File.Delete(filePathOld);
                            }
                        }
                    }
                    cmd.Parameters.AddWithValue("@Avatar", newFileName == null ? DBNull.Value : (object)newFileName);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@Avatar", _user.Avatar == null ? DBNull.Value : (object)_user.Avatar);
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
                BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);
                _result.success = false; _result.Id = 0;
                _result.message = "Lỗi: " + ex.Message;
                return _result;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        private class ExistedModel
        {
            public bool error { get; set; }
            public string message { get; set; }
        }
        private async Task<ExistedModel> checkReisterExisted(string userName, string email)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "CheckUserExisted"; // String.Format("{0}", MethodBase.GetCurrentMethod()?.Name);
                cmd.Parameters.AddWithValue("@Email", (String.IsNullOrEmpty(email) ? DBNull.Value : (object)email));
                cmd.Parameters.AddWithValue("@UserName", (String.IsNullOrEmpty(userName) ? DBNull.Value : (object)userName));
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                var sqlDataReader = cmd.ExecuteReader();
                ExistedModel _result = new ExistedModel();
                while (sqlDataReader.Read())
                {
                    if (!(sqlDataReader["Error"] is DBNull))
                    {
                        _result.error = int.Parse(String.Format("{0}", sqlDataReader["Error"])) == 1;
                        _result.message = sqlDataReader["Message"].ToString();
                    }

                }
                return _result;
            }
            catch (Exception ex)
            {
                BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);

                return new ExistedModel();
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults UpdateAvatarUser(string Id, string FileName, IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "UpdateAvatarUser";

                cmd.Parameters.AddWithValue("@Id", Id);
                if (fileUpload == null || fileUpload.Length == 0)
                {
                    //KHông có ảnh chọn
                    cmd.Parameters.AddWithValue("@Avatar", FileName == null ? DBNull.Value : (object)FileName);
                }
                else
                {
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
                    var newFilePath = String.Format("{0}{1}", SystemParameter.UploadAvatar, newFileName).Replace("/", "\\");
                    var filePath = Path.Combine(_hostingEnvironment.WebRootPath + newFilePath);
                    using (var inputStream = new FileStream(filePath, FileMode.Create))
                    {
                        fileUpload.CopyTo(inputStream);
                        //Xóa File cũ
                        if (FileName != "")
                        {
                            var filePathOld = Path.Combine(_hostingEnvironment.WebRootPath + String.Format("{0}{1}", SystemParameter.UploadAvatar, FileName).Replace("/", "\\"));
                            if (System.IO.File.Exists(filePathOld))
                            {
                                System.IO.File.Delete(filePathOld);
                            }
                        }
                    }
                    cmd.Parameters.AddWithValue("@Avatar", newFileName == null ? DBNull.Value : (object)newFileName);
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
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults UpdateSignatureUser(string Id, string FileName, IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "UpdateSignatureUser";

                cmd.Parameters.AddWithValue("@Id", Id);
                if (fileUpload == null || fileUpload.Length == 0)
                {
                    //KHông có ảnh chọn
                    cmd.Parameters.AddWithValue("@Signature", FileName == null ? DBNull.Value : (object)FileName);
                }
                else
                {
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
                    var newFilePath = String.Format("{0}{1}", SystemParameter.UploadSignalture, newFileName).Replace("/", "\\");
                    var filePath = Path.Combine(_hostingEnvironment.WebRootPath + newFilePath);
                    using (var inputStream = new FileStream(filePath, FileMode.Create))
                    {
                        fileUpload.CopyTo(inputStream);
                        //Xóa File cũ
                        if (FileName != "")
                        {
                            var filePathOld = Path.Combine(_hostingEnvironment.WebRootPath + String.Format("{0}{1}", SystemParameter.UploadSignalture, FileName).Replace("/", "\\"));
                            if (System.IO.File.Exists(filePathOld))
                            {
                                System.IO.File.Delete(filePathOld);
                            }
                        }
                    }
                    cmd.Parameters.AddWithValue("@Signature", newFileName == null ? DBNull.Value : (object)newFileName);
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
        // POST: UserController/Delete/5
        [HttpGet]
        public MessageResults Distroy(string Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeleteUser";
                cmd.Parameters.AddWithValue("@Id", Id);
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
        public AspNetUsers GetUserInfor(string UserId)
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
                cmd.CommandText = "GetUserInfor";
                cmd.Parameters.AddWithValue("@UserId", ((object)UserId == null ? DBNull.Value : (object)UserId));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    var _result = new AspNetUsers();
                    _result.Id = sqlDataReader["Id"].ToString();
                    _result.Email = sqlDataReader["Email"].ToString();
                    _result.Description = sqlDataReader["Description"].ToString();
                    //_result.DepartmentName = sqlDataReader["DepartmentName"].ToString();
                    //_result.PositionName = sqlDataReader["PositionName"].ToString();
                    _result.UserName = sqlDataReader["UserName"].ToString();
                    _result.FullName = sqlDataReader["FullName"].ToString();
                    _result.PhoneNumber = sqlDataReader["PhoneNumber"].ToString();
                    _result.Avatar = sqlDataReader["Avatar"].ToString();
                    _result.Signature = sqlDataReader["Signature"].ToString();
                    return _result;
                }

                return null;
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
        [HttpGet]
        public AspNetUsers GetUserInforBranch()
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    var _result = new AspNetUsers();
                    if (!(sqlDataReader["FactoryId"] is DBNull)) _result.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                    if (!(sqlDataReader["TeamId"] is DBNull)) _result.TeamId = int.Parse(String.Format("{0}", sqlDataReader["TeamId"]));
                    if (!(sqlDataReader["LineId"] is DBNull)) _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
                    if (!(sqlDataReader["BranchId"] is DBNull)) _result.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                    return _result;
                }

                return null;
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
        [HttpGet]
        public MessageResults UpdateInforUser(string Id, string FullName, string PhoneNumber, string Description)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "UpdateInforUser";
                cmd.Parameters.AddWithValue("@Id", Id == null ? DBNull.Value : (object)Id);
                cmd.Parameters.AddWithValue("@FullName", FullName == null ? DBNull.Value : (object)FullName);
                cmd.Parameters.AddWithValue("@PhoneNumber", PhoneNumber == null ? DBNull.Value : (object)PhoneNumber);
                cmd.Parameters.AddWithValue("@Description", Description == null ? DBNull.Value : (object)Description);
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
        private string getErrorMessage(IEnumerable<IdentityError> errors)
        {

            string _result = "";
            foreach (var item in errors)
            {
                _result = "item.Code: " + item.Code +"; ";
                BaseService.NLogInfor(item.Code);
                switch (item.Code)
                {
                    case "DuplicateUserName":
                        _result += " Tài khoản đã tồn tại,";
                        break;
                    case "PasswordRequiresNonAlphanumeric":
                        _result += " Mật khẩu phải có ít nhất 1 ký tự đặc biệt,";
                        break;
                    case "PasswordRequiresUpper":
                        _result += " Mật khẩu phải có ít nhất 1 chữ viết hoa,";
                        break;
                    case "InvalidUserName":
                        _result += " Lỗi đặt sai tên đăng nhập,";
                        break;
                    default:
                        _result += " Lỗi hệ thống,";
                        break;
                }
            }
            return _result.Substring(0, _result.Length - 1);

        }
    }
}
