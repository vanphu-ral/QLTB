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
    public class PlanPeriodicController : Controller
    {
        //private readonly ILogger<PlanPeriodicController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public PlanPeriodicController(ILogger<PlanPeriodicController> logger, IConfiguration configuration)
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
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Kế hoạch Sữa chữa - Bảo dưỡng định kỳ" }, ConnectionString);
            return View();
        }
        public async Task<IActionResult> Details()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;

            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Chi tiết Kế hoạch Sữa chữa - Bảo dưỡng định kỳ" }, ConnectionString);
            return View();
        }
        public IEnumerable<PlanPeriodicDevice> Get()
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
                cmd.CommandText = "GetPlanPeriodic";

                cmd.Parameters.AddWithValue("@year", 2022);
                cmd.Parameters.AddWithValue("@BranchId", 2);
                cmd.Parameters.AddWithValue("@FactoryId", 1);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanPeriodicDevice>();
                int indexItem = 0;
                while (sqlDataReader.Read())
                {
                    var _result = new PlanPeriodicDevice();
                    if (indexItem == 0)
                    {
                        if (!(sqlDataReader["PlanId"] is DBNull))
                        {
                            _result.PlanId = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
                        }
                    }
                    else
                    {
                        if (!(sqlDataReader["PlanId"] is DBNull))
                        {
                            _result.PlanId = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
                        }
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        if (!(sqlDataReader["PlanYear"] is DBNull)) _result.Year = int.Parse(String.Format("{0}", sqlDataReader["PlanYear"]));
                        if (!(sqlDataReader["FactoryId"] is DBNull)) _result.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                        if (!(sqlDataReader["BranchId"] is DBNull)) _result.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                        _result.DatePlan = sqlDataReader["DatePlan"].ToString();
                        if (!(sqlDataReader["UserPlan"] is DBNull)) _result.UserPlan = int.Parse(String.Format("{0}", sqlDataReader["UserPlan"]));
                        _result.DateBranch = sqlDataReader["DateBranch"].ToString();
                        if (!(sqlDataReader["UserBranch"] is DBNull)) _result.UserBranch = int.Parse(String.Format("{0}", sqlDataReader["UserBranch"]));
                        _result.DateFactory = sqlDataReader["DateFactory"].ToString();
                        if (!(sqlDataReader["UserFactory"] is DBNull)) _result.UserFactory = int.Parse(String.Format("{0}", sqlDataReader["UserFactory"]));
                        _result.DateAuthority = sqlDataReader["DateAuthority"].ToString();
                        if (!(sqlDataReader["UserAuthority"] is DBNull)) _result.UserAuthority = int.Parse(String.Format("{0}", sqlDataReader["UserAuthority"]));
                        _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                        _result.PlanDeviceNumber = sqlDataReader["PlanDeviceNumber"].ToString();
                        _result.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                        _result.Note = sqlDataReader["Note"].ToString();
                        _result.NoteGoiY = sqlDataReader["NoteGoiY"].ToString();
                        _result.BranchName = sqlDataReader["BranchName"].ToString();
                        _result.FactoryName = sqlDataReader["FactoryName"].ToString();
                        _result.DeviceName = sqlDataReader["DeviceName"].ToString();
                        _result.Month01 = sqlDataReader["Month01"].ToString();
                        _result.Month02 = sqlDataReader["Month02"].ToString();
                        _result.Month03 = sqlDataReader["Month03"].ToString();
                        _result.Month04 = sqlDataReader["Month04"].ToString();
                        _result.Month05 = sqlDataReader["Month05"].ToString();
                        _result.Month06 = sqlDataReader["Month06"].ToString();
                        _result.Month07 = sqlDataReader["Month07"].ToString();
                        _result.Month08 = sqlDataReader["Month08"].ToString();
                        _result.Month09 = sqlDataReader["Month09"].ToString();
                        _result.Month10 = sqlDataReader["Month10"].ToString();
                        _result.Month11 = sqlDataReader["Month11"].ToString();
                        _result.Month12 = sqlDataReader["Month12"].ToString();

                        if (!(sqlDataReader["TimeCreated"] is DBNull))
                        {
                            _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        if (!(sqlDataReader["TimeModified"] is DBNull))
                        {
                            _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                        }
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
        public IEnumerable<PlanPeriodicDevice> GetPlanPeriodic(Int64 year, Int64 BranchId, Int64 FactoryId)
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
                cmd.CommandText = "GetPlanPeriodic";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanPeriodicDevice>();
                int indexItem = 0;
                while (sqlDataReader.Read())
                {
                    var _result = new PlanPeriodicDevice();
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
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        if (!(sqlDataReader["PlanId"] is DBNull))
                        {
                            _result.PlanId = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
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
                        _result.NoteGoiY = sqlDataReader["NoteGoiY"].ToString();
                    }
                    else
                    {
                        if (!(sqlDataReader["PlanId"] is DBNull))
                        {
                            _result.PlanId = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
                        }
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        if (!(sqlDataReader["PlanYear"] is DBNull)) _result.Year = int.Parse(String.Format("{0}", sqlDataReader["PlanYear"]));
                        if (!(sqlDataReader["FactoryId"] is DBNull)) _result.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                        if (!(sqlDataReader["BranchId"] is DBNull)) _result.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                        _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                        _result.PlanDeviceNumber = sqlDataReader["PlanDeviceNumber"].ToString();
                        _result.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                        _result.Note = sqlDataReader["Note"].ToString();
                        _result.BranchName = sqlDataReader["BranchName"].ToString();
                        _result.FactoryName = sqlDataReader["FactoryName"].ToString();
                        _result.DeviceName = sqlDataReader["DeviceName"].ToString();
                        _result.Month01 = sqlDataReader["Month01"].ToString();
                        _result.Month02 = sqlDataReader["Month02"].ToString();
                        _result.Month03 = sqlDataReader["Month03"].ToString();
                        _result.Month04 = sqlDataReader["Month04"].ToString();
                        _result.Month05 = sqlDataReader["Month05"].ToString();
                        _result.Month06 = sqlDataReader["Month06"].ToString();
                        _result.Month07 = sqlDataReader["Month07"].ToString();
                        _result.Month08 = sqlDataReader["Month08"].ToString();
                        _result.Month09 = sqlDataReader["Month09"].ToString();
                        _result.Month10 = sqlDataReader["Month10"].ToString();
                        _result.Month11 = sqlDataReader["Month11"].ToString();
                        _result.Month12 = sqlDataReader["Month12"].ToString();
                        _result.MonthPlan = sqlDataReader["MonthPlan"].ToString();                      
                        _result.NoteGoiY = sqlDataReader["NoteGoiY"].ToString();
                        if (!(sqlDataReader["TimeCreated"] is DBNull))
                        {
                            _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        if (!(sqlDataReader["TimeModified"] is DBNull))
                        {
                            _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                        }
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
        public IEnumerable<PlanPeriodicDevice> GetPlanPeriodicFull(Int64 PlanDeviceId)
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
                cmd.CommandText = "GetPlanPeriodicByDevice";

                cmd.Parameters.AddWithValue("@PlanDeviceId", (object)PlanDeviceId != null ? PlanDeviceId : 0);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanPeriodicDevice>();
                while (sqlDataReader.Read())
                {
                    var _result = new PlanPeriodicDevice();

                    if (!(sqlDataReader["PlanId"] is DBNull))
                    {
                        _result.PlanId = int.Parse(String.Format("{0}", sqlDataReader["PlanId"]));
                    }
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["PlanYear"] is DBNull)) _result.Year = int.Parse(String.Format("{0}", sqlDataReader["PlanYear"]));
                    if (!(sqlDataReader["TimeCreated"] is DBNull)) //DatePlan= TimeCreated
                    {
                        DateTime _sd = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"]));
                        _result.DatePlan = String.Format("Ngày {0}/{1}/{2}.", _sd.Day, _sd.Month, _sd.Year);
                    }
                    else _result.DatePlan = "Ngày .../.../.....";
                    if (!(sqlDataReader["DateBranch"] is DBNull))
                    {
                        DateTime _sd = DateTime.Parse(String.Format("{0}", sqlDataReader["DateBranch"]));
                        _result.DateBranch = String.Format("Ngày {0}/{1}/{2}.", _sd.Day, _sd.Month, _sd.Year);
                    }
                    else _result.DateBranch = "Ngày .../.../.....";
                    if (!(sqlDataReader["DateFactory"] is DBNull))
                    {
                        DateTime _sd = DateTime.Parse(String.Format("{0}", sqlDataReader["DateFactory"]));
                        _result.DateFactory = String.Format("Ngày {0}/{1}/{2}.", _sd.Day, _sd.Month, _sd.Year);
                    }
                    else _result.DateFactory = "Ngày .../.../.....";
                    if (!(sqlDataReader["DateAuthority"] is DBNull))
                    {
                        DateTime _sd = DateTime.Parse(String.Format("{0}", sqlDataReader["DateAuthority"]));
                        _result.DateAuthority = String.Format("Ngày {0}/{1}/{2}.", _sd.Day, _sd.Month, _sd.Year);
                    }
                    else _result.DateAuthority = "Ngày .../.../.....";
                    _result.UserNameAuthority = sqlDataReader["UserNameAuthority"].ToString();
                    _result.UserNameBranch = sqlDataReader["UserNameBranch"].ToString();
                    _result.UserNameFactory = sqlDataReader["UserNameFactory"].ToString();
                    _result.UserNamePlan = sqlDataReader["UserNamePlan"].ToString();

                    _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                    _result.PlanDeviceNumber = sqlDataReader["PlanDeviceNumber"].ToString();
                    _result.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                    _result.Note = sqlDataReader["Note"].ToString();
                    _result.BranchName = sqlDataReader["BranchName"].ToString();
                    _result.FactoryName = sqlDataReader["FactoryName"].ToString();
                    _result.DeviceName = sqlDataReader["DeviceName"].ToString();
                    _result.FileScan = sqlDataReader["FileScan"].ToString();


                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    _result.PeriodicDetailList = BaseService.PlanPeriodicService.GetPlanPeriodicDetailList(_result.Id, ConnectionString);
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
        public MessageResults SavePlanDevice(int DeviceId, int PlanId)
        {
            MessageResults _result = new MessageResults();
            _result.success = false; _result.Id = 0;
            
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddPlanPeriodicDevice";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
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
                _result.Id = 0;
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
        public MessageResults SavePlanDetail(PlanPeriodicDetail detailInfor)
        {
            MessageResults _result = new MessageResults();
             _result.success = false; _result.Id = 0;
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                if (detailInfor.Id == 0)
                {
                    cmd.CommandText = "AddPlanPeriodicDetail";
                    cmd.Parameters.AddWithValue("@PlanDeviceId", ((object)detailInfor.PlanDeviceId == null ? DBNull.Value : (object)detailInfor.PlanDeviceId));
                    if (int.Parse(detailInfor.Month01) == 1) cmd.Parameters.AddWithValue("@Month01", 1); else cmd.Parameters.AddWithValue("@Month01", 0);
                    if (int.Parse(detailInfor.Month01) == 2) cmd.Parameters.AddWithValue("@Month02", 1); else cmd.Parameters.AddWithValue("@Month02", 0);
                    if (int.Parse(detailInfor.Month01) == 3) cmd.Parameters.AddWithValue("@Month03", 1); else cmd.Parameters.AddWithValue("@Month03", 0);
                    if (int.Parse(detailInfor.Month01) == 4) cmd.Parameters.AddWithValue("@Month04", 1); else cmd.Parameters.AddWithValue("@Month04", 0);
                    if (int.Parse(detailInfor.Month01) == 5) cmd.Parameters.AddWithValue("@Month05", 1); else cmd.Parameters.AddWithValue("@Month05", 0);
                    if (int.Parse(detailInfor.Month01) == 6) cmd.Parameters.AddWithValue("@Month06", 1); else cmd.Parameters.AddWithValue("@Month06", 0);
                    if (int.Parse(detailInfor.Month01) == 7) cmd.Parameters.AddWithValue("@Month07", 1); else cmd.Parameters.AddWithValue("@Month07", 0);
                    if (int.Parse(detailInfor.Month01) == 8) cmd.Parameters.AddWithValue("@Month08", 1); else cmd.Parameters.AddWithValue("@Month08", 0);
                    if (int.Parse(detailInfor.Month01) == 9) cmd.Parameters.AddWithValue("@Month09", 1); else cmd.Parameters.AddWithValue("@Month09", 0);
                    if (int.Parse(detailInfor.Month01) == 10) cmd.Parameters.AddWithValue("@Month10", 1); else cmd.Parameters.AddWithValue("@Month10", 0);
                    if (int.Parse(detailInfor.Month01) == 11) cmd.Parameters.AddWithValue("@Month11", 1); else cmd.Parameters.AddWithValue("@Month11", 0);
                    if (int.Parse(detailInfor.Month01) == 12) cmd.Parameters.AddWithValue("@Month12", 1); else cmd.Parameters.AddWithValue("@Month12", 0);

                    cmd.Parameters.AddWithValue("@MonthAct", int.Parse(detailInfor.Month01));
                    cmd.Parameters.AddWithValue("@WorkContent", (detailInfor.WorkContent == null ? DBNull.Value : (object)detailInfor.WorkContent));
                    cmd.Parameters.AddWithValue("@DepartmentAct", (detailInfor.DepartmentAct == null ? DBNull.Value : (object)detailInfor.DepartmentAct));
                    cmd.Parameters.AddWithValue("@FormId", ((object)detailInfor.FormId == null ? DBNull.Value : (object)detailInfor.FormId));
                    cmd.Parameters.AddWithValue("@Note", (detailInfor.Note == null ? DBNull.Value : (object)detailInfor.Note));
                }
                else
                {
                    cmd.CommandText = "EditPlanPeriodicDetail";
                    cmd.Parameters.AddWithValue("@PlanDeviceId", ((object)detailInfor.PlanDeviceId == null ? DBNull.Value : (object)detailInfor.PlanDeviceId));
                    if (int.Parse(detailInfor.Month01) == 1) cmd.Parameters.AddWithValue("@Month01", 1); else cmd.Parameters.AddWithValue("@Month01", 0);
                    if (int.Parse(detailInfor.Month01) == 2) cmd.Parameters.AddWithValue("@Month02", 1); else cmd.Parameters.AddWithValue("@Month02", 0);
                    if (int.Parse(detailInfor.Month01) == 3) cmd.Parameters.AddWithValue("@Month03", 1); else cmd.Parameters.AddWithValue("@Month03", 0);
                    if (int.Parse(detailInfor.Month01) == 4) cmd.Parameters.AddWithValue("@Month04", 1); else cmd.Parameters.AddWithValue("@Month04", 0);
                    if (int.Parse(detailInfor.Month01) == 5) cmd.Parameters.AddWithValue("@Month05", 1); else cmd.Parameters.AddWithValue("@Month05", 0);
                    if (int.Parse(detailInfor.Month01) == 6) cmd.Parameters.AddWithValue("@Month06", 1); else cmd.Parameters.AddWithValue("@Month06", 0);
                    if (int.Parse(detailInfor.Month01) == 7) cmd.Parameters.AddWithValue("@Month07", 1); else cmd.Parameters.AddWithValue("@Month07", 0);
                    if (int.Parse(detailInfor.Month01) == 8) cmd.Parameters.AddWithValue("@Month08", 1); else cmd.Parameters.AddWithValue("@Month08", 0);
                    if (int.Parse(detailInfor.Month01) == 9) cmd.Parameters.AddWithValue("@Month09", 1); else cmd.Parameters.AddWithValue("@Month09", 0);
                    if (int.Parse(detailInfor.Month01) == 10) cmd.Parameters.AddWithValue("@Month10", 1); else cmd.Parameters.AddWithValue("@Month10", 0);
                    if (int.Parse(detailInfor.Month01) == 11) cmd.Parameters.AddWithValue("@Month11", 1); else cmd.Parameters.AddWithValue("@Month11", 0);
                    if (int.Parse(detailInfor.Month01) == 12) cmd.Parameters.AddWithValue("@Month12", 1); else cmd.Parameters.AddWithValue("@Month12", 0);
                    cmd.Parameters.AddWithValue("@MonthAct", int.Parse(detailInfor.Month01));
                    cmd.Parameters.AddWithValue("@WorkContent", (detailInfor.WorkContent == null ? DBNull.Value : (object)detailInfor.WorkContent));
                    cmd.Parameters.AddWithValue("@DepartmentAct", (detailInfor.DepartmentAct == null ? DBNull.Value : (object)detailInfor.DepartmentAct));
                    cmd.Parameters.AddWithValue("@FormId", ((object)detailInfor.FormId == null ? DBNull.Value : (object)detailInfor.FormId));
                    cmd.Parameters.AddWithValue("@Note", (detailInfor.Note == null ? DBNull.Value : (object)detailInfor.Note));
                    cmd.Parameters.AddWithValue("@Id", (object)detailInfor.Id);
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
        public MessageResults EditPlanPeriodicDeviceMonth(PlanPeriodicDevice detailInfor)
        {
            MessageResults _result = new MessageResults();
             _result.success = false; _result.Id = 0;
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditPlanPeriodicDeviceMonth";
                _Nlog.Info(String.Format("{0}/{1}/{2}", detailInfor.Month01, detailInfor.Month02, detailInfor.Month03));
                cmd.Parameters.AddWithValue("@PlanDeviceId", ((object)detailInfor.Id == null ? DBNull.Value : (object)detailInfor.Id));
                cmd.Parameters.AddWithValue("@Month01", (detailInfor.Month01 == null ? DBNull.Value : (object)detailInfor.Month01));
                cmd.Parameters.AddWithValue("@Month02", (detailInfor.Month02 == null ? DBNull.Value : (object)detailInfor.Month02));
                cmd.Parameters.AddWithValue("@Month03", (detailInfor.Month03 == null ? DBNull.Value : (object)detailInfor.Month03));
                cmd.Parameters.AddWithValue("@Month04", (detailInfor.Month04 == null ? DBNull.Value : (object)detailInfor.Month04));
                cmd.Parameters.AddWithValue("@Month05", (detailInfor.Month05 == null ? DBNull.Value : (object)detailInfor.Month05));
                cmd.Parameters.AddWithValue("@Month06", (detailInfor.Month06 == null ? DBNull.Value : (object)detailInfor.Month06));
                cmd.Parameters.AddWithValue("@Month07", (detailInfor.Month07 == null ? DBNull.Value : (object)detailInfor.Month07));
                cmd.Parameters.AddWithValue("@Month08", (detailInfor.Month08 == null ? DBNull.Value : (object)detailInfor.Month08));
                cmd.Parameters.AddWithValue("@Month09", (detailInfor.Month09 == null ? DBNull.Value : (object)detailInfor.Month09));
                cmd.Parameters.AddWithValue("@Month10", (detailInfor.Month10 == null ? DBNull.Value : (object)detailInfor.Month10));
                cmd.Parameters.AddWithValue("@Month11", (detailInfor.Month11 == null ? DBNull.Value : (object)detailInfor.Month11));
                cmd.Parameters.AddWithValue("@Month12", (detailInfor.Month12 == null ? DBNull.Value : (object)detailInfor.Month12));
                cmd.Parameters.AddWithValue("@Note", (detailInfor.Note == null ? DBNull.Value : (object)detailInfor.Note));
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
        public MessageResults Edit(PlanPeriodicDevice branchinfor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditPlanPeriodic";

                cmd.Parameters.AddWithValue("@Id", branchinfor.Id);
                cmd.Parameters.AddWithValue("@Name", (branchinfor.Name == null ? DBNull.Value : (object)branchinfor.Name));
                // cmd.Parameters.AddWithValue("@Code", (branchinfor.Code == null ? DBNull.Value : (object)branchinfor.Code));
                cmd.Parameters.AddWithValue("@FactoryId", ((object)branchinfor.FactoryId == null ? DBNull.Value : (object)branchinfor.FactoryId));
                cmd.Parameters.AddWithValue("@Description", branchinfor.Description == null ? DBNull.Value : (object)branchinfor.Description);

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
        // POST: PlanPeriodicController/Delete/5
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
                cmd.CommandText = "DeletePlanPeriodic";
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
                cmd.Parameters.AddWithValue("@OperatingResults", (_infor.OperatingResults == null ? DBNull.Value : (object)_infor.OperatingResults));
                cmd.Parameters.AddWithValue("@ActionMore", (_infor.ActionMore == null ? DBNull.Value : (object)_infor.ActionMore));
                cmd.Parameters.AddWithValue("@Responsibility", (_infor.Responsibility == null ? DBNull.Value : (object)_infor.Responsibility));
                cmd.Parameters.AddWithValue("@Duration", (_infor.Duration == null ? DBNull.Value : (object)_infor.Duration));
                cmd.Parameters.AddWithValue("@StartDate", (_infor.StartDate == null ? DBNull.Value : (object)_infor.StartDate));
                cmd.Parameters.AddWithValue("@EndDate", (_infor.EndDate == null ? DBNull.Value : (object)_infor.EndDate));
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
        [HttpGet]
        public MessageResults CreateToAdjustPlanPeriodic(Int64 PlanIdOrg, Int64 PlanId, int Number)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "CreateToAdjustPlanPeriodic";
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
                cmd.CommandText = "UpdatePlanPeriodicDeviceFileScan";
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
