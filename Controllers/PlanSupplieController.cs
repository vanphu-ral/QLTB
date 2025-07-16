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
    public class PlanSupplieController : Controller
    {
        private readonly ILogger<PlanSupplieController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public PlanSupplieController(ILogger<PlanSupplieController> logger, IConfiguration configuration)
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
            BaseService.AddUserActive(currentUserID, IpAddress,
                new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Quản lý kế hoạch vật tư" }, ConnectionString);
            return View();
        }
        public async Task<IActionResult> Details()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;

            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, 
                new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Chi tiết Quản lý kế hoạch vật tư" }, ConnectionString);
            return View();
        }
        public IEnumerable<PlanSupplie> Get()
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
                cmd.CommandText = "GetPlanSupplie";

                cmd.Parameters.AddWithValue("@year", 0);
                cmd.Parameters.AddWithValue("@PlanId", 0);
                cmd.Parameters.AddWithValue("@BranchId", 0);
                cmd.Parameters.AddWithValue("@FactoryId", 0);
                cmd.Parameters.AddWithValue("@UserId", 0);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanSupplie>();
                int indexItem = 0;
                while (sqlDataReader.Read())
                {
                    var _result = new PlanSupplie();
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
                        _result.SupplieCode = sqlDataReader["SupplieCode"].ToString();
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
                        //_result.PlanSupplieDeviceList = BaseService.PlanSupplieService.GetPlanSupplieDeviceList(_result.Id, ConnectionString);
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
        public PlanSupplie GetPlanSupplie(int PlanId, int PlanType, Int64 year, Int64 BranchId, Int64 FactoryId, Int64 PlanOverId)
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
                cmd.CommandText = "GetPlanSupplie";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                cmd.Parameters.AddWithValue("@PlanType", (object)PlanType != null ? PlanType : 0);
                cmd.Parameters.AddWithValue("@PlanOverId", (object)PlanOverId != null ? PlanOverId : 0);
                cmd.Parameters.AddWithValue("@PlanId", (object)PlanId != null ? PlanId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

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
                        if (!(sqlDataReader["PlanType"] is DBNull))
                        {
                            _result.PlanType = int.Parse(String.Format("{0}", sqlDataReader["PlanType"]));
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
                        _result.PlanOverNumber = sqlDataReader["NumberNote"].ToString();
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
                        _planDevice.BelongingId = sqlDataReader["BelongingId"].ToString();
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
        public IEnumerable<PlanSupplieDevice> GetPlanSupplieFull(Int64 PlanSupplieId)
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
                cmd.CommandText = "GetPlanSupplieDetail";

                cmd.Parameters.AddWithValue("@PlanId", (object)PlanSupplieId != null ? PlanSupplieId : 0);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanSupplieDevice>();
                while (sqlDataReader.Read())
                {
                    var _result = new PlanSupplieDevice();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    if (!(sqlDataReader["SupplieId"] is DBNull)) _result.SupplieId = int.Parse(String.Format("{0}", sqlDataReader["SupplieId"]));
                    if (!(sqlDataReader["LineId"] is DBNull)) _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));

                    _result.SupplieName = sqlDataReader["SupplieName"].ToString();
                    _result.NumberNote = sqlDataReader["NumberNote"].ToString();
                    if (!(sqlDataReader["Amount"] is DBNull)) _result.Amount = int.Parse(String.Format("{0}", sqlDataReader["Amount"]));
                    _result.SupplieCode = sqlDataReader["SupplieCode"].ToString();
                    _result.Requirements = sqlDataReader["Requirements"].ToString();
                    _result.Belonging = sqlDataReader["Belonging"].ToString();
                    _result.BelongingId = sqlDataReader["BelongingId"].ToString();
                    _result.Manufacture = sqlDataReader["Manufacture"].ToString();
                    _result.Duration = sqlDataReader["Duration"].ToString();
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
        public MessageResults SavePlanDevice(int LineId, int SupplieId, int PlanId)
        {
            MessageResults _result = new MessageResults();
            _result.success = false; _result.Id = 0;
            
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddPlanSupplieDevice";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@LineId", (object)LineId);
                cmd.Parameters.AddWithValue("@SupplieId", (object)SupplieId);
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
        public MessageResults EditPlanSupplieDevice(PlanSupplieDevice _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditPlanSupplieDevice";
                cmd.Parameters.AddWithValue("@NumberNote", (_infor.NumberNote == null ? DBNull.Value : (object)_infor.NumberNote));
                cmd.Parameters.AddWithValue("@Amount", ((object)_infor.Amount == null ? DBNull.Value : (object)_infor.Amount));
                cmd.Parameters.AddWithValue("@SupplieCode", (_infor.SupplieCode == null ? DBNull.Value : (object)_infor.SupplieCode));
                cmd.Parameters.AddWithValue("@Requirements", (_infor.Requirements == null ? DBNull.Value : (object)_infor.Requirements));
                cmd.Parameters.AddWithValue("@Manufacture", (_infor.Manufacture == null ? DBNull.Value : (object)_infor.Manufacture));
                cmd.Parameters.AddWithValue("@Belonging", (_infor.Belonging == null ? DBNull.Value : (object)_infor.Belonging));
                cmd.Parameters.AddWithValue("@Duration", (_infor.Duration == null ? DBNull.Value : (object)_infor.Duration));
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
        public MessageResults Distroy(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeletePlanSupplie";
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
        public MessageResults CreateToAdjustPlanSupplie(Int64 PlanIdOrg, Int64 PlanId, int Number)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "CreateToAdjustPlanSupplie";
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
