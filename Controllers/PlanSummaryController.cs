using Microsoft.AspNetCore.Authorization;
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

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    public class PlanSummaryController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public PlanSummaryController(IConfiguration configuration)
        {
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
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "Tổng hợp hồ sơ"
            }, ConnectionString);
            return View();
        }
        [HttpGet]
        public IEnumerable<DataSelectOption> GetPlanNumberByPlanType(string PlanType, int PlanMonth, int PlanYear, int BranchId, int FactoryId)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;// "GetPlanNumberByPlanType";
                cmd.Parameters.AddWithValue("@PlanType", (object)PlanType != null ? PlanType : (object)"");
                cmd.Parameters.AddWithValue("@PlanMonth", (object)PlanMonth != null ? PlanMonth : 0);
                cmd.Parameters.AddWithValue("@PlanYear", (object)PlanYear != null ? PlanYear : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new List<DataSelectOption>();
                while (sqlDataReader.Read())
                {
                    var item = new DataSelectOption();
                    item.opValue = sqlDataReader["PlanNumber"].ToString();
                    item.opText = sqlDataReader["PlanNumber"].ToString();
                    _result.Add(item);
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
        public IEnumerable<DataSelectOption> GetNumberAjusByPlanNumber(string PlanType, string PlanNumber)
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
                cmd.Parameters.AddWithValue("@PlanType", (object)PlanType != null ? PlanType : (object)"");
                cmd.Parameters.AddWithValue("@PlanNumber", (object)PlanNumber != null ? PlanNumber : (object)"");
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new List<DataSelectOption>();
                while (sqlDataReader.Read())
                {
                    var item = new DataSelectOption();
                    item.opValue = sqlDataReader["Number"].ToString();
                    item.opText = sqlDataReader["Number"].ToString();
                    _result.Add(item);
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
        public DeviceTarget GetDeviceTargetSummary(string PlanNumber, int NumberAju, int year, int month, Int64 BranchId)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;// "GetDeviceTarget";
                cmd.Parameters.AddWithValue("@PlanNumber", (object)PlanNumber != null ? PlanNumber : DBNull.Value);
                cmd.Parameters.AddWithValue("@NumberAju", (object)NumberAju != null ? NumberAju : 0);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new DeviceTarget();
                int indexItem = 0;
                List<DeviceTargetDetail> _listplanDevice = new List<DeviceTargetDetail>();
                while (sqlDataReader.Read())
                {
                    if (indexItem == 0)
                    {
                        if (!(sqlDataReader["DeviceTargetId"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["DeviceTargetId"]));
                        }
                        if (!(sqlDataReader["PlanIdOrg"] is DBNull))
                        {
                            _result.PlanIdOrg = int.Parse(String.Format("{0}", sqlDataReader["PlanIdOrg"]));
                        }
                        if (!(sqlDataReader["Number"] is DBNull))
                        {
                            _result.Number = int.Parse(String.Format("{0}", sqlDataReader["Number"]));
                        }
                    }
                    else
                    {
                        DeviceTargetDetail _planDevice = new DeviceTargetDetail();
                        if (!(sqlDataReader["Id"] is DBNull)) _planDevice.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));

                        _planDevice.DeviceTargetId = int.Parse(String.Format("{0}", sqlDataReader["DeviceTargetId"]));
                        _planDevice.Contents = sqlDataReader["Contents"].ToString();
                        _planDevice.ResultAct = sqlDataReader["ResultAct"].ToString();
                        _planDevice.Targets = sqlDataReader["Targets"].ToString();
                        _planDevice.PlanContent = sqlDataReader["PlanContent"].ToString();
                        if (!(sqlDataReader["PlanTargetId"] is DBNull)) _planDevice.PlanTargetId = Int64.Parse(String.Format("{0}", sqlDataReader["PlanTargetId"]));
                        if (!(sqlDataReader["Evaluate"] is DBNull)) _planDevice.Evaluate = int.Parse(String.Format("{0}", sqlDataReader["Evaluate"]));
                        _planDevice.Note = sqlDataReader["Note"].ToString();
                        _listplanDevice.Add(_planDevice);
                    }
                    _result.DeviceTargetDetailList = _listplanDevice;
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
        public PlanDaily GetPlanDailySummary(string PlanNumber, int NumberAju, int year, int month, Int64 BranchId)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;// "GetPlanDaily";
                cmd.Parameters.AddWithValue("@PlanNumber", (object)PlanNumber != null ? PlanNumber : DBNull.Value);
                cmd.Parameters.AddWithValue("@NumberAju", (object)NumberAju != null ? NumberAju : 0);

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
        public PlanOver GetPlanOverSummary(string PlanNumber, int NumberAju, int year, int month, Int64 BranchId)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;// "GetPlanOver";
                cmd.Parameters.AddWithValue("@PlanNumber", (object)PlanNumber != null ? PlanNumber : DBNull.Value);
                cmd.Parameters.AddWithValue("@NumberAju", (object)NumberAju != null ? NumberAju : 0);

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
        public IEnumerable<PlanPeriodicDevice> GetPlanPeriodicSummary(string PlanNumber, int NumberAju, int year, int month, Int64 BranchId)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;// "GetPlanPeriodic";
                cmd.Parameters.AddWithValue("@PlanNumber", (object)PlanNumber != null ? PlanNumber : DBNull.Value);
                cmd.Parameters.AddWithValue("@NumberAju", (object)NumberAju != null ? NumberAju : 0);

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
        public IEnumerable<PlanPeriodicDevice> GetPlanPeriodicDeviceSummary(string PlanNumber, int NumberAju, int year, int month, Int64 BranchId)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;// "GetPlanPeriodicByDevice";
                cmd.Parameters.AddWithValue("@PlanNumber", (object)PlanNumber != null ? PlanNumber : DBNull.Value);
                cmd.Parameters.AddWithValue("@NumberAju", (object)NumberAju != null ? NumberAju : 0);
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
        public IEnumerable<PlanPeriodicReport> GetPlanPeriodicReportSummary(string PlanNumber, int NumberAju, int year, int month, Int64 BranchId)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;// "GetPlanPeriodicReports";
                cmd.Parameters.AddWithValue("@PlanNumber", (object)PlanNumber != null ? PlanNumber : DBNull.Value);
                cmd.Parameters.AddWithValue("@NumberAju", (object)NumberAju != null ? NumberAju : 0);
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
                    _result.WorkArising = sqlDataReader["WorkArising"].ToString();
                    _result.OperatingResults = sqlDataReader["OperatingResults"].ToString();
                    _result.ActionMore = sqlDataReader["ActionMore"].ToString();
                    _result.Responsibility = sqlDataReader["Responsibility"].ToString();
                    _result.Duration = sqlDataReader["Duration"].ToString();
                    _result.UserSCBD = sqlDataReader["UserSCBD"].ToString();
                    _result.UserBranch = sqlDataReader["UserBranch"].ToString();
                    _result.UserDepartment = sqlDataReader["UserDepartment"].ToString();
                    _result.UserAuthority = sqlDataReader["UserAuthority"].ToString();
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
        public PlanSupplie GetPlanSupplieSummary(string PlanNumber, int NumberAju, int year, int month, Int64 BranchId)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;// "GetPlanSupplie";
                cmd.Parameters.AddWithValue("@PlanNumber", (object)PlanNumber != null ? PlanNumber : DBNull.Value);
                cmd.Parameters.AddWithValue("@NumberAju", (object)NumberAju != null ? NumberAju : 0);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new PlanSupplie();
                int indexItem = 0;
                List<PlanSupplieDevice> _listplanDevice = new List<PlanSupplieDevice>();
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
                        _result.SupplieCode = sqlDataReader["SupplieCode"].ToString();
                    }
                    else
                    {
                        PlanSupplieDevice _planDevice = new PlanSupplieDevice();
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _planDevice.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        _planDevice.SupplieName = sqlDataReader["SupplieName"].ToString();
                        _planDevice.NumberNote = sqlDataReader["NumberNote"].ToString();
                        if (!(sqlDataReader["Amount"] is DBNull)) _planDevice.Amount = int.Parse(String.Format("{0}", sqlDataReader["Amount"]));
                        _planDevice.SupplieCode = sqlDataReader["SupplieCode"].ToString();
                        _planDevice.Requirements = sqlDataReader["Requirements"].ToString();
                        _planDevice.Belonging = sqlDataReader["Belonging"].ToString();
                        _planDevice.Manufacture = sqlDataReader["Manufacture"].ToString();
                        _planDevice.Duration = sqlDataReader["Duration"].ToString();
                        _planDevice.UserAct = sqlDataReader["UserAct"].ToString();
                        _planDevice.Note = sqlDataReader["Note"].ToString();
                        _listplanDevice.Add(_planDevice);
                    }
                    _result.PlanSupplieDeviceList = _listplanDevice;
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
        public PlanTarget GetPlanTargetSummary(string PlanNumber, int NumberAju, int year, int month, Int64 BranchId)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;// "GetPlanTarget";
                cmd.Parameters.AddWithValue("@PlanNumber", (object)PlanNumber != null ? PlanNumber : DBNull.Value);
                cmd.Parameters.AddWithValue("@NumberAju", (object)NumberAju != null ? NumberAju : 0);

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
                        _result.UserNameAuthority = sqlDataReader["UserNameAuthority"].ToString();
                        _result.UserNameBranch = sqlDataReader["UserNameBranch"].ToString();
                        _result.UserNameFactory = sqlDataReader["UserNameFactory"].ToString();
                        _result.UserNamePlan = sqlDataReader["UserNamePlan"].ToString();
                        _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                        _result.Targets = sqlDataReader["Targets"].ToString();
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
        public PlanTarget GetReportSummary(string PlanNumber, int NumberAju, int year, int month, Int64 BranchId)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;// "GetPlanTarget";
                cmd.Parameters.AddWithValue("@PlanNumber", (object)PlanNumber != null ? PlanNumber : DBNull.Value);
                cmd.Parameters.AddWithValue("@NumberAju", (object)NumberAju != null ? NumberAju : 0);

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
                        _result.UserNameAuthority = sqlDataReader["UserNameAuthority"].ToString();
                        _result.UserNameBranch = sqlDataReader["UserNameBranch"].ToString();
                        _result.UserNameFactory = sqlDataReader["UserNameFactory"].ToString();
                        _result.UserNamePlan = sqlDataReader["UserNamePlan"].ToString();
                        _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                        _result.Targets = sqlDataReader["Targets"].ToString();
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
        public PlanTarget GetDeviceRepairSummary(string PlanNumber, int NumberAju, int year, int month, Int64 BranchId)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;// "GetPlanTarget";
                cmd.Parameters.AddWithValue("@PlanNumber", (object)PlanNumber != null ? PlanNumber : DBNull.Value);
                cmd.Parameters.AddWithValue("@NumberAju", (object)NumberAju != null ? NumberAju : 0);

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
                        _result.UserNameAuthority = sqlDataReader["UserNameAuthority"].ToString();
                        _result.UserNameBranch = sqlDataReader["UserNameBranch"].ToString();
                        _result.UserNameFactory = sqlDataReader["UserNameFactory"].ToString();
                        _result.UserNamePlan = sqlDataReader["UserNamePlan"].ToString();
                        _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                        _result.Targets = sqlDataReader["Targets"].ToString();
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
        public PlanTarget GetOtherSummary(string PlanNumber, int NumberAju, int year, int month, Int64 BranchId)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;// "GetPlanTarget";
                cmd.Parameters.AddWithValue("@PlanNumber", (object)PlanNumber != null ? PlanNumber : DBNull.Value);
                cmd.Parameters.AddWithValue("@NumberAju", (object)NumberAju != null ? NumberAju : 0);

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
                        _result.UserNameAuthority = sqlDataReader["UserNameAuthority"].ToString();
                        _result.UserNameBranch = sqlDataReader["UserNameBranch"].ToString();
                        _result.UserNameFactory = sqlDataReader["UserNameFactory"].ToString();
                        _result.UserNamePlan = sqlDataReader["UserNamePlan"].ToString();
                        _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                        _result.Targets = sqlDataReader["Targets"].ToString();
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
    }
}