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
using System.Threading.Tasks;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    public class PlanOverController : Controller
    {
        private readonly ILogger<PlanOverController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public PlanOverController(ILogger<PlanOverController> logger, IConfiguration configuration)
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
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress); ;
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Kế hoạch sửa chữa lớn" }, ConnectionString);
            return View();
        }
        public async Task<IActionResult> Details()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress); ;
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Chi tiết Kế hoạch sửa chữa lớn" }, ConnectionString);
            return View();
        }
        public IEnumerable<PlanOver> Get()
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
                cmd.CommandText = "GetPlanOver";

                cmd.Parameters.AddWithValue("@year", 0);
                cmd.Parameters.AddWithValue("@BranchId", 0);
                cmd.Parameters.AddWithValue("@FactoryId", 0);
                cmd.Parameters.AddWithValue("@UserId", 0);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanOver>();
                int indexItem = 0;
                while (sqlDataReader.Read())
                {
                    var _result = new PlanOver();
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
                        if (!(sqlDataReader["TimeCreated"] is DBNull))
                        {
                            _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        if (!(sqlDataReader["TimeModified"] is DBNull))
                        {
                            _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        _result.PlanOverDeviceList = BaseService.PlanOverService.GetPlanOverDeviceList(_result.Id, ConnectionString);
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
        public PlanOver GetPlanOver(Int64 PlanId, Int64 year, Int64 BranchId, Int64 FactoryId)
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
                cmd.CommandText = "GetPlanOver";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@PlanId", (object)PlanId != null ? PlanId : 0);
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new PlanOver();
                int indexItem = 0;
                List<PlanOverDevice> _listplanDevice = new List<PlanOverDevice>();
                while (sqlDataReader.Read())
                {
                    if (indexItem == 0)
                    {
                        if (!(sqlDataReader["PlanId"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
                        }
                        if (!(sqlDataReader["PlanIdOrg"] is DBNull))
                        {
                            _result.PlanIdOrg = int.Parse(String.Format("{0}", sqlDataReader["PlanIdOrg"]));
                        }
                        if (!(sqlDataReader["Number"] is DBNull))
                        {
                            _result.Number = int.Parse(String.Format("{0}", sqlDataReader["Number"]));
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
                        _result.UserNameAuthority = sqlDataReader["UserNameAuthority"].ToString();
                        _result.UserNameBranch = sqlDataReader["UserNameBranch"].ToString();
                        _result.UserNameFactory = sqlDataReader["UserNameFactory"].ToString();
                        _result.UserNamePlan = sqlDataReader["UserNamePlan"].ToString();
                        _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                        _result.Targets = sqlDataReader["Targets"].ToString();
                    }
                    else
                    {
                        PlanOverDevice _planDevice = new PlanOverDevice();
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _planDevice.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        _planDevice.DeviceName = sqlDataReader["DeviceName"].ToString();
                        _planDevice.CurrentStatus = sqlDataReader["CurrentStatus"].ToString();
                        _planDevice.RepairContent = sqlDataReader["RepairContent"].ToString();
                        _planDevice.Targets = sqlDataReader["Targets"].ToString();
                        _planDevice.Progress = sqlDataReader["Progress"].ToString();
                        _planDevice.UserChair = sqlDataReader["UserChair"].ToString();
                        _planDevice.UserAct = sqlDataReader["UserAct"].ToString();
  _planDevice.UserActId = sqlDataReader["UserActId"].ToString();
                        _planDevice.UserChairId = sqlDataReader["UserChairId"].ToString();
                        _planDevice.Note = sqlDataReader["Note"].ToString();
                        _listplanDevice.Add(_planDevice);
                    }
                    _result.PlanOverDeviceList = _listplanDevice;
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
        public IEnumerable<PlanOverDevice> GetPlanOverFull(Int64 PlanDeviceId)
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
                cmd.CommandText = "GetPlanOverDetail";

                cmd.Parameters.AddWithValue("@PlanId", (object)PlanDeviceId != null ? PlanDeviceId : 0);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanOverDevice>();
                while (sqlDataReader.Read())
                {
                    var _result = new PlanOverDevice();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    if (!(sqlDataReader["DeviceId"] is DBNull)) _result.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                    if (!(sqlDataReader["LineId"] is DBNull)) _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
                    _result.DeviceName = sqlDataReader["DeviceName"].ToString();
                    _result.LineName = sqlDataReader["LineName"].ToString();
                    _result.CurrentStatus = sqlDataReader["CurrentStatus"].ToString();
                    _result.RepairContent = sqlDataReader["RepairContent"].ToString();
                    _result.Targets = sqlDataReader["Targets"].ToString();
                    _result.Progress = sqlDataReader["Progress"].ToString();
                    _result.UserChair = sqlDataReader["UserChair"].ToString();
                    _result.UserActId = sqlDataReader["UserActId"].ToString();
                    _result.UserChairId = sqlDataReader["UserChairId"].ToString();
                    _result.UserAct = sqlDataReader["UserAct"].ToString();
                    _result.Note = sqlDataReader["Note"].ToString();
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
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
        public MessageResults SavePlanDevice(int LineId, int DeviceId, int PlanId)
        {
            MessageResults _result = new MessageResults();
            _result.success = false; _result.Id = 0;
            
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddPlanOverDevice";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@LineId", (object)LineId);
                cmd.Parameters.AddWithValue("@DeviceId", (object)DeviceId);
                cmd.Parameters.AddWithValue("@PlanId", (object)PlanId);
                cmd.Parameters.AddWithValue("@UserID", (object)currentUserID);
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
        public MessageResults EditPlanOverDevice(PlanOverDevice _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditPlanOverDevice";

                cmd.Parameters.AddWithValue("@CurrentStatus", (_infor.CurrentStatus == null ? DBNull.Value : (object)_infor.CurrentStatus));
                cmd.Parameters.AddWithValue("@RepairContent", (_infor.RepairContent == null ? DBNull.Value : (object)_infor.RepairContent));
                cmd.Parameters.AddWithValue("@Targets", (_infor.Targets == null ? DBNull.Value : (object)_infor.Targets));
                cmd.Parameters.AddWithValue("@Progress", (_infor.Progress == null ? DBNull.Value : (object)_infor.Progress));
                cmd.Parameters.AddWithValue("@UserChair", (_infor.UserChair == null ? DBNull.Value : (object)_infor.UserChair));
                cmd.Parameters.AddWithValue("@UserAct", (_infor.UserAct == null ? DBNull.Value : (object)_infor.UserAct));
                cmd.Parameters.AddWithValue("@UserID", (_infor.UserID == null ? DBNull.Value : (object)_infor.UserID));
                cmd.Parameters.AddWithValue("@Note", (_infor.Note == null ? DBNull.Value : (object)_infor.Note));
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
        [HttpGet]
        //[ValidateAntiForgeryToken]
        public MessageResults UpdatePlanOverTargets(string Targets, Int64 Id)
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
                cmd.CommandText = "UpdatePlanOverTargets";
                cmd.Parameters.AddWithValue("@Targets", (Targets == null ? DBNull.Value : (object)Targets));
                cmd.Parameters.AddWithValue("@Id", ((object)Id == null ? DBNull.Value : (object)Id));
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
                cmd.CommandText = "DeletePlanOver";
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
        public MessageResults CreateNewPlanOver(Int64 year, Int64 BranchId, Int64 FactoryId)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "CreateNewPlanOver";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
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
        public MessageResults CreateToAdjustPlanOver(Int64 PlanIdOrg, Int64 PlanId, int Number)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "CreateToAdjustPlanOver";
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
    }
}
