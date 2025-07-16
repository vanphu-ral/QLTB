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
    public class DeviceRepairController : Controller
    {
        private readonly ILogger<DeviceRepairController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public DeviceRepairController(ILogger<DeviceRepairController> logger, IConfiguration configuration)
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
                new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Quản lý sửa chữa thiết bị do sự cố" }, ConnectionString);
            return View();
        }
        public IEnumerable<DeviceRepair> Get()
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
                cmd.CommandText = "GetDeviceRepair";

                cmd.Parameters.AddWithValue("@year", 0);
                cmd.Parameters.AddWithValue("@BranchId", 0);
                cmd.Parameters.AddWithValue("@FactoryId", 0);
                cmd.Parameters.AddWithValue("@UserId", 0);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<DeviceRepair>();
                int indexItem = 0;
                while (sqlDataReader.Read())
                {
                    var _result = new DeviceRepair();
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
                        //_result.DeviceRepairDetailList = BaseService.DeviceRepairService.GetDeviceRepairDetailList(_result.Id, ConnectionString);
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
        public DeviceRepair GetDeviceRepair(Int32 month, Int32 year, Int64 BranchId, Int64 FactoryId)
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
                cmd.CommandText = "GetDeviceRepair";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@month", (object)month != null ? month : 0);
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new DeviceRepair();
                int indexItem = 0;
                List<DeviceRepairDetail> _listplanDevice = new List<DeviceRepairDetail>();
                while (sqlDataReader.Read())
                {
                    if (indexItem == 0)
                    {
                        if (!(sqlDataReader["DeviceRepairId"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["DeviceRepairId"]));
                        }
                    }
                    else
                    {
                        DeviceRepairDetail _planDevice = new DeviceRepairDetail();
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _planDevice.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        if (!(sqlDataReader["DeviceId"] is DBNull))
                        {
                            _planDevice.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                        }
                        if (!(sqlDataReader["DayOfMonth"] is DBNull))
                        {
                            _planDevice.DayOfMonth = int.Parse(String.Format("{0}", sqlDataReader["DayOfMonth"]));
                        }
                        _planDevice.DeviceRepairId = int.Parse(String.Format("{0}", sqlDataReader["DeviceRepairId"]));
                        _planDevice.Contents = sqlDataReader["Contents"].ToString();
                        _planDevice.AssemblyDetail = sqlDataReader["AssemblyDetail"].ToString();
                        _planDevice.UserAct = sqlDataReader["UserAct"].ToString();
                        _planDevice.SupplieList = sqlDataReader["SupplieList"].ToString();
                        _planDevice.Note = sqlDataReader["Note"].ToString();
                        _planDevice.DeviceName = sqlDataReader["DeviceName"].ToString();

                        if (!(sqlDataReader["TimeCreated"] is DBNull))
                        {
                            _planDevice.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        if (!(sqlDataReader["TimeModified"] is DBNull))
                        {
                            _planDevice.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                        }
                        _listplanDevice.Add(_planDevice);
                    }
                    _result.DeviceRepairDetailList = _listplanDevice;
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
        [HttpPost]
        public MessageResults AddDeviceRepairDetail(DeviceRepairDetail _infor)
        {
            MessageResults _result = new MessageResults();
            _result.success = false; _result.Id = 0;
            
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddDeviceRepairDetail";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@DeviceRepairId", ((object)_infor.DeviceRepairId == null ? DBNull.Value : (object)_infor.DeviceRepairId));
                cmd.Parameters.AddWithValue("@Contents", (_infor.Contents == null ? DBNull.Value : (object)_infor.Contents));
                cmd.Parameters.AddWithValue("@AssemblyDetail", (_infor.AssemblyDetail == null ? DBNull.Value : (object)_infor.AssemblyDetail));
                cmd.Parameters.AddWithValue("@UserAct", (_infor.UserAct == null ? DBNull.Value : (object)_infor.UserAct));
                cmd.Parameters.AddWithValue("@SupplieList", (_infor.SupplieList == null ? DBNull.Value : (object)_infor.SupplieList));
                cmd.Parameters.AddWithValue("@DeviceId", ((object)_infor.DeviceId == null ? DBNull.Value : (object)_infor.DeviceId));
                cmd.Parameters.AddWithValue("@UserID", currentUserID);
                cmd.Parameters.AddWithValue("@Note", (_infor.Note == null ? DBNull.Value : (object)_infor.Note));
                cmd.Parameters.AddWithValue("@DayOfMonth", ((object)_infor.DayOfMonth == null ? DBNull.Value : (object)_infor.DayOfMonth));
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
        public MessageResults EditDeviceRepairDetail(DeviceRepairDetail _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditDeviceRepairDetail";
                cmd.Parameters.AddWithValue("@Contents", (_infor.Contents == null ? DBNull.Value : (object)_infor.Contents));
                cmd.Parameters.AddWithValue("@AssemblyDetail", (_infor.AssemblyDetail == null ? DBNull.Value : (object)_infor.AssemblyDetail));
                cmd.Parameters.AddWithValue("@UserAct", (_infor.UserAct == null ? DBNull.Value : (object)_infor.UserAct));
                cmd.Parameters.AddWithValue("@DeviceId", ((object)_infor.DeviceId == null ? DBNull.Value : (object)_infor.DeviceId));
                cmd.Parameters.AddWithValue("@DayOfMonth", ((object)_infor.DayOfMonth == null ? DBNull.Value : (object)_infor.DayOfMonth));
                cmd.Parameters.AddWithValue("@SupplieList", (_infor.SupplieList == null ? DBNull.Value : (object)_infor.SupplieList));
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
                cmd.CommandText = "DeleteDeviceRepair";
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

