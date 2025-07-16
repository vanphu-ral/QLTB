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
using System.Reflection;
using System.Security.Claims;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    public class SupplieController : Controller
    {
        private readonly ILogger<SupplieController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public SupplieController(ILogger<SupplieController> logger, IConfiguration configuration)
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
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Quản lý vật tư, phụ tùng" }, ConnectionString);
            return View();
        }

        public IEnumerable<Supplie> Get()
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
                cmd.CommandText = "GetSupplie";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _deviceList = new List<Supplie>();
                while (sqlDataReader.Read())
                {
                    var _result = new Supplie();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["GroupID"] is DBNull))
                    {
                        _result.GroupID = int.Parse(String.Format("{0}", sqlDataReader["GroupID"]));
                    }
                    if (!(sqlDataReader["LineId"] is DBNull))
                    {
                        _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
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
                    _result.SupplieCodeName = sqlDataReader["supplieCodeName"].ToString();
                    _result.Code = sqlDataReader["Code"].ToString();
                    _result.Unit = sqlDataReader["Unit"].ToString();
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
                    if (!(sqlDataReader["NumberTotal"] is DBNull))
                    {
                        _result.NumberTotal = int.Parse(String.Format("{0}", sqlDataReader["NumberTotal"]));
                    }
                    _result.GroupName = sqlDataReader["GroupName"].ToString();
                    _result.LineName = sqlDataReader["LineName"].ToString();
                    _result.QRCode = sqlDataReader["QRCode"].ToString();
                    _result.QRCodeImg = sqlDataReader["QRCodeImg"].ToString();
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    _result.FileScan = sqlDataReader["FileScan"].ToString();

                    _deviceList.Add(_result);
                }

                return _deviceList;
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
        public IEnumerable<Supplie> GetSupplieById(int Id)
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
                cmd.CommandText = "GetSupplieById";
                cmd.Parameters.AddWithValue("@Id", ((object)Id == null ? DBNull.Value : (object)Id));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _deviceList = new List<Supplie>();
                while (sqlDataReader.Read())
                {
                    var _result = new Supplie();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["GroupID"] is DBNull))
                    {
                        _result.GroupID = int.Parse(String.Format("{0}", sqlDataReader["GroupID"]));
                    }
                    if (!(sqlDataReader["LineId"] is DBNull))
                    {
                        _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
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
                    _result.SupplieCodeName = sqlDataReader["supplieCodeName"].ToString();
                    _result.Code = sqlDataReader["Code"].ToString();
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
                    if (!(sqlDataReader["NumberTotal"] is DBNull))
                    {
                        _result.NumberTotal = int.Parse(String.Format("{0}", sqlDataReader["NumberTotal"]));
                    }
                    _result.GroupName = sqlDataReader["GroupName"].ToString();
                    _result.LineName = sqlDataReader["LineName"].ToString();
                    _result.QRCode = sqlDataReader["QRCode"].ToString();
                    _result.QRCodeImg = sqlDataReader["QRCodeImg"].ToString();
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    _result.FileScan = sqlDataReader["FileScan"].ToString();
                    _deviceList.Add(_result);
                }

                return _deviceList;
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
        public MessageResults Add(Supplie _device, Microsoft.AspNetCore.Http.IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddSupplie";

                cmd.Parameters.AddWithValue("@Name", (_device.Name == null ? DBNull.Value : (object)_device.Name));
                cmd.Parameters.AddWithValue("@Description", _device.Description == null ? DBNull.Value : (object)_device.Description);
                cmd.Parameters.AddWithValue("@GroupID", (String.IsNullOrEmpty(_device.GroupID.ToString()) ? DBNull.Value : (object)_device.GroupID));
                cmd.Parameters.AddWithValue("@LineId", (String.IsNullOrEmpty(_device.LineId.ToString()) ? DBNull.Value : (object)_device.LineId));
                cmd.Parameters.AddWithValue("@Status", (String.IsNullOrEmpty(_device.Status.ToString()) ? DBNull.Value : (object)_device.Status));
                cmd.Parameters.AddWithValue("@Code", (_device.Code == null ? DBNull.Value : (object)_device.Code));
                cmd.Parameters.AddWithValue("@Unit", (_device.Unit == null ? DBNull.Value : (object)_device.Unit));
                cmd.Parameters.AddWithValue("@Origin", _device.Origin == null ? DBNull.Value : (object)_device.Origin);
                cmd.Parameters.AddWithValue("@YearOfUse", (String.IsNullOrEmpty(_device.YearOfUse.ToString()) ? DBNull.Value : (object)_device.YearOfUse));
                cmd.Parameters.AddWithValue("@InstallationPlace", _device.InstallationPlace == null ? DBNull.Value : (object)_device.InstallationPlace);
                cmd.Parameters.AddWithValue("@MaintenanceCycle", (String.IsNullOrEmpty(_device.MaintenanceCycle.ToString()) ? DBNull.Value : (object)_device.MaintenanceCycle));
                cmd.Parameters.AddWithValue("@YearOfManufacture", (String.IsNullOrEmpty(_device.YearOfManufacture.ToString()) ? DBNull.Value : (object)_device.YearOfManufacture));
                cmd.Parameters.AddWithValue("@NumberTotal", (String.IsNullOrEmpty(_device.NumberTotal.ToString()) ? DBNull.Value : (object)_device.NumberTotal));
                cmd.Parameters.AddWithValue("@QRCode", (_device.QRCode == null ? DBNull.Value : (object)_device.QRCode));
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                if (fileUpload == null || fileUpload.Length == 0)
                {
                    //KHông có ảnh chọn
                    cmd.Parameters.AddWithValue("@QRCodeImg", _device.QRCodeImg == null ? DBNull.Value : (object)_device.QRCodeImg);
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
                        if (_device.QRCodeImg != "")
                        {
                            var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", "/wwwroot/uploads/Images/QRCode/", _device.QRCodeImg).Replace("/", "\\"));
                            if (System.IO.File.Exists(filePathOld))
                            {
                                System.IO.File.Delete(filePathOld);
                            }
                        }
                    }
                    cmd.Parameters.AddWithValue("@QRCodeImg", newFileName);
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
        public MessageResults Edit(Supplie _device, Microsoft.AspNetCore.Http.IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditSupplie";

                cmd.Parameters.AddWithValue("@Id", _device.Id);
                cmd.Parameters.AddWithValue("@Name", (_device.Name == null ? DBNull.Value : (object)_device.Name));
                cmd.Parameters.AddWithValue("@Description", _device.Description == null ? DBNull.Value : (object)_device.Description);
                cmd.Parameters.AddWithValue("@GroupID", (String.IsNullOrEmpty(_device.GroupID.ToString()) ? DBNull.Value : (object)_device.GroupID));
                cmd.Parameters.AddWithValue("@LineId", (String.IsNullOrEmpty(_device.LineId.ToString()) ? DBNull.Value : (object)_device.LineId));
                cmd.Parameters.AddWithValue("@Status", (String.IsNullOrEmpty(_device.Status.ToString()) ? DBNull.Value : (object)_device.Status));
                cmd.Parameters.AddWithValue("@Code", (_device.Code == null ? DBNull.Value : (object)_device.Code));
                cmd.Parameters.AddWithValue("@Unit", (_device.Unit == null ? DBNull.Value : (object)_device.Unit));
                cmd.Parameters.AddWithValue("@Origin", _device.Origin == null ? DBNull.Value : (object)_device.Origin);
                cmd.Parameters.AddWithValue("@YearOfUse", (String.IsNullOrEmpty(_device.YearOfUse.ToString()) ? DBNull.Value : (object)_device.YearOfUse));
                cmd.Parameters.AddWithValue("@InstallationPlace", _device.InstallationPlace == null ? DBNull.Value : (object)_device.InstallationPlace);
                cmd.Parameters.AddWithValue("@MaintenanceCycle", (String.IsNullOrEmpty(_device.MaintenanceCycle.ToString()) ? DBNull.Value : (object)_device.MaintenanceCycle));
                cmd.Parameters.AddWithValue("@YearOfManufacture", (String.IsNullOrEmpty(_device.YearOfManufacture.ToString()) ? DBNull.Value : (object)_device.YearOfManufacture));
                cmd.Parameters.AddWithValue("@NumberTotal", (String.IsNullOrEmpty(_device.NumberTotal.ToString()) ? DBNull.Value : (object)_device.NumberTotal));
                cmd.Parameters.AddWithValue("@QRCode", (_device.QRCode == null ? DBNull.Value : (object)_device.QRCode));
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                if (fileUpload == null || fileUpload.Length == 0)
                {
                    //KHông có ảnh chọn
                    cmd.Parameters.AddWithValue("@QRCodeImg", _device.QRCodeImg == null ? DBNull.Value : (object)_device.QRCodeImg);
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
                        if (_device.QRCodeImg != "")
                        {
                            var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", "/wwwroot/uploads/Images/QRCode/", _device.QRCodeImg).Replace("/", "\\"));
                            if (System.IO.File.Exists(filePathOld))
                            {
                                System.IO.File.Delete(filePathOld);
                            }
                        }
                    }
                    cmd.Parameters.AddWithValue("@QRCodeImg", newFileName);
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
        // POST: SupplieController/Delete/5
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
                cmd.CommandText = "DeleteSupplie";
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
                cmd.CommandText = "UpdateSupplieFileScan";
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
    }
}
