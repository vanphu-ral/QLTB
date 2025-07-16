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
    public class TroubleReportController : Controller
    {
        private readonly ILogger<TroubleReportController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public TroubleReportController(ILogger<TroubleReportController> logger, IConfiguration configuration)
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
            BaseService.AddUserActive(currentUserID, IpAddress, 
                new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Biên bản nghiệm thu sự cố" }, ConnectionString);
            return View();
        }
        public IEnumerable<TroubleReport> Get()
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                ClaimsPrincipal currentUser = this.User;
                string currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetTroubleReport";
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@year", 2022);
                cmd.Parameters.AddWithValue("@BranchId", 2);
                cmd.Parameters.AddWithValue("@FactoryId", 1);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _deviceList = new List<TroubleReport>();
                while (sqlDataReader.Read())
                {
                    var _result = new TroubleReport();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["TroubleId"] is DBNull))
                    {
                        _result.TroubleId = int.Parse(String.Format("{0}", sqlDataReader["TroubleId"]));
                    }
                    if (!(sqlDataReader["FactoryId"] is DBNull))
                    {
                        _result.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                    }
                    if (!(sqlDataReader["BranchId"] is DBNull))
                    {
                        _result.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                    }
                    _result.AddressTrouble = sqlDataReader["AddressTrouble"].ToString();
                    _result.DateTrouble = sqlDataReader["DateTrouble"].ToString();
                    _result.DescriptionTrouble = sqlDataReader["DescriptionTrouble"].ToString();
                    _result.ReasonTrouble = sqlDataReader["ReasonTrouble"].ToString();
                    _result.HandlingMeansure = sqlDataReader["HandlingMeansure"].ToString();
                    _result.UserAct = sqlDataReader["UserAct"].ToString();
                    _result.DateDone = sqlDataReader["DateDone"].ToString();
                    _result.UserPart = sqlDataReader["UserPart"].ToString();
                    _result.UnitPart = sqlDataReader["UnitPart"].ToString();
                    _result.UserManager = sqlDataReader["UserManager"].ToString();
                    _result.UserBranch = sqlDataReader["UserBranch"].ToString();
                    _result.UserAuthority = sqlDataReader["UserAuthority"].ToString();
                    _result.ReportNumber = sqlDataReader["ReportNumber"].ToString();
                    _result.FileScan = sqlDataReader["FileScan"].ToString();
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }

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
        public List<TroubleReport> GetTroubleReport(int year, Int64 BranchId, Int64 FactoryId)
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
                cmd.CommandText = "GetTroubleReport";
                cmd.Parameters.AddWithValue("@year", year);
                cmd.Parameters.AddWithValue("@BranchId", BranchId);
                cmd.Parameters.AddWithValue("@FactoryId", FactoryId);
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _deviceList = new List<TroubleReport>();
                while (sqlDataReader.Read())
                {
                    var _result = new TroubleReport();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["TroubleId"] is DBNull))
                    {
                        _result.TroubleId = int.Parse(String.Format("{0}", sqlDataReader["TroubleId"]));
                    }
                    if (!(sqlDataReader["FactoryId"] is DBNull))
                    {
                        _result.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                    }
                    if (!(sqlDataReader["BranchId"] is DBNull))
                    {
                        _result.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                    }
                    _result.AddressTrouble = sqlDataReader["AddressTrouble"].ToString();
                    _result.DateTrouble = sqlDataReader["DateTrouble"].ToString();
                    _result.DescriptionTrouble = sqlDataReader["DescriptionTrouble"].ToString();
                    _result.ReasonTrouble = sqlDataReader["ReasonTrouble"].ToString();
                    _result.HandlingMeansure = sqlDataReader["HandlingMeansure"].ToString();
                    _result.UserAct = sqlDataReader["UserAct"].ToString();
                    _result.DateDone = sqlDataReader["DateDone"].ToString();
                    _result.UserPart = sqlDataReader["UserPart"].ToString();
                    _result.UnitPart = sqlDataReader["UnitPart"].ToString();
                    _result.UserManager = sqlDataReader["UserManager"].ToString();
                    _result.UserBranch = sqlDataReader["UserBranch"].ToString();
                    _result.UserAuthority = sqlDataReader["UserAuthority"].ToString();
                    _result.FileScan = sqlDataReader["FileScan"].ToString();
                    _result.ReportNumber = sqlDataReader["ReportNumber"].ToString();
                    
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }

                    _deviceList.Add(_result);
                    _Nlog.Info(_result.Id.ToString());
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
        public MessageResults Add(TroubleReport _device)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddPlanDailyTroubleReport";
                //DD/MM/YYYY HH:mm:ss => To //2022-04-21 15:49:30.017
                cmd.Parameters.AddWithValue("@TroubleId", ((object)_device.TroubleId == null ? DBNull.Value : (object)_device.TroubleId));
                cmd.Parameters.AddWithValue("@AddressTrouble", (object)_device.AddressTrouble == null ? DBNull.Value : (object)_device.AddressTrouble);
                cmd.Parameters.AddWithValue("@DateTrouble", _device.DateTrouble == null ? DBNull.Value : BaseService.ConvertStringToDateSave((object)_device.DateTrouble));
                _Nlog.Info(String.Format("{0},{1}", BaseService.ConvertStringToDateSave((object)_device.DateTrouble), _device.UnitPart));
                cmd.Parameters.AddWithValue("@DescriptionTrouble", _device.DescriptionTrouble == null ? DBNull.Value : (object)_device.DescriptionTrouble);
                cmd.Parameters.AddWithValue("@ReasonTrouble", _device.ReasonTrouble == null ? DBNull.Value : (object)_device.ReasonTrouble);
                cmd.Parameters.AddWithValue("@HandlingMeansure", (_device.HandlingMeansure == null ? DBNull.Value : (object)_device.HandlingMeansure));
                cmd.Parameters.AddWithValue("@UserAct", _device.UserAct == null ? DBNull.Value : (object)_device.UserAct);
                cmd.Parameters.AddWithValue("@DateDone", _device.DateDone == null ? DBNull.Value : BaseService.ConvertStringToDateSave((object)_device.DateTrouble));
                cmd.Parameters.AddWithValue("@UserPart", _device.UnitPart == null ? DBNull.Value : (object)_device.UserPart);
                cmd.Parameters.AddWithValue("@UnitPart", _device.UnitPart == null ? DBNull.Value : (object)_device.UnitPart);
                cmd.Parameters.AddWithValue("@FactoryId", ((object)_device.FactoryId == null ? DBNull.Value : (object)_device.FactoryId));
                cmd.Parameters.AddWithValue("@BranchId", ((object)_device.BranchId == null ? DBNull.Value : (object)_device.BranchId));
                cmd.Parameters.AddWithValue("@year", ((object)_device.year == null ? DBNull.Value : (object)_device.year));
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
        public MessageResults Edit(TroubleReport _device)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditTroubleReport";

                cmd.Parameters.AddWithValue("@Id", _device.Id);
                cmd.Parameters.AddWithValue("@TroubleId", ((object)_device.TroubleId == null ? DBNull.Value : (object)_device.TroubleId));
                cmd.Parameters.AddWithValue("@AddressTrouble", _device.AddressTrouble == null ? DBNull.Value : (object)_device.AddressTrouble);
                cmd.Parameters.AddWithValue("@DateTrouble", (_device.DateTrouble == null ? DBNull.Value : BaseService.ConvertStringToDateSave((object)_device.DateTrouble)));
                cmd.Parameters.AddWithValue("@DescriptionTrouble", (_device.DescriptionTrouble == null ? DBNull.Value : (object)_device.DescriptionTrouble));
                cmd.Parameters.AddWithValue("@ReasonTrouble", (_device.ReasonTrouble == null ? DBNull.Value : (object)_device.ReasonTrouble));
                cmd.Parameters.AddWithValue("@HandlingMeansure", (_device.HandlingMeansure == null ? DBNull.Value : (object)_device.HandlingMeansure));
                cmd.Parameters.AddWithValue("@UserAct", (_device.UserAct == null ? DBNull.Value : (object)_device.UserAct));
                cmd.Parameters.AddWithValue("@DateDone", (_device.DateDone == null ? DBNull.Value : BaseService.ConvertStringToDateSave((object)_device.DateTrouble)));
                cmd.Parameters.AddWithValue("@UserPart", (_device.UserPart == null ? DBNull.Value : (object)_device.UserPart));
                cmd.Parameters.AddWithValue("@UnitPart", (_device.UnitPart == null ? DBNull.Value : (object)_device.UnitPart));

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
        // POST: TroubleReportController/Delete/5
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
                cmd.CommandText = "DeleteTroubleReport";
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
                cmd.CommandText = "UpdatePlanDailyTroubleReportFileScan";
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
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                BaseService.AddUserActive(currentUserID, IpAddress, _result, ConnectionString);
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
