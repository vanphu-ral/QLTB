using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis.Operations;
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
    public class PlanPeriodicReportController : Controller
    {
        //private readonly ILogger<PlanPeriodicReportController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public PlanPeriodicReportController(ILogger<PlanPeriodicReportController> logger, IConfiguration configuration)
        {
            //_logger = logger;
            Configuration = configuration;
        }
        private string currentUserID;
        private string IpAddress;
        public IActionResult Index()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;

            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Biên bản nghiệm thu thiết bị" }, ConnectionString);
            return View();
        }

        [HttpGet]
        public IEnumerable<PlanPeriodicReport> GetPlanPeriodicReports(Int64 PlanDeviceId)
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
                cmd.CommandText = "GetPlanPeriodicReports";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@PlanDeviceId", (object)PlanDeviceId != null ? PlanDeviceId : 0);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanPeriodicReport>();
                while (sqlDataReader.Read())
                {
                    var _result = new PlanPeriodicReport();

                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["PlanDeviceId"] is DBNull))
                    {
                        _result.PlanDeviceId = int.Parse(String.Format("{0}", sqlDataReader["PlanDeviceId"]));
                    }
                    if (!(sqlDataReader["TimeDelivery"] is DBNull))
                    {
                        _result.TimeDelivery = int.Parse(String.Format("{0}", sqlDataReader["TimeDelivery"]));
                    }
                    _result.ReportNumberCode = sqlDataReader["ReportNumberCode"].ToString();
                    _result.ReportDate = sqlDataReader["ReportDate"].ToString();
                    _result.WorkContent = sqlDataReader["WorkContent"].ToString();
                    _result.DepartmentAct = sqlDataReader["DepartmentAct"].ToString();
                    _result.WorkArising = sqlDataReader["WorkArising"].ToString();
                    _result.OperatingResults = sqlDataReader["OperatingResults"].ToString();
                    _result.ActionMore = sqlDataReader["ActionMore"].ToString();
                    _result.Responsibility = sqlDataReader["Responsibility"].ToString();
                    _result.Duration = sqlDataReader["Duration"].ToString();
                    _result.UserSCBD = sqlDataReader["UserSCBD"].ToString();
                    _result.UserBranch = sqlDataReader["UserBranch"].ToString();
                    _result.UserDepartment = sqlDataReader["UserDepartment"].ToString();
                    _result.UserAuthority = sqlDataReader["UserAuthority"].ToString();
                    _result.BranchName = sqlDataReader["BranchName"].ToString();
                    _result.FactoryName = sqlDataReader["FactoryName"].ToString();
                    _result.DeviceName = sqlDataReader["DeviceName"].ToString();
                    _result.TeamName = sqlDataReader["TeamName"].ToString();
                    _result.FileScan = sqlDataReader["FileScan"].ToString();

                    if (!(sqlDataReader["RequestSafe"] is DBNull)) _result.RequestSafe = int.Parse(String.Format("{0}", sqlDataReader["RequestSafe"]));
                    if (!(sqlDataReader["RequestQuality"] is DBNull)) _result.RequestQuality = int.Parse(String.Format("{0}", sqlDataReader["RequestQuality"]));
                    if (!(sqlDataReader["RequestProductivity"] is DBNull)) _result.RequestProductivity = int.Parse(String.Format("{0}", sqlDataReader["RequestProductivity"]));

                    if (!(sqlDataReader["StartDate"] is DBNull))
                    {
                        _result.StartDate = DateTime.Parse(String.Format("{0}", sqlDataReader["StartDate"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["EndDate"] is DBNull))
                    {
                        _result.EndDate = DateTime.Parse(String.Format("{0}", sqlDataReader["EndDate"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["ActStartDate"] is DBNull))
                    {
                        _result.ActStartDate = DateTime.Parse(String.Format("{0}", sqlDataReader["ActStartDate"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["ActEndDate"] is DBNull))
                    {
                        _result.ActEndDate = DateTime.Parse(String.Format("{0}", sqlDataReader["ActEndDate"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    PlanningList.Add(_result);
                }
                return PlanningList;
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
        public IEnumerable<PlanPeriodicReport> GetPlanPeriodicReportsByDeviceIdAndYear(int DeviceId, int PlanYear)
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
                cmd.CommandText = "GetPlanPeriodicReportsByDeviceIdAndYear";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@DeviceId", (object)DeviceId != null ? DeviceId : 0);
                cmd.Parameters.AddWithValue("@PlanYear", (object)PlanYear != null ? PlanYear : 0);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanPeriodicReport>();
                while (sqlDataReader.Read())
                {
                    var _result = new PlanPeriodicReport();

                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["PlanDeviceId"] is DBNull))
                    {
                        _result.PlanDeviceId = int.Parse(String.Format("{0}", sqlDataReader["PlanDeviceId"]));
                    }
                    if (!(sqlDataReader["TimeDelivery"] is DBNull))
                    {
                        _result.TimeDelivery = int.Parse(String.Format("{0}", sqlDataReader["TimeDelivery"]));
                    }
                    _result.ReportNumberCode = sqlDataReader["ReportNumberCode"].ToString();
                    _result.ReportDate = sqlDataReader["ReportDate"].ToString();
                    _result.WorkContent = sqlDataReader["WorkContent"].ToString();
                    _result.DepartmentAct = sqlDataReader["DepartmentAct"].ToString();
                    _result.WorkArising = sqlDataReader["WorkArising"].ToString();
                    _result.OperatingResults = sqlDataReader["OperatingResults"].ToString();
                    _result.ActionMore = sqlDataReader["ActionMore"].ToString();
                    _result.Responsibility = sqlDataReader["Responsibility"].ToString();
                    _result.Duration = sqlDataReader["Duration"].ToString();
                    _result.UserSCBD = sqlDataReader["UserSCBD"].ToString();
                    _result.UserBranch = sqlDataReader["UserBranch"].ToString();
                    _result.UserDepartment = sqlDataReader["UserDepartment"].ToString();
                    _result.UserAuthority = sqlDataReader["UserAuthority"].ToString();
                    _result.BranchName = sqlDataReader["BranchName"].ToString();
                    _result.FactoryName = sqlDataReader["FactoryName"].ToString();
                    _result.DeviceName = sqlDataReader["DeviceName"].ToString();
                    _result.TeamName = sqlDataReader["TeamName"].ToString();
                    _result.FileScan = sqlDataReader["FileScan"].ToString();
                    if (!(sqlDataReader["RequestSafe"] is DBNull)) _result.RequestSafe = int.Parse(String.Format("{0}", sqlDataReader["RequestSafe"]));
                    if (!(sqlDataReader["RequestQuality"] is DBNull)) _result.RequestQuality = int.Parse(String.Format("{0}", sqlDataReader["RequestQuality"]));
                    if (!(sqlDataReader["RequestProductivity"] is DBNull)) _result.RequestProductivity = int.Parse(String.Format("{0}", sqlDataReader["RequestProductivity"]));

                    if (!(sqlDataReader["StartDate"] is DBNull))
                    {
                        _result.StartDate = DateTime.Parse(String.Format("{0}", sqlDataReader["StartDate"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["EndDate"] is DBNull))
                    {
                        _result.EndDate = DateTime.Parse(String.Format("{0}", sqlDataReader["EndDate"])).ToString("dd/MM/yyyy HH:mm");
                    }
if (!(sqlDataReader["ActStartDate"] is DBNull))
                    {
                        _result.ActStartDate = DateTime.Parse(String.Format("{0}", sqlDataReader["ActStartDate"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["ActEndDate"] is DBNull))
                    {
                        _result.ActEndDate = DateTime.Parse(String.Format("{0}", sqlDataReader["ActEndDate"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    PlanningList.Add(_result);
                }
                return PlanningList;
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
        public IEnumerable<PlanPeriodicReport> GetPlanPeriodicReportsByBranchIdAndYear(int BranchId, int PlanYear)
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
                cmd.CommandText = "GetPlanPeriodicReportsByBranchIdAndYear";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@PlanYear", (object)PlanYear != null ? PlanYear : 0);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanPeriodicReport>();
                while (sqlDataReader.Read())
                {
                    var _result = new PlanPeriodicReport();

                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["PlanDeviceId"] is DBNull))
                    {
                        _result.PlanDeviceId = int.Parse(String.Format("{0}", sqlDataReader["PlanDeviceId"]));
                    }
                    if (!(sqlDataReader["TimeDelivery"] is DBNull))
                    {
                        _result.TimeDelivery = int.Parse(String.Format("{0}", sqlDataReader["TimeDelivery"]));
                    }
                    _result.ReportNumberCode = sqlDataReader["ReportNumberCode"].ToString();
                    _result.ReportDate = sqlDataReader["ReportDate"].ToString();
                    _result.WorkContent = sqlDataReader["WorkContent"].ToString();
                    _result.DepartmentAct = sqlDataReader["DepartmentAct"].ToString();
                    _result.WorkArising = sqlDataReader["WorkArising"].ToString();
                    _result.OperatingResults = sqlDataReader["OperatingResults"].ToString();
                    _result.ActionMore = sqlDataReader["ActionMore"].ToString();
                    _result.Responsibility = sqlDataReader["Responsibility"].ToString();
                    _result.Duration = sqlDataReader["Duration"].ToString();
                    _result.UserSCBD = sqlDataReader["UserSCBD"].ToString();
                    _result.UserBranch = sqlDataReader["UserBranch"].ToString();
                    _result.UserDepartment = sqlDataReader["UserDepartment"].ToString();
                    _result.UserAuthority = sqlDataReader["UserAuthority"].ToString();
                    _result.BranchName = sqlDataReader["BranchName"].ToString();
                    _result.FactoryName = sqlDataReader["FactoryName"].ToString();
                    _result.DeviceName = sqlDataReader["DeviceName"].ToString();
                    _result.TeamName = sqlDataReader["TeamName"].ToString();
                    _result.FileScan = sqlDataReader["FileScan"].ToString();
                    if (!(sqlDataReader["RequestSafe"] is DBNull)) _result.RequestSafe = int.Parse(String.Format("{0}", sqlDataReader["RequestSafe"]));
                    if (!(sqlDataReader["RequestQuality"] is DBNull)) _result.RequestQuality = int.Parse(String.Format("{0}", sqlDataReader["RequestQuality"]));
                    if (!(sqlDataReader["RequestProductivity"] is DBNull)) _result.RequestProductivity = int.Parse(String.Format("{0}", sqlDataReader["RequestProductivity"]));

                    if (!(sqlDataReader["StartDate"] is DBNull))
                    {
                        _result.StartDate = DateTime.Parse(String.Format("{0}", sqlDataReader["StartDate"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["EndDate"] is DBNull))
                    {
                        _result.EndDate = DateTime.Parse(String.Format("{0}", sqlDataReader["EndDate"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["ActStartDate"] is DBNull))
                    {
                        _result.ActStartDate = DateTime.Parse(String.Format("{0}", sqlDataReader["ActStartDate"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["ActEndDate"] is DBNull))
                    {
                        _result.ActEndDate = DateTime.Parse(String.Format("{0}", sqlDataReader["ActEndDate"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    PlanningList.Add(_result);
                }
                return PlanningList;
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
        public MessageResults EditPlanPeriodicReport(PlanPeriodicReport _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditPlanPeriodicReport";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@PlanDeviceId", ((object)_infor.PlanDeviceId == null ? DBNull.Value : (object)_infor.PlanDeviceId));
                cmd.Parameters.AddWithValue("@TimeDelivery", (_infor.TimeDelivery == null ? DBNull.Value : (object)_infor.TimeDelivery));
                cmd.Parameters.AddWithValue("@WorkArising", (_infor.WorkArising == null ? DBNull.Value : (object)_infor.WorkArising));
                cmd.Parameters.AddWithValue("@OperatingResults", ((object)_infor.OperatingResults == null ? DBNull.Value : (object)_infor.OperatingResults));
                cmd.Parameters.AddWithValue("@ActionMore", ((object)_infor.ActionMore == null ? DBNull.Value : (object)_infor.ActionMore));
                cmd.Parameters.AddWithValue("@Responsibility", ((object)_infor.Responsibility == null ? DBNull.Value : (object)_infor.Responsibility));
                cmd.Parameters.AddWithValue("@Duration", ((object)_infor.Duration == null ? DBNull.Value : (object)_infor.Duration));
                cmd.Parameters.AddWithValue("@StartDate", ((object)_infor.StartDate == null ? DBNull.Value : (object)_infor.StartDate));
                cmd.Parameters.AddWithValue("@EndDate", ((object)_infor.EndDate == null ? DBNull.Value : (object)_infor.EndDate));
                cmd.Parameters.AddWithValue("@ActStartDate", ((object)_infor.ActStartDate == null ? DBNull.Value : (object)_infor.ActStartDate));
                cmd.Parameters.AddWithValue("@ActEndDate", ((object)_infor.ActEndDate == null ? DBNull.Value : (object)_infor.ActEndDate));
                cmd.Parameters.AddWithValue("@RequestSafe", ((object)_infor.RequestSafe == null ? DBNull.Value : (object)_infor.RequestSafe));
                cmd.Parameters.AddWithValue("@RequestQuality", ((object)_infor.RequestQuality == null ? DBNull.Value : (object)_infor.RequestQuality));
                cmd.Parameters.AddWithValue("@RequestProductivity", ((object)_infor.RequestProductivity == null ? DBNull.Value : (object)_infor.RequestProductivity));
                cmd.Parameters.AddWithValue("@UserID", currentUserID);
                cmd.Parameters.AddWithValue("@Id", ((object)_infor.Id == null ? DBNull.Value : (object)_infor.Id));
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
                cmd.CommandText = "UpdatePlanPeriodicReportFileScan";
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
