using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
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
    public class PlanDailyController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        private readonly UserManager<IdentityUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        public IConfiguration Configuration { get; }
        public PlanDailyController(IConfiguration configuration, UserManager<IdentityUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            Configuration = configuration;
            _userManager = userManager;
            _roleManager = roleManager;
        }
        private string currentUserID;
        private string IpAddress;
        public async Task<IActionResult> Index()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;
            var user = await _userManager.FindByIdAsync(currentUserID);
            var roles = await _userManager.GetRolesAsync(user);
            var IsWorker = false;
            foreach (var role in roles)
            {
                _Nlog.Info(role);
                var result = await _roleManager.FindByNameAsync(role);
                if (String.Format("{0}", result.Id) == "2546e9d0-809e-4846-acb8-f4e4ac40e9e5") //tài khoản nhóm công nhân
                {
                    IsWorker = true; break;
                }
            }

            if (IsWorker)
            {

                string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
                BaseService.AddUserActive(currentUserID, IpAddress,
                    new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Thực hiện kiểm tra trạng thái thiết bị hàng ngày, hàng tuần" }, ConnectionString);
                (string funName, string titleName) data = ("Thực hiện kiểm tra trạng thái thiết bị hàng ngày, hàng tuần", "Tittle");
                return View("IndexWoker", data);
            }
            else
            {
                string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
                BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Danh sách Kế hoạch kiểm tra bảo dưỡng thiết bị hàng ngày, hàng tuần" }, ConnectionString);
                return View();
            }
        }
        public async Task<IActionResult> Details()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;

            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Chi tiết Kế hoạch kiểm tra bảo dưỡng thiết bị hàng ngày, hàng tuần" }, ConnectionString);
            return View();
        }
        //List Page
        public IEnumerable<PlanDaily> GetPlanDailyList()
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
                cmd.CommandText = "GetPlanDaily";

                cmd.Parameters.AddWithValue("@year", 0);
                cmd.Parameters.AddWithValue("@BranchId", 0);
                cmd.Parameters.AddWithValue("@FactoryId", 0);
                cmd.Parameters.AddWithValue("@UserId", 0);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanDaily>();
                int indexItem = 0;
                while (sqlDataReader.Read())
                {
                    var _result = new PlanDaily();
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

                        if (!(sqlDataReader["TimeCreated"] is DBNull))
                        {
                            _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        if (!(sqlDataReader["TimeModified"] is DBNull))
                        {
                            _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        //_result.PlanDailyDetailList = BaseService.PlanDailyService.GetPlanDailyDetailList(_result.Id, ConnectionString);
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
        //Details Page
        public IEnumerable<PlanDaily> Get()
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
                cmd.CommandText = "GetPlanDaily";

                cmd.Parameters.AddWithValue("@year", 0);
                cmd.Parameters.AddWithValue("@BranchId", 0);
                cmd.Parameters.AddWithValue("@FactoryId", 0);
                cmd.Parameters.AddWithValue("@UserId", 0);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanDaily>();
                int indexItem = 0;
                while (sqlDataReader.Read())
                {
                    var _result = new PlanDaily();
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

                        if (!(sqlDataReader["TimeCreated"] is DBNull))
                        {
                            _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        if (!(sqlDataReader["TimeModified"] is DBNull))
                        {
                            _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        //_result.PlanDailyDetailList = BaseService.PlanDailyService.GetPlanDailyDetailList(_result.Id, ConnectionString);
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
        public PlanDaily GetPlanDaily(int month, int year, Int64 BranchId, Int64 FactoryId, Int64 DeviceId)
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
                cmd.CommandText = "GetPlanDaily";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@DeviceId", (object)DeviceId != null ? DeviceId : 0);
                cmd.Parameters.AddWithValue("@month", (object)month != null ? month : 0);
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new PlanDaily();
                List<PlanDailyDetail> _listplanDevice = new List<PlanDailyDetail>();
                while (sqlDataReader.Read())
                {
                    if (!(sqlDataReader["PlanIdOrg"] is DBNull))
                    {
                        _result.PlanIdOrg = int.Parse(String.Format("{0}", sqlDataReader["PlanIdOrg"]));
                    }
                    if (!(sqlDataReader["Number"] is DBNull))
                    {
                        _result.Number = int.Parse(String.Format("{0}", sqlDataReader["Number"]));
                    }
                    if (!(sqlDataReader["PlanReportNumber"] is DBNull))
                    {
                        _result.PlanReportNumber = int.Parse(String.Format("{0}", sqlDataReader["PlanReportNumber"]));
                    }
                    if (!(sqlDataReader["PlanId"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
                    }
                    if (!(sqlDataReader["DeviceId"] is DBNull))
                    {
                        _result.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                    }
                    if (!(sqlDataReader["DatePlan"] is DBNull)) //DatePlan= TimeCreated
                    {
                        DateTime _sd = DateTime.Parse(String.Format("{0}", sqlDataReader["DatePlan"]));
                        _result.DatePlan = String.Format("Ngày tháng: {0}/{1}/{2}.", _sd.Day, _sd.Month, _sd.Year);
                    }
                    else _result.DatePlan = "Ngày ... Tháng ... năm .....";
                    _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                    _result.DeviceName = sqlDataReader["DeviceName"].ToString();
                    _result.DeviceCode = sqlDataReader["DeviceCode"].ToString();
                    _result.LineName = sqlDataReader["LineName"].ToString();
                    _result.TeamName = sqlDataReader["TeamName"].ToString();
                    _result.UserWeek = sqlDataReader["UserWeek"].ToString();
                    _result.PlanDailyDetai = sqlDataReader["PlanDailyDetai"].ToString();
                    _result.DaySignAct = sqlDataReader["DaySignAct"].ToString();
                    _result.FileScan = sqlDataReader["FileScan"].ToString();
                    _result.ReprintPlanDaily = sqlDataReader["ReprintPlanDaily"].ToString();
                    return _result;
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
        public PlanDaily GetPlanDailyBYDay(int day, int month, int year, Int64 BranchId, Int64 FactoryId, Int64 DeviceId)
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
                cmd.CommandText = "GetPlanDailyBYDay";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@DeviceId", (object)DeviceId != null ? DeviceId : 0);
                cmd.Parameters.AddWithValue("@day", (object)day != null ? day : 0);
                cmd.Parameters.AddWithValue("@month", (object)month != null ? month : 0);
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new PlanDaily();
                List<PlanDailyDetail> _listplanDevice = new List<PlanDailyDetail>();
                while (sqlDataReader.Read())
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
                    if (!(sqlDataReader["DeviceId"] is DBNull))
                    {
                        _result.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                    }
                    if (!(sqlDataReader["DatePlan"] is DBNull)) //DatePlan= TimeCreated
                    {
                        DateTime _sd = DateTime.Parse(String.Format("{0}", sqlDataReader["DatePlan"]));
                        _result.DatePlan = String.Format("Ngày {0} Tháng {1} năm {2}.", _sd.Day, _sd.Month, _sd.Year);
                    }
                    else _result.DatePlan = "Ngày ... Tháng ... năm .....";
                    _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                    _result.DeviceName = sqlDataReader["DeviceName"].ToString();
                    _result.DeviceCode = sqlDataReader["DeviceCode"].ToString();
                    _result.LineName = sqlDataReader["LineName"].ToString();
                    _result.TeamName = sqlDataReader["TeamName"].ToString();
                    _result.PlanDailyDetai = sqlDataReader["PlanDailyDetai"].ToString();

                    return _result;
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
        public IEnumerable<PlanDailyDetail> GetPlanDailyFull(Int64 PlanDeviceId)
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
                cmd.CommandText = "GetPlanDailyDetail";

                cmd.Parameters.AddWithValue("@PlanId", (object)PlanDeviceId != null ? PlanDeviceId : 0);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanDailyDetail>();
                while (sqlDataReader.Read())
                {
                    var _result = new PlanDailyDetail();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    //if (!(sqlDataReader["DeviceId"] is DBNull)) _result.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                    if (!(sqlDataReader["LineId"] is DBNull)) _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));

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
                cmd.CommandText = "AddPlanDailyDevice";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;
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
                _result.success = false; _result.Id = 0;
                _result.message = "Lỗi kết nối";
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
        public MessageResults AddPlanDailyDetail(PlanDailyDetail _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddPlanDailyDetail";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;

                cmd.Parameters.AddWithValue("@PlanId", ((object)_infor.PlanId == null ? DBNull.Value : (object)_infor.PlanId));
                cmd.Parameters.AddWithValue("@TestMethod", ((object)_infor.TestMethod == null ? DBNull.Value : (object)_infor.TestMethod));
                cmd.Parameters.AddWithValue("@MainCategory", (_infor.MainCategory == null ? DBNull.Value : (object)_infor.MainCategory));
                cmd.Parameters.AddWithValue("@ContentAct", (_infor.ContentAct == null ? DBNull.Value : (object)_infor.ContentAct));
                cmd.Parameters.AddWithValue("@TestStatus", ((object)_infor.TestStatus == null ? DBNull.Value : (object)_infor.TestStatus));
                cmd.Parameters.AddWithValue("@IsEnable", ((object)_infor.IsEnable == null ? DBNull.Value : (object)_infor.IsEnable));
                cmd.Parameters.AddWithValue("@UserAction", (_infor.UserAction == null ? DBNull.Value : (object)_infor.UserAction));
                cmd.Parameters.AddWithValue("@DeviceId", ((object)_infor.DeviceId == null ? DBNull.Value : (object)_infor.DeviceId));
                cmd.Parameters.AddWithValue("@UserID", currentUserID);
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
                _result.message = MethodBase.GetCurrentMethod()?.Name + MethodBase.GetCurrentMethod()?.Name + "_Cập nhật không thành công";
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
        public MessageResults EditPlanDailyDetail(PlanDailyDetail _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditPlanDailyDetail";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;

                cmd.Parameters.AddWithValue("@TestMethod", ((object)_infor.TestMethod == null ? DBNull.Value : (object)_infor.TestMethod));
                cmd.Parameters.AddWithValue("@MainCategory", (_infor.MainCategory == null ? DBNull.Value : (object)_infor.MainCategory));
                cmd.Parameters.AddWithValue("@ContentAct", (_infor.ContentAct == null ? DBNull.Value : (object)_infor.ContentAct));
                cmd.Parameters.AddWithValue("@TestStatus", ((object)_infor.TestStatus == null ? DBNull.Value : (object)_infor.TestStatus));
                cmd.Parameters.AddWithValue("@IsEnable", ((object)_infor.IsEnable == null ? DBNull.Value : (object)_infor.IsEnable));
                cmd.Parameters.AddWithValue("@UserAction", ((object)_infor.UserAction == null ? DBNull.Value : (object)_infor.UserAction));
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
                _result.success = false; _result.Id = 0;
                _result.message = MethodBase.GetCurrentMethod()?.Name + MethodBase.GetCurrentMethod()?.Name + "_Cập nhật không thành công";
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
        // POST: PlanDailyController/Delete/5
        [HttpGet]
        public MessageResults DeletePlanDaily(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeletePlanDaily";
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
                _result.message = "Xóa không thành công";
            }
            finally
            {
                sqlConnection.Close();
            }
            return _result;
        }
        [HttpGet]
        public IEnumerable<PlanDailyTrouble> GetPlanDailyTrouble(Int64 PlanId, Int64 DeviceId, int HasReport)
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
                cmd.CommandText = "GetPlanDailyTrouble";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;

                cmd.Parameters.AddWithValue("@PlanId", (object)PlanId != null ? PlanId : 0);
                cmd.Parameters.AddWithValue("@DeviceId", (object)DeviceId != null ? DeviceId : 0);
                cmd.Parameters.AddWithValue("@HasReport", (object)HasReport != null ? HasReport : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new List<PlanDailyTrouble>();
                List<PlanDailyTrouble> _listplanTrouble = new List<PlanDailyTrouble>();
                while (sqlDataReader.Read())
                {
                    PlanDailyTrouble _plan = new PlanDailyTrouble();
                    if (!(sqlDataReader["Id"] is DBNull))
                        _plan.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    if (!(sqlDataReader["PlanId"] is DBNull)) _plan.PlanId = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
                    if (!(sqlDataReader["TroubleReportID"] is DBNull)) _plan.TroubleReportID = int.Parse(String.Format("{0}", sqlDataReader["TroubleReportID"]));

                    _plan.TroubleContent = sqlDataReader["TroubleContent"].ToString();
                    _plan.DeviceSupplieList = sqlDataReader["DeviceSupplieList"].ToString();
                    _plan.TroubleDate = DateTime.Parse(String.Format("{0}", sqlDataReader["TroubleDate"])).ToString("dd/MM/yyyy");
                    _plan.ContentAndResult = sqlDataReader["ContentAndResult"].ToString();
                    _plan.UserConfirm = sqlDataReader["UserConfirm"].ToString();
                    _plan.DateConfirm = DateTime.Parse(String.Format("{0}", sqlDataReader["DateConfirm"])).ToString("dd/MM/yyyy");
                    _plan.Conclusion = sqlDataReader["Conclusion"].ToString();
                    _plan.SupplieList = sqlDataReader["SupplieList"].ToString();
                    _plan.TimeCreated = sqlDataReader["Conclusion"].ToString();
                    if (!(sqlDataReader["TimeStopTotal"] is DBNull))
                        //_plan.TimeStopTotal = int.Parse(String.Format("{0}", sqlDataReader["TimeStopTotal"]));
                        _plan.TimeStopTotal = sqlDataReader["TimeStopTotal"].ToString();
                    if (!(sqlDataReader["TimeStopBegin"] is DBNull))
                        _plan.TimeStopBegin = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeStopBegin"])).ToString("dd/MM/yyyy HH:mm:ss");

                    if (!(sqlDataReader["TimeStopEnd"] is DBNull))
                        _plan.TimeStopEnd = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeStopEnd"])).ToString("dd/MM/yyyy HH:mm:ss");

                    _plan.LocationDetai = sqlDataReader["LocationDetai"].ToString();
                    _plan.RepairContent = sqlDataReader["RepairContent"].ToString();
                    _plan.RepairUser = sqlDataReader["RepairUser"].ToString();
                    _plan.Repair = sqlDataReader["Repair"].ToString();
                    _plan.Note = sqlDataReader["Note"].ToString();
                    if (!(sqlDataReader["HasReport"] is DBNull)) _plan.HasReport = int.Parse(String.Format("{0}", sqlDataReader["HasReport"]));
                    _result.Add(_plan);
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
        public IEnumerable<PlanDailyTrouble> GetPlanDailyTroubleByDay(int day, Int64 PlanId, Int64 DeviceId, int HasReport)
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
                cmd.CommandText = "GetPlanDailyTroubleByDay";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@PlanId", (object)PlanId != null ? PlanId : 0);
                cmd.Parameters.AddWithValue("@DeviceId", (object)DeviceId != null ? DeviceId : 0);
                cmd.Parameters.AddWithValue("@HasReport", (object)HasReport != null ? HasReport : 0);
                cmd.Parameters.AddWithValue("@day", (object)day != null ? day : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new List<PlanDailyTrouble>();
                List<PlanDailyTrouble> _listplanTrouble = new List<PlanDailyTrouble>();
                while (sqlDataReader.Read())
                {
                    PlanDailyTrouble _plan = new PlanDailyTrouble();
                    if (!(sqlDataReader["Id"] is DBNull))
                        _plan.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    if (!(sqlDataReader["PlanId"] is DBNull)) _plan.PlanId = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
                    if (!(sqlDataReader["TroubleReportID"] is DBNull)) _plan.TroubleReportID = int.Parse(String.Format("{0}", sqlDataReader["TroubleReportID"]));

                    _plan.TroubleContent = sqlDataReader["TroubleContent"].ToString();
                    _plan.DeviceSupplieList = sqlDataReader["DeviceSupplieList"].ToString();
                    _plan.TroubleDate = DateTime.Parse(String.Format("{0}", sqlDataReader["TroubleDate"])).ToString("dd/MM/yyyy");
                    _plan.ContentAndResult = sqlDataReader["ContentAndResult"].ToString();
                    _plan.UserConfirm = sqlDataReader["UserConfirm"].ToString();
                    _plan.DateConfirm = DateTime.Parse(String.Format("{0}", sqlDataReader["DateConfirm"])).ToString("dd/MM/yyyy");
                    _plan.Conclusion = sqlDataReader["Conclusion"].ToString();
                    _plan.SupplieList = sqlDataReader["SupplieList"].ToString();
                    _plan.TimeCreated = sqlDataReader["Conclusion"].ToString();
                    if (!(sqlDataReader["TimeStopTotal"] is DBNull))
                        //_plan.TimeStopTotal = int.Parse(String.Format("{0}", sqlDataReader["TimeStopTotal"]));
                    _plan.TimeStopTotal = sqlDataReader["TimeStopTotal"].ToString();

                    if (!(sqlDataReader["TimeStopBegin"] is DBNull))
                        _plan.TimeStopBegin = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeStopBegin"])).ToString("dd/MM/yyyy HH:mm:ss");

                    if (!(sqlDataReader["TimeStopEnd"] is DBNull))
                        _plan.TimeStopEnd = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeStopEnd"])).ToString("dd/MM/yyyy HH:mm:ss");

                    _plan.LocationDetai = sqlDataReader["LocationDetai"].ToString();
                    _plan.RepairContent = sqlDataReader["RepairContent"].ToString();
                    _plan.RepairUser = sqlDataReader["RepairUser"].ToString();
                    _plan.Repair = sqlDataReader["Repair"].ToString();
                    _plan.Note = sqlDataReader["Note"].ToString();
                    if (!(sqlDataReader["HasReport"] is DBNull)) _plan.HasReport = int.Parse(String.Format("{0}", sqlDataReader["HasReport"]));
                    _result.Add(_plan);
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
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults AddPlanDailyTrouble(PlanDailyTrouble _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddPlanDailyTrouble";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;

                cmd.Parameters.AddWithValue("@PlanId", ((object)_infor.PlanId == null ? DBNull.Value : (object)_infor.PlanId));
                cmd.Parameters.AddWithValue("@TroubleContent", (_infor.TroubleContent == null ? DBNull.Value : (object)_infor.TroubleContent));
                cmd.Parameters.AddWithValue("@DeviceSupplieList", (_infor.DeviceSupplieList == null ? DBNull.Value : (object)_infor.DeviceSupplieList));
                cmd.Parameters.AddWithValue("@TroubleDate", (_infor.TroubleDate == null ? DBNull.Value : (object)_infor.TroubleDate));
                cmd.Parameters.AddWithValue("@ContentAndResult", (_infor.ContentAndResult == null ? DBNull.Value : (object)_infor.ContentAndResult));
                cmd.Parameters.AddWithValue("@UserConfirm", (_infor.UserConfirm == null ? DBNull.Value : (object)_infor.UserConfirm));
                cmd.Parameters.AddWithValue("@DateConfirm", (_infor.DateConfirm == null ? DBNull.Value : (object)_infor.DateConfirm));
                cmd.Parameters.AddWithValue("@Conclusion", (_infor.Conclusion == null ? DBNull.Value : (object)_infor.Conclusion));
                cmd.Parameters.AddWithValue("@TroubleReportID", ((object)_infor.TroubleReportID == null ? DBNull.Value : (object)_infor.TroubleReportID));
                cmd.Parameters.AddWithValue("@TimeStopBegin", (_infor.TimeStopBegin == null ? DBNull.Value : (object)_infor.TimeStopBegin));
                cmd.Parameters.AddWithValue("@TimeStopEnd", (_infor.TimeStopEnd == null ? DBNull.Value : (object)_infor.TimeStopEnd));
                cmd.Parameters.AddWithValue("@LocationDetai", (_infor.LocationDetai == null ? DBNull.Value : (object)_infor.LocationDetai));
                cmd.Parameters.AddWithValue("@RepairContent", (_infor.RepairContent == null ? DBNull.Value : (object)_infor.RepairContent));
                cmd.Parameters.AddWithValue("@RepairUser", (_infor.RepairUser == null ? DBNull.Value : (object)_infor.RepairUser));
                cmd.Parameters.AddWithValue("@Repair", (_infor.Repair == null ? DBNull.Value : (object)_infor.Repair));
                cmd.Parameters.AddWithValue("@Note", (_infor.Note == null ? DBNull.Value : (object)_infor.Note));
                cmd.Parameters.AddWithValue("@UserID", currentUserID);
                cmd.Parameters.AddWithValue("@HasReport", ((object)_infor.HasReport == null ? DBNull.Value : (object)_infor.HasReport));
                cmd.Parameters.AddWithValue("@FactoryId", ((object)_infor.FactoryId == null ? DBNull.Value : (object)_infor.FactoryId));
                cmd.Parameters.AddWithValue("@BranchId", ((object)_infor.BranchId == null ? DBNull.Value : (object)_infor.BranchId));
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
                _result.message = MethodBase.GetCurrentMethod()?.Name + "_Cập nhật không thành công";
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
        public MessageResults AddPlanDailyTroubleWoker(PlanDailyTrouble _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;
                cmd.Parameters.AddWithValue("@PlanId", ((object)_infor.PlanId == null ? DBNull.Value : (object)_infor.PlanId));
                cmd.Parameters.AddWithValue("@TroubleContent", (_infor.TroubleContent == null ? DBNull.Value : (object)_infor.TroubleContent));
                cmd.Parameters.AddWithValue("@DeviceSupplieList", (_infor.DeviceSupplieList == null ? DBNull.Value : (object)_infor.DeviceSupplieList));
                cmd.Parameters.AddWithValue("@TroubleDate", (_infor.TroubleDate == null ? DBNull.Value : (object)_infor.TroubleDate));
                cmd.Parameters.AddWithValue("@ContentAndResult", (_infor.ContentAndResult == null ? DBNull.Value : (object)_infor.ContentAndResult));
                cmd.Parameters.AddWithValue("@Conclusion", (_infor.Conclusion == null ? DBNull.Value : (object)_infor.Conclusion));
                cmd.Parameters.AddWithValue("@HasReport", ((object)_infor.HasReport == null ? DBNull.Value : (object)_infor.HasReport));
                cmd.Parameters.AddWithValue("@FactoryId", ((object)_infor.FactoryId == null ? DBNull.Value : (object)_infor.FactoryId));
                cmd.Parameters.AddWithValue("@BranchId", ((object)_infor.BranchId == null ? DBNull.Value : (object)_infor.BranchId));
                cmd.Parameters.AddWithValue("@TimeStopBegin", (_infor.TimeStopBegin == null ? DBNull.Value : (object)_infor.TimeStopBegin));
                cmd.Parameters.AddWithValue("@TimeStopEnd", (_infor.TimeStopEnd == null ? DBNull.Value : (object)_infor.TimeStopEnd));
                cmd.Parameters.AddWithValue("@LocationDetai", (_infor.LocationDetai == null ? DBNull.Value : (object)_infor.LocationDetai));
                cmd.Parameters.AddWithValue("@RepairContent", (_infor.RepairContent == null ? DBNull.Value : (object)_infor.RepairContent));
                cmd.Parameters.AddWithValue("@RepairUser", (_infor.RepairUser == null ? DBNull.Value : (object)_infor.RepairUser));
                cmd.Parameters.AddWithValue("@Repair", (_infor.Repair == null ? DBNull.Value : (object)_infor.Repair));
                cmd.Parameters.AddWithValue("@Note", (_infor.Note == null ? DBNull.Value : (object)_infor.Note));

                cmd.Parameters.AddWithValue("@UserID", currentUserID);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                SqlDataReader _sqlReader = cmd.ExecuteReader();
                _result = BaseService.GetMessageResults(_sqlReader);
                BaseService.AddUserActive(currentUserID, IpAddress, _result, ConnectionString);
                return _result;
            }
            catch (Exception ex)
            {
                _result.success = false; _result.Id = 0;
                _result.message = MethodBase.GetCurrentMethod()?.Name + "_Cập nhật không thành công";
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
        public MessageResults EditPlanDailyTrouble(PlanDailyTrouble _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditPlanDailyTrouble";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;

                cmd.Parameters.AddWithValue("@TroubleContent", (_infor.TroubleContent == null ? DBNull.Value : (object)_infor.TroubleContent));
                cmd.Parameters.AddWithValue("@DeviceSupplieList", (_infor.DeviceSupplieList == null ? DBNull.Value : (object)_infor.DeviceSupplieList));
                cmd.Parameters.AddWithValue("@TroubleDate", (_infor.TroubleDate == null ? DBNull.Value : (object)_infor.TroubleDate));
                cmd.Parameters.AddWithValue("@ContentAndResult", (_infor.ContentAndResult == null ? DBNull.Value : (object)_infor.ContentAndResult));
                cmd.Parameters.AddWithValue("@UserConfirm", (_infor.UserConfirm == null ? DBNull.Value : (object)_infor.UserConfirm));
                cmd.Parameters.AddWithValue("@DateConfirm", (_infor.DateConfirm == null ? DBNull.Value : (object)_infor.DateConfirm));
                cmd.Parameters.AddWithValue("@Conclusion", (_infor.Conclusion == null ? DBNull.Value : (object)_infor.Conclusion));
                cmd.Parameters.AddWithValue("@TroubleReportID", ((object)_infor.TroubleReportID == null ? DBNull.Value : (object)_infor.TroubleReportID));
                cmd.Parameters.AddWithValue("@TimeStopBegin", (_infor.TimeStopBegin == null ? DBNull.Value : (object)_infor.TimeStopBegin));
                cmd.Parameters.AddWithValue("@TimeStopEnd", (_infor.TimeStopEnd == null ? DBNull.Value : (object)_infor.TimeStopEnd));
                cmd.Parameters.AddWithValue("@LocationDetai", (_infor.LocationDetai == null ? DBNull.Value : (object)_infor.LocationDetai));
                cmd.Parameters.AddWithValue("@RepairContent", (_infor.RepairContent == null ? DBNull.Value : (object)_infor.RepairContent));
                cmd.Parameters.AddWithValue("@RepairUser", (_infor.RepairUser == null ? DBNull.Value : (object)_infor.RepairUser));
                cmd.Parameters.AddWithValue("@Repair", (_infor.Repair == null ? DBNull.Value : (object)_infor.Repair));
                cmd.Parameters.AddWithValue("@Note", (_infor.Note == null ? DBNull.Value : (object)_infor.Note));
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
        [HttpGet]
        public IEnumerable<PlanDailyTroubleReport> GetPlanDailyTroubleReport(Int64 PlanId, Int64 DeviceId)
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
                cmd.CommandText = "GetPlanDailyTroubleReport";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;
                cmd.Parameters.AddWithValue("@PlanId", (object)PlanId != null ? PlanId : 0);
                cmd.Parameters.AddWithValue("@DeviceId", (object)DeviceId != null ? DeviceId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new List<PlanDailyTroubleReport>();
                List<PlanDailyTroubleReport> _listplanTrouble = new List<PlanDailyTroubleReport>();
                while (sqlDataReader.Read())
                {
                    PlanDailyTroubleReport _plan = new PlanDailyTroubleReport();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _plan.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }

                    // _plan.PlanId = sqlDataReader["PlanId"].ToString();
                    // if (!(sqlDataReader["PlanId"] is DBNull))_plan.PlanId = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
                    if (!(sqlDataReader["TroubleId"] is DBNull)) _plan.TroubleId = int.Parse(String.Format("{0}", sqlDataReader["TroubleId"]));
                    _plan.AddressTrouble = sqlDataReader["AddressTrouble"].ToString();
                    _plan.DateTrouble = DateTime.Parse(String.Format("{0}", sqlDataReader["DateTrouble"])).ToString("dd/MM/yyyy HH:mm:ss");
                    _plan.DescriptionTrouble = sqlDataReader["DescriptionTrouble"].ToString();
                    _plan.ReasonTrouble = sqlDataReader["ReasonTrouble"].ToString();
                    _plan.HandlingMeansure = sqlDataReader["HandlingMeansure"].ToString();
                    _plan.UserAct = sqlDataReader["UserAct"].ToString();
                    _plan.UserActList = sqlDataReader["UserActList"].ToString();
                    if (!(sqlDataReader["DateDone"] is DBNull)) _plan.DateDone = DateTime.Parse(String.Format("{0}", sqlDataReader["DateDone"])).ToString("dd/MM/yyyy HH:mm:ss");
                    _plan.UserPart = sqlDataReader["UserPart"].ToString();
                    _plan.UnitPart = sqlDataReader["UnitPart"].ToString();
                    _plan.UserPartList = sqlDataReader["UserPartList"].ToString();
                    _plan.UnitPartList = sqlDataReader["UnitPartList"].ToString();
                    _plan.UserManager = sqlDataReader["UserManager"].ToString();
                    _plan.UserBranch = sqlDataReader["UserBranch"].ToString();
                    _plan.UserAuthority = sqlDataReader["UserAuthority"].ToString();
                    _plan.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm:ss");
                    _plan.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm:ss");
                    if (!(sqlDataReader["FactoryId"] is DBNull)) _plan.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                    if (!(sqlDataReader["BranchId"] is DBNull)) _plan.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                    _plan.ReportNumber = sqlDataReader["ReportNumber"].ToString();
                    _plan.FileScan = sqlDataReader["FileScan"].ToString();
                    _result.Add(_plan);
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
        public IEnumerable<PlanDailyTroubleReport> GetPlanDailyTroubleReportByAll(int FId, int BId, int DId)
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
                cmd.CommandText = "GetPlanDailyTroubleReportByAll";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;
                cmd.Parameters.AddWithValue("@FactoryId", (object)FId != null ? FId : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BId != null ? BId : 0);
                cmd.Parameters.AddWithValue("@DeviceId", (object)DId != null ? DId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new List<PlanDailyTroubleReport>();
                List<PlanDailyTroubleReport> _listplanTrouble = new List<PlanDailyTroubleReport>();
                while (sqlDataReader.Read())
                {
                    PlanDailyTroubleReport _plan = new PlanDailyTroubleReport();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _plan.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }

                    // _plan.PlanId = sqlDataReader["PlanId"].ToString();
                    // if (!(sqlDataReader["PlanId"] is DBNull))_plan.PlanId = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
                    if (!(sqlDataReader["TroubleId"] is DBNull)) _plan.TroubleId = int.Parse(String.Format("{0}", sqlDataReader["TroubleId"]));
                    _plan.AddressTrouble = sqlDataReader["AddressTrouble"].ToString();
                    _plan.DateTrouble = DateTime.Parse(String.Format("{0}", sqlDataReader["DateTrouble"])).ToString("dd/MM/yyyy HH:mm:ss");
                    _plan.DescriptionTrouble = sqlDataReader["DescriptionTrouble"].ToString();
                    _plan.ReasonTrouble = sqlDataReader["ReasonTrouble"].ToString();
                    _plan.HandlingMeansure = sqlDataReader["HandlingMeansure"].ToString();
                    _plan.UserActList = sqlDataReader["UserActList"].ToString();
                    _plan.UserAct = sqlDataReader["UserAct"].ToString();
                    if (!(sqlDataReader["DateDone"] is DBNull)) _plan.DateDone = DateTime.Parse(String.Format("{0}", sqlDataReader["DateDone"])).ToString("dd/MM/yyyy HH:mm:ss");
                    _plan.UserPart = sqlDataReader["UserPart"].ToString();
                    _plan.UnitPart = sqlDataReader["UnitPart"].ToString();
                    _plan.UserPartList = sqlDataReader["UserPartList"].ToString();
                    _plan.UnitPartList = sqlDataReader["UnitPartList"].ToString();
                    _plan.UserManager = sqlDataReader["UserManager"].ToString();
                    _plan.UserBranch = sqlDataReader["UserBranch"].ToString();
                    _plan.UserAuthority = sqlDataReader["UserAuthority"].ToString();
                    _plan.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm:ss");
                    _plan.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm:ss");
                    if (!(sqlDataReader["FactoryId"] is DBNull)) _plan.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                    if (!(sqlDataReader["BranchId"] is DBNull)) _plan.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                    _plan.ReportNumber = sqlDataReader["ReportNumber"].ToString();
                    _plan.FileScan = sqlDataReader["FileScan"].ToString();
                    _plan.DeviceNumber = sqlDataReader["DeviceNumber"].ToString();
                    _plan.LineName = sqlDataReader["LineName"].ToString();
                    _plan.BranchNumber = sqlDataReader["BranchNumber"].ToString();
                    _plan.OrtherInfor = sqlDataReader["OrtherInfor"].ToString();
                    _result.Add(_plan);
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
        public IEnumerable<PlanDailyTroubleReport> GetPlanDailyTroubleReportByDay(int day, Int64 PlanId, Int64 DeviceId)
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
                cmd.CommandText = "GetPlanDailyTroubleReportByDay";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@PlanId", (object)PlanId != null ? PlanId : 0);
                cmd.Parameters.AddWithValue("@DeviceId", (object)DeviceId != null ? DeviceId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@day", (object)day != null ? day : 0);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new List<PlanDailyTroubleReport>();
                List<PlanDailyTroubleReport> _listplanTrouble = new List<PlanDailyTroubleReport>();
                while (sqlDataReader.Read())
                {
                    PlanDailyTroubleReport _plan = new PlanDailyTroubleReport();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _plan.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }

                    // _plan.PlanId = sqlDataReader["PlanId"].ToString();
                    // if (!(sqlDataReader["PlanId"] is DBNull))_plan.PlanId = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
                    if (!(sqlDataReader["TroubleId"] is DBNull)) _plan.TroubleId = int.Parse(String.Format("{0}", sqlDataReader["TroubleId"]));
                    _plan.AddressTrouble = sqlDataReader["AddressTrouble"].ToString();
                    _plan.DateTrouble = DateTime.Parse(String.Format("{0}", sqlDataReader["DateTrouble"])).ToString("dd/MM/yyyy HH:mm:ss");
                    _plan.DescriptionTrouble = sqlDataReader["DescriptionTrouble"].ToString();
                    _plan.ReasonTrouble = sqlDataReader["ReasonTrouble"].ToString();
                    _plan.HandlingMeansure = sqlDataReader["HandlingMeansure"].ToString();
                    _plan.UserActList = sqlDataReader["UserActList"].ToString();
                    _plan.UserAct = sqlDataReader["UserAct"].ToString();
                    if (!(sqlDataReader["DateDone"] is DBNull)) _plan.DateDone = DateTime.Parse(String.Format("{0}", sqlDataReader["DateDone"])).ToString("dd/MM/yyyy HH:mm:ss");
                    _plan.UserPart = sqlDataReader["UserPart"].ToString();
                    _plan.UnitPart = sqlDataReader["UnitPart"].ToString();
                    _plan.UserPartList = sqlDataReader["UserPartList"].ToString();
                    _plan.UnitPartList = sqlDataReader["UnitPartList"].ToString();
                    _plan.UserManager = sqlDataReader["UserManager"].ToString();
                    _plan.UserBranch = sqlDataReader["UserBranch"].ToString();
                    _plan.UserAuthority = sqlDataReader["UserAuthority"].ToString();
                    _plan.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm:ss");
                    _plan.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm:ss");
                    if (!(sqlDataReader["FactoryId"] is DBNull)) _plan.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                    if (!(sqlDataReader["BranchId"] is DBNull)) _plan.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                    _plan.ReportNumber = sqlDataReader["ReportNumber"].ToString();
                    _plan.FileScan = sqlDataReader["FileScan"].ToString();

                    _result.Add(_plan);
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
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults AddPlanDailyTroubleReport(PlanDailyTroubleReport _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddPlanDailyTroubleReport";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;

                cmd.Parameters.AddWithValue("@TroubleId", ((object)_infor.TroubleId == null ? DBNull.Value : (object)_infor.TroubleId));
                cmd.Parameters.AddWithValue("@AddressTrouble", (_infor.AddressTrouble == null ? DBNull.Value : (object)_infor.AddressTrouble));
                cmd.Parameters.AddWithValue("@DateTrouble", (_infor.DateTrouble == null ? DBNull.Value : (object)_infor.DateTrouble));
                cmd.Parameters.AddWithValue("@DescriptionTrouble", (_infor.DescriptionTrouble == null ? DBNull.Value : (object)_infor.DescriptionTrouble));
                cmd.Parameters.AddWithValue("@ReasonTrouble", (_infor.ReasonTrouble == null ? DBNull.Value : (object)_infor.ReasonTrouble));
                cmd.Parameters.AddWithValue("@HandlingMeansure", (_infor.HandlingMeansure == null ? DBNull.Value : (object)_infor.HandlingMeansure));
                cmd.Parameters.AddWithValue("@UserAct", (_infor.UserAct == null ? DBNull.Value : (object)_infor.UserAct));
                cmd.Parameters.AddWithValue("@DateDone", (_infor.DateDone == null ? DBNull.Value : (object)_infor.DateDone));
                cmd.Parameters.AddWithValue("@UserPart", (_infor.UserPart == null ? DBNull.Value : (object)_infor.UserPart));
                cmd.Parameters.AddWithValue("@UnitPart", (_infor.UnitPart == null ? DBNull.Value : (object)_infor.UnitPart));
                cmd.Parameters.AddWithValue("@UserManager", (_infor.UserManager == null ? DBNull.Value : (object)_infor.UserManager));
                cmd.Parameters.AddWithValue("@UserBranch", (_infor.UserBranch == null ? DBNull.Value : (object)_infor.UserBranch));
                cmd.Parameters.AddWithValue("@UserAuthority", (_infor.UserAuthority == null ? DBNull.Value : (object)_infor.UserAuthority));
                cmd.Parameters.AddWithValue("@TimeCreated", (_infor.TimeCreated == null ? DBNull.Value : (object)_infor.TimeCreated));
                cmd.Parameters.AddWithValue("@TimeModified", (_infor.TimeModified == null ? DBNull.Value : (object)_infor.TimeModified));
                cmd.Parameters.AddWithValue("@FactoryId", ((object)_infor.FactoryId == null ? DBNull.Value : (object)_infor.FactoryId));
                cmd.Parameters.AddWithValue("@BranchId", ((object)_infor.BranchId == null ? DBNull.Value : (object)_infor.BranchId));
                cmd.Parameters.AddWithValue("@UserID", currentUserID);
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
        public MessageResults EditPlanDailyTroubleReport(PlanDailyTroubleReport _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditPlanDailyTroubleReport";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;

                cmd.Parameters.AddWithValue("@AddressTrouble", (_infor.AddressTrouble == null ? DBNull.Value : (object)_infor.AddressTrouble));
                cmd.Parameters.AddWithValue("@DescriptionTrouble", (_infor.DescriptionTrouble == null ? DBNull.Value : (object)_infor.DescriptionTrouble));
                cmd.Parameters.AddWithValue("@ReasonTrouble", (_infor.ReasonTrouble == null ? DBNull.Value : (object)_infor.ReasonTrouble));
                cmd.Parameters.AddWithValue("@HandlingMeansure", (_infor.HandlingMeansure == null ? DBNull.Value : (object)_infor.HandlingMeansure));
                cmd.Parameters.AddWithValue("@UserAct", (_infor.UserAct == null ? DBNull.Value : (object)_infor.UserAct));
                cmd.Parameters.AddWithValue("@DateDone", (_infor.DateDone == null ? DBNull.Value : (object)_infor.DateDone));
                cmd.Parameters.AddWithValue("@UserPart", (_infor.UserPart == null ? DBNull.Value : (object)_infor.UserPart));
                cmd.Parameters.AddWithValue("@UnitPart", (_infor.UnitPart == null ? DBNull.Value : (object)_infor.UnitPart));
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
        public MessageResults DeletePlanDailyTroubleReport(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeletePlanDailyTroubleReport";
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
        public MessageResults AddPlanDailyTroubleSupplie(PlanDailyTroubleSupplie _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddPlanDailyTroubleSupplie";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;

                cmd.Parameters.AddWithValue("@TroubleId", ((object)_infor.TroubleId == null ? DBNull.Value : (object)_infor.TroubleId));
                cmd.Parameters.AddWithValue("@SupplieId", ((object)_infor.SupplieId == null ? DBNull.Value : (object)_infor.SupplieId));
                cmd.Parameters.AddWithValue("@Quantity", ((object)_infor.Quantity == null ? DBNull.Value : (object)_infor.Quantity));
                cmd.Parameters.AddWithValue("@Price", ((object)_infor.Price == null ? DBNull.Value : (object)_infor.Price));
                cmd.Parameters.AddWithValue("@ToMoney", ((object)_infor.ToMoney == null ? DBNull.Value : (object)_infor.ToMoney));
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
        public MessageResults EditPlanDailyTroubleSupplie(PlanDailyTroubleSupplie _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditPlanDailyTroubleSupplie";
                cmd.Parameters.AddWithValue("@TroubleId", ((object)_infor.TroubleId == null ? DBNull.Value : (object)_infor.TroubleId));
                cmd.Parameters.AddWithValue("@SupplieId", ((object)_infor.SupplieId == null ? DBNull.Value : (object)_infor.SupplieId));
                cmd.Parameters.AddWithValue("@Quantity", ((object)_infor.Quantity == null ? DBNull.Value : (object)_infor.Quantity));
                cmd.Parameters.AddWithValue("@Price", ((object)_infor.Price == null ? DBNull.Value : (object)_infor.Price));
                cmd.Parameters.AddWithValue("@ToMoney", ((object)_infor.ToMoney == null ? DBNull.Value : (object)_infor.ToMoney));
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
        public MessageResults DeletePlanDailyTroubleSupplie(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeletePlanDailyTroubleSupplie";
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
        public List<Int32> GetYearPlanDaily()
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
                cmd.CommandText = "GetYearPlanDaily";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _listYear = new List<Int32>();
                while (sqlDataReader.Read())
                {
                    if (!(sqlDataReader["PlanYear"] is DBNull))
                        _listYear.Add(int.Parse(String.Format("{0}", sqlDataReader["PlanYear"])));
                }
                return _listYear;
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
        public List<Int32> GetMonthPlanDaily()
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
                cmd.CommandText = "GetMonthPlanDaily";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _listMonth = new List<Int32>();
                while (sqlDataReader.Read())
                {
                    if (!(sqlDataReader["PlanMonth"] is DBNull))
                        _listMonth.Add(int.Parse(String.Format("{0}", sqlDataReader["PlanMonth"])));
                }
                return _listMonth;
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
        public MessageResults UpdateDayStatusPlanDailyWorks(int day, int DayStatus, string PlanWorkId, string ContentChange)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "UpdateDayStatusPlanDailyWorks";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;

                cmd.Parameters.AddWithValue("@PlanWorkId", PlanWorkId);
                cmd.Parameters.AddWithValue("@UserID", currentUserID);
                cmd.Parameters.AddWithValue("@day", ((object)day == null ? DBNull.Value : (object)day));
                cmd.Parameters.AddWithValue("@DayStatus", ((object)DayStatus == null ? DBNull.Value : (object)DayStatus));
                cmd.Parameters.AddWithValue("@ContentChange", ((object)ContentChange == null ? DBNull.Value : (object)ContentChange));
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
        public MessageResults CreateToAdjustPlanDaily(Int64 PlanIdOrg, Int64 PlanId, int Number)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "CreateToAdjustPlanDaily";
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
                cmd.CommandText = "DeletePlanDaily";
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
    }
}
