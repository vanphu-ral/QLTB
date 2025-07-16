using Microsoft.AspNetCore.Authorization;
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
using System.Reflection;
using System.Security.Claims;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    public class DeviceController : Controller
    {
        private readonly ILogger<DeviceController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public DeviceController(ILogger<DeviceController> logger, IConfiguration configuration)
        {
            _logger = logger;
            Configuration = configuration;
        }
        private string currentUserID;
        private string IpAddress;
        public IActionResult Index()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress); string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress,
                new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Quản lý thiết bị" }, ConnectionString);
            return View();
        }

        public IEnumerable<Device> Get()
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
                cmd.CommandText = "GetDevice";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _inforList = new List<Device>();
                while (sqlDataReader.Read())
                {
                    var _result = new Device();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["GroupID"] is DBNull))
                    {
                        _result.GroupID = int.Parse(String.Format("{0}", sqlDataReader["GroupID"]));
                    }
                    if (!(sqlDataReader["BranchId"] is DBNull))
                    {
                        _result.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                    }
                    if (!(sqlDataReader["TeamId"] is DBNull))
                    {
                        _result.TeamId = int.Parse(String.Format("{0}", sqlDataReader["TeamId"]));
                    }
                    if (!(sqlDataReader["LineId"] is DBNull))
                    {
                        _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
                    }
                    if (!(sqlDataReader["GetRangDong"] is DBNull))
                    {
                        _result.GetRangDong = int.Parse(String.Format("{0}", sqlDataReader["GetRangDong"]));
                    }
                    if (!(sqlDataReader["IsImportant"] is DBNull))
                    {
                        _result.IsImportant = int.Parse(String.Format("{0}", sqlDataReader["IsImportant"]));
                    }

                    _result.Name = sqlDataReader["Name"].ToString();
                    _result.Description = sqlDataReader["Description"].ToString();
                    _result.StatusName = sqlDataReader["StatusName"].ToString();

                    if (!(sqlDataReader["Status"] is DBNull))
                    {
                        _result.Status = int.Parse(String.Format("{0}", sqlDataReader["Status"]));
                    }
                    if (!(sqlDataReader["YearOfUse"] is DBNull))
                    {
                        _result.YearOfUse = int.Parse(String.Format("{0}", sqlDataReader["YearOfUse"]));
                    }
                    if (!(sqlDataReader["MonthofUse"] is DBNull))
                    {
                        _result.MonthofUse = int.Parse(String.Format("{0}", sqlDataReader["MonthofUse"]));
                    }
                    _result.Code = sqlDataReader["Code"].ToString();
                    _result.QRCode = sqlDataReader["QRCode"].ToString();
                    _result.QRCodeImg = sqlDataReader["QRCodeImg"].ToString();
                    _result.Origin = sqlDataReader["Origin"].ToString();
                    _result.InstallationPlace = sqlDataReader["InstallationPlace"].ToString();
                    if (!(sqlDataReader["MaintenanceCycle"] is DBNull))
                    {
                        _result.MaintenanceCycle = int.Parse(String.Format("{0}", sqlDataReader["MaintenanceCycle"]));
                    }
                    if (!(sqlDataReader["YearOfManufacture"] is DBNull))
                    {
                        _result.YearOfManufacture = int.Parse(String.Format("{0}", sqlDataReader["YearOfManufacture"]));
                    }
                    _result.GroupName = sqlDataReader["GroupName"].ToString();
                    _result.BranchName = sqlDataReader["BranchName"].ToString();
                    _result.LineName = sqlDataReader["LineName"].ToString();
                    _result.TeamName = sqlDataReader["TeamName"].ToString();
                    _result.Description2 = sqlDataReader["Description2"].ToString();
                    if (!(sqlDataReader["Properties"] is DBNull)) _result.Properties = int.Parse(String.Format("{0}", sqlDataReader["Properties"]));
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    _result.TimeReceived = sqlDataReader["TimeReceived"].ToString();
                    _result.TimeUse = sqlDataReader["TimeUse"].ToString();
                    _result.FileScan = sqlDataReader["FileScan"].ToString();
                    _inforList.Add(_result);
                }

                return _inforList;
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
        public IEnumerable<Device> GetDeviceByBranchId(Int32 BranchId)
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
                cmd.Parameters.AddWithValue("@BranchId", ((object)BranchId == null ? DBNull.Value : (object)BranchId));
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _inforList = new List<Device>();
                while (sqlDataReader.Read())
                {
                    var _result = new Device();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    _result.Name = sqlDataReader["Name"].ToString();
                    _result.Code = sqlDataReader["Code"].ToString();
                    _result.QRCode = sqlDataReader["QRCode"].ToString();
                    _result.QRCodeImg = sqlDataReader["QRCodeImg"].ToString();
                    _result.DeviceCodeName = sqlDataReader["DeviceCodeName"].ToString();
                    _result.SContentAlert = sqlDataReader["SContentAlert"].ToString();
                    _result.FileScan = sqlDataReader["FileScan"].ToString();
                    _inforList.Add(_result);
                }
                return _inforList;
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
        public IEnumerable<Device> GetDeviceGetRangDongByBranchId(Int32 BranchId)
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
                cmd.Parameters.AddWithValue("@BranchId", ((object)BranchId == null ? DBNull.Value : (object)BranchId));
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _inforList = new List<Device>();
                while (sqlDataReader.Read())
                {
                    var _result = new Device();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    _result.IsMotor = int.Parse(String.Format("{0}", sqlDataReader["IsMotor"])); 
                    _result.Name = sqlDataReader["Name"].ToString();
                    _result.Code = sqlDataReader["Code"].ToString();
                    _result.DeviceCodeName = sqlDataReader["DeviceCodeName"].ToString();
                    _result.QRCodeImg = sqlDataReader["QRCodeImg"].ToString();
                    _result.QRCode = sqlDataReader["QRCode"].ToString();                    
                    _result.SContentAlert = sqlDataReader["SContentAlert"].ToString();
                    _inforList.Add(_result);
                }
                return _inforList;
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
        public IEnumerable<DeviceHistory> GetDeviceHistory(Int32 DeviceId)
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
                cmd.Parameters.AddWithValue("@DeviceId", DeviceId);
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _inforList = new List<DeviceHistory>();
                while (sqlDataReader.Read())
                {
                    var _result = new DeviceHistory();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["BranchID"] is DBNull)) _result.BranchID = int.Parse(String.Format("{0}", sqlDataReader["BranchID"]));
                    if (!(sqlDataReader["TeamId"] is DBNull)) _result.TeamId = int.Parse(String.Format("{0}", sqlDataReader["TeamId"]));
                    if (!(sqlDataReader["LineId"] is DBNull)) _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
                    if (!(sqlDataReader["DeviceId"] is DBNull)) _result.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                    _result.Desc = sqlDataReader["Desc"].ToString();
                    _result.BranchName = sqlDataReader["BranchName"].ToString();
                    _result.TeamName = sqlDataReader["TeamName"].ToString();
                    _result.LineName = sqlDataReader["LineName"].ToString();
                    _result.DeviceName = sqlDataReader["DeviceName"].ToString();
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    _inforList.Add(_result);
                }
                return _inforList;
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
        public IEnumerable<DeviceSupplie> GetDeviceSupplieById(Int32 DId)
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
                cmd.Parameters.AddWithValue("@DeviceId", DId);
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _inforList = new List<DeviceSupplie>();
                while (sqlDataReader.Read())
                {
                    var _result = new DeviceSupplie();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["DeviceId"] is DBNull)) _result.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                    if (!(sqlDataReader["SupplieId"] is DBNull)) _result.SupplieId = int.Parse(String.Format("{0}", sqlDataReader["SupplieId"]));
                    if (!(sqlDataReader["Quantity"] is DBNull)) _result.Quantity = int.Parse(String.Format("{0}", sqlDataReader["Quantity"]));
                    _result.Description = sqlDataReader["Description"].ToString();
                    _result.SupplieName = sqlDataReader["SupplieName"].ToString();                    
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    _inforList.Add(_result);
                }
                return _inforList;
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
        public MessageResults Add(Device _infor, Microsoft.AspNetCore.Http.IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddDevice";
                cmd.Parameters.AddWithValue("@Name", (_infor.Name == null ? DBNull.Value : (object)_infor.Name));
                cmd.Parameters.AddWithValue("@Description", _infor.Description == null ? DBNull.Value : (object)_infor.Description);
                cmd.Parameters.AddWithValue("@GroupID", (object)_infor.GroupID == null ? DBNull.Value : (object)_infor.GroupID);
                cmd.Parameters.AddWithValue("@BranchId", (object)_infor.BranchId == null ? DBNull.Value : (object)_infor.BranchId);
                cmd.Parameters.AddWithValue("@TeamId", (object)_infor.TeamId == null ? DBNull.Value : (object)_infor.TeamId);
                cmd.Parameters.AddWithValue("@LineId", (object)_infor.LineId == null ? DBNull.Value : (object)_infor.LineId);
                cmd.Parameters.AddWithValue("@Status", (object)_infor.Status == null ? DBNull.Value : (object)_infor.Status);
                cmd.Parameters.AddWithValue("@Code", (_infor.Code == null ? DBNull.Value : (object)_infor.Code));
                cmd.Parameters.AddWithValue("@QRCode", (_infor.QRCode == null ? DBNull.Value : (object)_infor.QRCode));
                cmd.Parameters.AddWithValue("@Origin", _infor.Origin == null ? DBNull.Value : (object)_infor.Origin);
                cmd.Parameters.AddWithValue("@YearOfUse", (object)_infor.YearOfUse == null ? DBNull.Value : (object)_infor.YearOfUse);
                cmd.Parameters.AddWithValue("@InstallationPlace", _infor.InstallationPlace == null ? DBNull.Value : (object)_infor.InstallationPlace);
                cmd.Parameters.AddWithValue("@MaintenanceCycle", (object)_infor.MaintenanceCycle == null ? DBNull.Value : (object)_infor.MaintenanceCycle);
                cmd.Parameters.AddWithValue("@YearOfManufacture", (object)_infor.YearOfManufacture == null ? DBNull.Value : (object)_infor.YearOfManufacture);
                cmd.Parameters.AddWithValue("@Description2", (object)_infor.Description2 == null ? DBNull.Value : (object)_infor.Description2);
                cmd.Parameters.AddWithValue("@Properties", (object)_infor.Properties == null ? DBNull.Value : (object)_infor.Properties);
                cmd.Parameters.AddWithValue("@GetRangDong", (object)_infor.GetRangDong == null ? DBNull.Value : (object)_infor.GetRangDong);
                cmd.Parameters.AddWithValue("@MonthofUse", (object)_infor.MonthofUse == null ? DBNull.Value : (object)_infor.MonthofUse);
                cmd.Parameters.AddWithValue("@TimeReceived", (object)_infor.TimeReceived == null ? DBNull.Value : (object)_infor.TimeReceived);
                cmd.Parameters.AddWithValue("@TimeUse", (object)_infor.TimeUse == null ? DBNull.Value : (object)_infor.TimeUse);
                cmd.Parameters.AddWithValue("@IsImportant", (object)_infor.IsImportant == null ? DBNull.Value : (object)_infor.IsImportant);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                if (fileUpload == null || fileUpload.Length == 0)
                {
                    //KHông có ảnh chọn
                    cmd.Parameters.AddWithValue("@QRCodeImg", _infor.QRCodeImg == null ? DBNull.Value : (object)_infor.QRCodeImg);
                }
                else
                {
                    var rootFolder = Directory.GetCurrentDirectory();
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
                    var newFilePath = String.Format("{0}{1}", "/wwwroot/uploads/Images/QRCode/", newFileName).Replace("/", "\\");
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
                        if (_infor.QRCodeImg != "")
                        {
                            var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", "/wwwroot/uploads/Images/QRCode/", _infor.QRCodeImg).Replace("/", "\\"));
                            if (System.IO.File.Exists(filePathOld))
                            {
                                System.IO.File.Delete(filePathOld);
                            }
                        }
                    }
                    cmd.Parameters.AddWithValue("@QRCodeImg", newFileName);
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); 
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
        public MessageResults Edit(Device _infor, Microsoft.AspNetCore.Http.IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditDevice";

                cmd.Parameters.AddWithValue("@Id", _infor.Id);
                cmd.Parameters.AddWithValue("@Name", (_infor.Name == null ? DBNull.Value : (object)_infor.Name));
                cmd.Parameters.AddWithValue("@Description", _infor.Description == null ? DBNull.Value : (object)_infor.Description);
                cmd.Parameters.AddWithValue("@GroupID", (object)_infor.GroupID == null ? DBNull.Value : (object)_infor.GroupID);
                cmd.Parameters.AddWithValue("@BranchId", (object)_infor.BranchId == null ? DBNull.Value : (object)_infor.BranchId);
                cmd.Parameters.AddWithValue("@TeamId", (object)_infor.TeamId == null ? DBNull.Value : (object)_infor.TeamId);
                cmd.Parameters.AddWithValue("@LineId", (object)_infor.LineId == null ? DBNull.Value : (object)_infor.LineId);
                cmd.Parameters.AddWithValue("@Status", (object)_infor.Status == null ? DBNull.Value : (object)_infor.Status);
                cmd.Parameters.AddWithValue("@Code", (_infor.Code == null ? DBNull.Value : (object)_infor.Code));
                cmd.Parameters.AddWithValue("@QRCode", (_infor.QRCode == null ? DBNull.Value : (object)_infor.QRCode));
                cmd.Parameters.AddWithValue("@Origin", _infor.Origin == null ? DBNull.Value : (object)_infor.Origin);
                cmd.Parameters.AddWithValue("@YearOfUse", (object)_infor.YearOfUse == null ? DBNull.Value : (object)_infor.YearOfUse);
                cmd.Parameters.AddWithValue("@InstallationPlace", _infor.InstallationPlace == null ? DBNull.Value : (object)_infor.InstallationPlace);
                cmd.Parameters.AddWithValue("@MaintenanceCycle", (object)_infor.MaintenanceCycle == null ? DBNull.Value : (object)_infor.MaintenanceCycle);
                cmd.Parameters.AddWithValue("@YearOfManufacture", (object)_infor.YearOfManufacture == null ? DBNull.Value : (object)_infor.YearOfManufacture);
                cmd.Parameters.AddWithValue("@Description2", (object)_infor.Description2 == null ? DBNull.Value : (object)_infor.Description2);
                cmd.Parameters.AddWithValue("@Properties", (object)_infor.Properties == null ? DBNull.Value : (object)_infor.Properties);
                cmd.Parameters.AddWithValue("@MonthofUse", (object)_infor.MonthofUse == null ? DBNull.Value : (object)_infor.MonthofUse);
                cmd.Parameters.AddWithValue("@TimeReceived", (object)_infor.TimeReceived == null ? DBNull.Value : (object)_infor.TimeReceived);
                cmd.Parameters.AddWithValue("@TimeUse", (object)_infor.TimeUse == null ? DBNull.Value : (object)_infor.TimeUse);
                cmd.Parameters.AddWithValue("@GetRangDong", (object)_infor.GetRangDong == null ? DBNull.Value : (object)_infor.GetRangDong);
                cmd.Parameters.AddWithValue("@IsImportant", (object)_infor.IsImportant == null ? DBNull.Value : (object)_infor.IsImportant);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                if (fileUpload == null || fileUpload.Length == 0)
                {
                    //KHông có ảnh chọn
                    cmd.Parameters.AddWithValue("@QRCodeImg", _infor.QRCodeImg == null ? DBNull.Value : (object)_infor.QRCodeImg);
                }
                else
                {
                    var rootFolder = Directory.GetCurrentDirectory();
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
                    var newFilePath = String.Format("{0}{1}", "/wwwroot/uploads/Images/QRCode/", newFileName).Replace("/", "\\");
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
                        if (_infor.QRCodeImg != "")
                        {
                            var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", "/wwwroot/uploads/Images/QRCode/", _infor.QRCodeImg).Replace("/", "\\"));
                            if (System.IO.File.Exists(filePathOld))
                            {
                                System.IO.File.Delete(filePathOld);
                            }
                        }
                    }
                    cmd.Parameters.AddWithValue("@QRCodeImg", newFileName);
                }

                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); 
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
        public MessageResults AddAndEditDeviceSupplie(DeviceSupplie _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddAndEditDeviceSupplie";

                cmd.Parameters.AddWithValue("@Id", _infor.Id);
                cmd.Parameters.AddWithValue("@Description", _infor.Description == null ? DBNull.Value : (object)_infor.Description);
                cmd.Parameters.AddWithValue("@DeviceId", (object)_infor.DeviceId == null ? DBNull.Value : (object)_infor.DeviceId);
                cmd.Parameters.AddWithValue("@SupplieId", (object)_infor.SupplieId == null ? DBNull.Value : (object)_infor.SupplieId);
                cmd.Parameters.AddWithValue("@Quantity", (object)_infor.Quantity == null ? DBNull.Value : (object)_infor.Quantity);                
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
               
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); 
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

        // POST: DeviceController/Delete/5
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
                cmd.CommandText = "DeleteDevice";
                cmd.Parameters.AddWithValue("@Id", Id);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); 
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
        public IEnumerable<Device> GetDeviceByQRCode(string sQR)
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
                cmd.CommandText = "GetDeviceByQRCode";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@sQR", ((object)sQR == null ? DBNull.Value : (object)sQR));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _inforList = new List<Device>();
                while (sqlDataReader.Read())
                {
                    var _result = new Device();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["GroupID"] is DBNull))
                    {
                        _result.GroupID = int.Parse(String.Format("{0}", sqlDataReader["GroupID"]));
                    }
                    if (!(sqlDataReader["BranchId"] is DBNull))
                    {
                        _result.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                    }
                    if (!(sqlDataReader["TeamId"] is DBNull))
                    {
                        _result.TeamId = int.Parse(String.Format("{0}", sqlDataReader["TeamId"]));
                    }
                    if (!(sqlDataReader["LineId"] is DBNull))
                    {
                        _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
                    }
                    if (!(sqlDataReader["GetRangDong"] is DBNull))
                    {
                        _result.GetRangDong = int.Parse(String.Format("{0}", sqlDataReader["GetRangDong"]));
                    }
                    if (!(sqlDataReader["IsImportant"] is DBNull))
                    {
                        _result.IsImportant = int.Parse(String.Format("{0}", sqlDataReader["IsImportant"]));
                    }

                    _result.Name = sqlDataReader["Name"].ToString();
                    _result.Description = sqlDataReader["Description"].ToString();
                    if (!(sqlDataReader["Status"] is DBNull))
                    {
                        _result.Status = int.Parse(String.Format("{0}", sqlDataReader["Status"]));
                    }
                    if (!(sqlDataReader["YearOfUse"] is DBNull))
                    {
                        _result.YearOfUse = int.Parse(String.Format("{0}", sqlDataReader["YearOfUse"]));
                    }
                    if (!(sqlDataReader["MonthofUse"] is DBNull))
                    {
                        _result.MonthofUse = int.Parse(String.Format("{0}", sqlDataReader["MonthofUse"]));
                    }
                    _result.Code = sqlDataReader["Code"].ToString();
                    _result.QRCode = sqlDataReader["QRCode"].ToString();
                    _result.QRCodeImg = sqlDataReader["QRCodeImg"].ToString();
                    _result.Origin = sqlDataReader["Origin"].ToString();
                    _result.InstallationPlace = sqlDataReader["InstallationPlace"].ToString();
                    if (!(sqlDataReader["MaintenanceCycle"] is DBNull))
                    {
                        _result.MaintenanceCycle = int.Parse(String.Format("{0}", sqlDataReader["MaintenanceCycle"]));
                    }
                    if (!(sqlDataReader["YearOfManufacture"] is DBNull))
                    {
                        _result.YearOfManufacture = int.Parse(String.Format("{0}", sqlDataReader["YearOfManufacture"]));
                    }
                    _result.GroupName = sqlDataReader["GroupName"].ToString();
                    _result.BranchName = sqlDataReader["BranchName"].ToString();
                    _result.LineName = sqlDataReader["LineName"].ToString();
                    _result.TeamName = sqlDataReader["TeamName"].ToString();
                    _result.Description2 = sqlDataReader["Description2"].ToString();
                    if (!(sqlDataReader["Properties"] is DBNull)) _result.Properties = int.Parse(String.Format("{0}", sqlDataReader["Properties"]));
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    _result.TimeReceived = sqlDataReader["TimeReceived"].ToString();
                    _result.TimeUse = sqlDataReader["TimeUse"].ToString();
                    _inforList.Add(_result);
                }

                return _inforList;
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
        public IEnumerable<InforReportDetail> GetDeviceHistoryLocationByQRCode(string sQR)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            List<InforReportDetail> recordList = new List<InforReportDetail>();
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetDeviceHistoryLocationByQRCode";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@sQR", ((object)sQR == null ? DBNull.Value : (object)sQR));                
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    InforReportDetail sitem = new InforReportDetail();
                    if (sqlDataReader["Col1"] != DBNull.Value) sitem.Col1 = sqlDataReader["Col1"].ToString();
                    if (sqlDataReader["Col2"] != DBNull.Value) sitem.Col2 = sqlDataReader["Col2"].ToString();
                    if (sqlDataReader["Col3"] != DBNull.Value) sitem.Col3 = sqlDataReader["Col3"].ToString();
                    if (sqlDataReader["Col4"] != DBNull.Value) sitem.Col4 = sqlDataReader["Col4"].ToString();
                    if (sqlDataReader["Col5"] != DBNull.Value) sitem.Col4 = sqlDataReader["Col5"].ToString();
                    if (sqlDataReader["Col6"] != DBNull.Value) sitem.Col6 = sqlDataReader["Col6"].ToString();
                    if (sqlDataReader["Col7"] != DBNull.Value) sitem.Col7 = sqlDataReader["Col7"].ToString();
                    if (sqlDataReader["Col8"] != DBNull.Value) sitem.Col8 = sqlDataReader["Col8"].ToString();
                    if (sqlDataReader["Col9"] != DBNull.Value) sitem.Col9 = sqlDataReader["Col9"].ToString();
                    if (sqlDataReader["Col10"] != DBNull.Value) sitem.Col10 = sqlDataReader["Col10"].ToString();
                    if (sqlDataReader["Col11"] != DBNull.Value) sitem.Col11 = sqlDataReader["Col11"].ToString();
                    if (sqlDataReader["Col12"] != DBNull.Value) sitem.Col12 = sqlDataReader["Col12"].ToString();
                    recordList.Add(sitem);
                }
                return recordList;

            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return recordList;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<InforReportDetail> GetDeviceHistoryTroubleByQRCode(string sQR)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            List<InforReportDetail> recordList = new List<InforReportDetail>();
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetDeviceHistoryTroubleByQRCode";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@sQR", ((object)sQR == null ? DBNull.Value : (object)sQR));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    InforReportDetail sitem = new InforReportDetail();
                    sitem.Col1 = sqlDataReader["Col1"].ToString();
                    sitem.Col2 = sqlDataReader["Col2"].ToString();
                    sitem.Col3 = sqlDataReader["Col3"].ToString();
                    sitem.Col4 = sqlDataReader["Col4"].ToString();
                    sitem.Col5 = sqlDataReader["Col5"].ToString();
                    sitem.Col6 = sqlDataReader["Col6"].ToString();
                    sitem.Col7 = sqlDataReader["Col7"].ToString();
                    sitem.Col8 = sqlDataReader["Col8"].ToString();
                    sitem.Col9 = sqlDataReader["Col9"].ToString();
                    sitem.Col10 = sqlDataReader["Col10"].ToString();
                    sitem.Col11 = sqlDataReader["Col11"].ToString();
                    sitem.Col12 = sqlDataReader["Col12"].ToString();
                    sitem.Col13 = sqlDataReader["Col13"].ToString();
                    sitem.Col14 = sqlDataReader["Col14"].ToString();
                    sitem.Col15 = sqlDataReader["Col15"].ToString();
                    sitem.Col16 = sqlDataReader["Col16"].ToString();
                    sitem.Col17 = sqlDataReader["Col17"].ToString();
                    sitem.Col18 = sqlDataReader["Col18"].ToString();
                    sitem.Col19 = sqlDataReader["Col19"].ToString();
                    sitem.Col20 = sqlDataReader["Col20"].ToString();
                    recordList.Add(sitem);
                }
                return recordList;

            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return recordList;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<InforReportDetail> GetDeviceHistoryRepairByQRCode(string sQR)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            List<InforReportDetail> recordList = new List<InforReportDetail>();
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetDeviceHistoryRepairByQRCode";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@sQR", ((object)sQR == null ? DBNull.Value : (object)sQR));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    InforReportDetail sitem = new InforReportDetail();
                    if (sqlDataReader["Col1"] != DBNull.Value) sitem.Col1 = sqlDataReader["Col1"].ToString();
                    if (sqlDataReader["Col2"] != DBNull.Value) sitem.Col2 = sqlDataReader["Col2"].ToString();
                    if (sqlDataReader["Col3"] != DBNull.Value) sitem.Col3 = sqlDataReader["Col3"].ToString();
                    if (sqlDataReader["Col4"] != DBNull.Value) sitem.Col4 = sqlDataReader["Col4"].ToString();
                    if (sqlDataReader["Col5"] != DBNull.Value) sitem.Col4 = sqlDataReader["Col5"].ToString();
                    if (sqlDataReader["Col6"] != DBNull.Value) sitem.Col6 = sqlDataReader["Col6"].ToString();
                    if (sqlDataReader["Col7"] != DBNull.Value) sitem.Col7 = sqlDataReader["Col7"].ToString();
                    if (sqlDataReader["Col8"] != DBNull.Value) sitem.Col8 = sqlDataReader["Col8"].ToString();
                    if (sqlDataReader["Col9"] != DBNull.Value) sitem.Col9 = sqlDataReader["Col9"].ToString();
                    if (sqlDataReader["Col10"] != DBNull.Value) sitem.Col10 = sqlDataReader["Col10"].ToString();
                    if (sqlDataReader["Col11"] != DBNull.Value) sitem.Col11 = sqlDataReader["Col11"].ToString();
                    if (sqlDataReader["Col12"] != DBNull.Value) sitem.Col12 = sqlDataReader["Col12"].ToString();
                    recordList.Add(sitem);
                }
                return recordList;

            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return recordList;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults UpdateFileScan(int Id, IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "UpdateDeviceFileScan";
                if (fileUpload == null || fileUpload.Length == 0)
                {  //Không có file được chọn
                    _result.success = false; _result.Id = 0;
                    _result.message = "Không có file được chọn";
                    return _result;
                }
                else
                {
                    string sDir = String.Format("/wwwroot/uploads/FileScan/").Replace("/", "\\");
                    var rootFolder = Directory.GetCurrentDirectory();
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("fileScan_{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
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
                        ////Xóa File cũ
                        //if (department.FilePath != "")
                        //{
                        //    var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", sDir, department.FilePath).Replace("/", "\\"));
                        //    if (System.IO.File.Exists(filePathOld))
                        //    {
                        //        System.IO.File.Delete(filePathOld);
                        //    }
                        //}
                    }
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Parameters.AddWithValue("@FIleScan", newFileName);
                }

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());               
                return _result;
            }
            catch (Exception ex)
            {
                _result.success = false; _result.Id = 0;
                _result.message = "Thêm file không thành công";
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

        [HttpGet]
        ///PlanChangeActive <summary>
        /// </summary>
        /// <param name="_user"></param>
        /// <returns></returns>
        public MessageResults DeviceChangeStatus(string stype, int Id, int ActValue)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeviceChangeStatus";
                cmd.Parameters.AddWithValue("@Table", (stype == null ? DBNull.Value : (object)stype));
                cmd.Parameters.AddWithValue("@Id", ((object)Id == null ? DBNull.Value : (object)Id));
                cmd.Parameters.AddWithValue("@ActValue", ((object)ActValue == null ? DBNull.Value : (object)ActValue));
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
    }
}
