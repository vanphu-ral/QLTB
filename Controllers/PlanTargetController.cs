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
    public class PlanTargetController : Controller
    {
        private readonly ILogger<PlanTargetController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public PlanTargetController(ILogger<PlanTargetController> logger, IConfiguration configuration)
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
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;

            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, 
                new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Quản lý kế hoạch mục tiêu thiết bị" }, ConnectionString);
            return View();
        }
        public IEnumerable<PlanTarget> Get()
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
                cmd.CommandText = "GetPlanTarget";

                cmd.Parameters.AddWithValue("@year", 0);
                cmd.Parameters.AddWithValue("@BranchId", 0);
                cmd.Parameters.AddWithValue("@FactoryId", 0);
                cmd.Parameters.AddWithValue("@UserId", 0);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanTarget>();
                int indexItem = 0;
                while (sqlDataReader.Read())
                {
                    var _result = new PlanTarget();
                    if (indexItem == 0)
                    {
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                    }
                    else
                    {
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        if (!(sqlDataReader["PlanYear"] is DBNull)) _result.Year = int.Parse(String.Format("{0}", sqlDataReader["PlanYear"]));
                        if (!(sqlDataReader["FactoryId"] is DBNull)) _result.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                        if (!(sqlDataReader["BranchId"] is DBNull)) _result.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                        _result.DatePlan = sqlDataReader["DatePlan"].ToString();
                        _result.UserPlan = sqlDataReader["UserPlan"].ToString();
                        _result.DateBranch = sqlDataReader["DateBranch"].ToString();
                        _result.UserBranch = sqlDataReader["UserBranch"].ToString();
                        _result.DateFactory = sqlDataReader["DateFactory"].ToString();
                        _result.UserFactory = sqlDataReader["UserFactory"].ToString();
                        _result.DateAuthority = sqlDataReader["DateAuthority"].ToString();
                        _result.UserAuthority = sqlDataReader["UserAuthority"].ToString();
                        _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                        _result.Targets = sqlDataReader["Targets"].ToString();
                        _result.BranchName = sqlDataReader["BranchName"].ToString();
                        _result.FactoryName = sqlDataReader["FactoryName"].ToString();
                        _result.UserNameAuthority = sqlDataReader["UserNameAuthority"].ToString();
                        _result.UserNameBranch = sqlDataReader["UserNameBranch"].ToString();
                        _result.UserNameFactory = sqlDataReader["UserNameFactory"].ToString();
                        _result.UserNamePlan = sqlDataReader["UserNamePlan"].ToString();
                        _result.FileScan = sqlDataReader["FileScan"].ToString();
                        if (!(sqlDataReader["TimeCreated"] is DBNull))
                        {
                            _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        if (!(sqlDataReader["TimeModified"] is DBNull))
                        {
                            _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        //_result.PlanTargetDeviceList = BaseService.PlanTargetService.GetPlanTargetDeviceList(_result.Id, ConnectionString);
                    }
                    PlanningList.Add(_result);
                    indexItem++;
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
        public PlanTarget GetPlanTarget(Int64 year, Int64 BranchId, Int64 FactoryId)
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
                cmd.CommandText = "GetPlanTarget";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _result = new PlanTarget();
                int indexItem = 0;
                List<PlanTargetDevice> _listplanDevice = new List<PlanTargetDevice>();
                while (sqlDataReader.Read())
                {
                    if (indexItem == 0)
                    {
                        if (!(sqlDataReader["PlanIdOrg"] is DBNull))
                        {
                            _result.PlanIdOrg = int.Parse(String.Format("{0}", sqlDataReader["PlanIdOrg"]));
                        }
                        if (!(sqlDataReader["Number"] is DBNull))
                        {
                            _result.Number = int.Parse(String.Format("{0}", sqlDataReader["Number"]));
                        }
                        if (!(sqlDataReader["PlanId"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
                        }
                        if (!(sqlDataReader["DatePlan"] is DBNull)) //DatePlan= TimeCreated
                        {
                            DateTime _sd = DateTime.Parse(String.Format("{0}", sqlDataReader["DatePlan"]));
                            _result.DatePlan = String.Format("Ngày {0} Tháng {1} năm {2}.", _sd.Day, _sd.Month, _sd.Year);
                        }
                        else _result.DatePlan = "Ngày ... Tháng ... năm .....";
                        if (!(sqlDataReader["DateBranch"] is DBNull))
                        {
                            DateTime _sd = DateTime.Parse(String.Format("{0}", sqlDataReader["DateBranch"]));
                            _result.DateBranch = String.Format("Ngày {0} Tháng {1} năm {2}.", _sd.Day, _sd.Month, _sd.Year);
                        }
                        else _result.DateBranch = "Ngày ... Tháng ... năm .....";
                        if (!(sqlDataReader["DateFactory"] is DBNull))
                        {
                            DateTime _sd = DateTime.Parse(String.Format("{0}", sqlDataReader["DateFactory"]));
                            _result.DateFactory = String.Format("Ngày {0} Tháng {1} năm {2}.", _sd.Day, _sd.Month, _sd.Year);
                        }
                        else _result.DateFactory = "Ngày ... Tháng ... năm .....";
                        if (!(sqlDataReader["DateAuthority"] is DBNull))
                        {
                            DateTime _sd = DateTime.Parse(String.Format("{0}", sqlDataReader["DateAuthority"]));
                            _result.DateAuthority = String.Format("Ngày {0} Tháng {1} năm {2}.", _sd.Day, _sd.Month, _sd.Year);
                        }
                        else _result.DateAuthority = "Ngày ... Tháng ... năm .....";

                        if (!(sqlDataReader["DatePlan"] is DBNull))
                        {
                            _result.FactoryName = DateTime.Parse(String.Format("{0}", sqlDataReader["DatePlan"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        _result.UserNameAuthority = sqlDataReader["UserNameAuthority"].ToString();
                        _result.UserNameBranch = sqlDataReader["UserNameBranch"].ToString();
                        _result.UserNameFactory = sqlDataReader["UserNameFactory"].ToString();
                        _result.UserNamePlan = sqlDataReader["UserNamePlan"].ToString();
                        _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                        _result.Targets = sqlDataReader["Targets"].ToString();
                        _result.FileScan = sqlDataReader["FileScan"].ToString();
                    }
                    else
                    {
                        PlanTargetDevice _planDevice = new PlanTargetDevice();
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _planDevice.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        _planDevice.DeviceName = sqlDataReader["DeviceName"].ToString();
                        _planDevice.Measurement = sqlDataReader["Measurement"].ToString();
                        _planDevice.Duration1 = sqlDataReader["Duration1"].ToString();
                        _planDevice.Targets = sqlDataReader["Targets"].ToString();
                        _planDevice.Solution = sqlDataReader["Solution"].ToString();
                        _planDevice.UserAct = sqlDataReader["UserAct"].ToString();
                        _planDevice.CoordinationUnit = sqlDataReader["CoordinationUnit"].ToString();
                        _planDevice.Note = sqlDataReader["Note"].ToString();
                        if (!(sqlDataReader["TargetType"] is DBNull)) _planDevice.TargetType = int.Parse(String.Format("{0}", sqlDataReader["TargetType"]));
                        else _planDevice.TargetType = null;
                        if (!(sqlDataReader["MinValue"] is DBNull)) _planDevice.MinValue = decimal.Parse(String.Format("{0}", sqlDataReader["MinValue"]));
                        else _planDevice.MinValue = null;
                        _listplanDevice.Add(_planDevice);
                    }
                    _result.PlanTargetDeviceList = _listplanDevice;
                    indexItem++;
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
                return null;
            }
            finally
            {
                sqlConnection.Close();
            }
        }

        [HttpGet]
        public IEnumerable<DataSelectOption> GetPlanTargetForSelect(Int64 year, Int64 BranchId, Int64 FactoryId)
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
                cmd.CommandText = "GetPlanTargetForSelect";
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var opList = new List<DataSelectOption>();
                while (sqlDataReader.Read())
                {
                    var _result = new DataSelectOption();
                    _result.opValue = sqlDataReader["opValue"].ToString();
                    _result.opText = sqlDataReader["opText"].ToString();
                    opList.Add(_result);
                }
                return opList;
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
        public MessageResults EditPlanTargetDevice(PlanTargetDevice _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditPlanTargetDevice";
                cmd.Parameters.AddWithValue("@Measurement", (_infor.Measurement == null ? DBNull.Value : (object)_infor.Measurement));
                cmd.Parameters.AddWithValue("@Targets", (_infor.Targets == null ? DBNull.Value : (object)_infor.Targets));
                cmd.Parameters.AddWithValue("@Solution", (_infor.Solution == null ? DBNull.Value : (object)_infor.Solution));
                cmd.Parameters.AddWithValue("@Duration1", (_infor.Duration1 == null ? DBNull.Value : (object)_infor.Duration1));
                cmd.Parameters.AddWithValue("@UserAct", (_infor.UserAct == null ? DBNull.Value : (object)_infor.UserAct));
                cmd.Parameters.AddWithValue("@CoordinationUnit", (_infor.CoordinationUnit == null ? DBNull.Value : (object)_infor.CoordinationUnit));
                cmd.Parameters.AddWithValue("@Note", (_infor.Note == null ? DBNull.Value : (object)_infor.Note));
                cmd.Parameters.AddWithValue("@MinValue", ((object)_infor.MinValue == null ? DBNull.Value : (object)_infor.MinValue));
                cmd.Parameters.AddWithValue("@TargetType", ((object)_infor.TargetType == null ? DBNull.Value : (object)_infor.TargetType));
                cmd.Parameters.AddWithValue("@UserID", (_infor.UserID == null ? DBNull.Value : (object)_infor.UserID));
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
        public MessageResults AddPlanTargetDevice(PlanTargetDevice _infor)
        {
            MessageResults _result = new MessageResults();
            _result.success = false; _result.Id = 0;
            
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddPlanTargetDevice";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@PlanId", ((object)_infor.PlanId == null ? DBNull.Value : (object)_infor.PlanId));
                cmd.Parameters.AddWithValue("@Measurement", (_infor.Measurement == null ? DBNull.Value : (object)_infor.Measurement));
                cmd.Parameters.AddWithValue("@Targets", (_infor.Targets == null ? DBNull.Value : (object)_infor.Targets));
                cmd.Parameters.AddWithValue("@Solution", (_infor.Solution == null ? DBNull.Value : (object)_infor.Solution));
                cmd.Parameters.AddWithValue("@Duration1", (_infor.Duration1 == null ? DBNull.Value : (object)_infor.Duration1));
                cmd.Parameters.AddWithValue("@UserAct", (_infor.UserAct == null ? DBNull.Value : (object)_infor.UserAct));
                cmd.Parameters.AddWithValue("@CoordinationUnit", (_infor.CoordinationUnit == null ? DBNull.Value : (object)_infor.CoordinationUnit));
                cmd.Parameters.AddWithValue("@MinValue", ((object)_infor.MinValue == null ? DBNull.Value : (object)_infor.MinValue));
                cmd.Parameters.AddWithValue("@TargetType", ((object)_infor.TargetType == null ? DBNull.Value : (object)_infor.TargetType));
                cmd.Parameters.AddWithValue("@UserID", currentUserID);
                cmd.Parameters.AddWithValue("@Note", (_infor.Note == null ? DBNull.Value : (object)_infor.Note));
                
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
        public MessageResults Distroy(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeletePlanTarget";
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
        public MessageResults CreateToAdjustPlanTarget(Int64 PlanIdOrg, Int64 PlanId, int Number)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "CreateToAdjustPlanTarget";
                cmd.Parameters.AddWithValue("@PlanIdOrg", PlanIdOrg);
                cmd.Parameters.AddWithValue("@PlanId", PlanId);
                cmd.Parameters.AddWithValue("@Number", Number);
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
                cmd.CommandText = "UpdatePlanTargetFileScan";
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
