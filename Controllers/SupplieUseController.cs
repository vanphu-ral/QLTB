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
    public class SupplieUseController : Controller
    {
        private readonly ILogger<SupplieUseController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public SupplieUseController(ILogger<SupplieUseController> logger, IConfiguration configuration)
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
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Quản lý kế hoạch vật tư" }, ConnectionString);
            return View();
        }       
        [HttpGet]
        public SupplieUse GetSupplieUse(int month, int year, Int64 BranchId, Int64 FactoryId)
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
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@month", (object)month != null ? month : 0);
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new SupplieUse();
                int indexItem = 0;
                List<SupplieUseDetail> _listplanDevice = new List<SupplieUseDetail>();
                while (sqlDataReader.Read())
                {
                    if (indexItem == 0)
                    {
                        if (!(sqlDataReader["SupplieUseId"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["SupplieUseId"]));
                        }
                    }
                    else
                    {
                        SupplieUseDetail _planDevice = new SupplieUseDetail();
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _planDevice.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        if (!(sqlDataReader["SupplieUseId"] is DBNull)) _planDevice.SupplieUseId = Int64.Parse(String.Format("{0}", sqlDataReader["SupplieUseId"]));
                        if (!(sqlDataReader["SupplieId"] is DBNull)) _planDevice.SupplieId = int.Parse(String.Format("{0}", sqlDataReader["SupplieId"]));
                        _planDevice.BranchName = sqlDataReader["BranchName"].ToString();
                        _planDevice.FactoryName = sqlDataReader["FactoryName"].ToString();
                        _planDevice.SupplieName = sqlDataReader["SupplieName"].ToString();
                        _planDevice.SupplieCode = sqlDataReader["SupplieCode"].ToString();
                        _planDevice.NumberNote = sqlDataReader["NumberNote"].ToString();
                        _planDevice.Origin = sqlDataReader["Origin"].ToString();
                        if (!(sqlDataReader["Quantity"] is DBNull)) _planDevice.Quantity = Int64.Parse(String.Format("{0}", sqlDataReader["Quantity"]));
                        _planDevice.Belonging = sqlDataReader["Belonging"].ToString();
                        _planDevice.BelongingName = sqlDataReader["BelongingName"].ToString();
                        if (!(sqlDataReader["Price"] is DBNull)) _planDevice.Price = Int64.Parse(String.Format("{0}", sqlDataReader["Price"]));
                        if (!(sqlDataReader["ToMoney"] is DBNull)) _planDevice.ToMoney = Int64.Parse(String.Format("{0}", sqlDataReader["ToMoney"]));
                        if (!(sqlDataReader["TeamId"] is DBNull)) _planDevice.TeamId = int.Parse(String.Format("{0}", sqlDataReader["TeamId"]));
                        _planDevice.TeamName = sqlDataReader["TeamName"].ToString();
                        _listplanDevice.Add(_planDevice);
                    }
                    _result.SupplieUseDetailList = _listplanDevice;
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
        public MessageResults AddSupplieUseDevice(int TeamId, int SupplieId, int SupplieUseId)
        {
            MessageResults _result = new MessageResults();
            _result.success = false; _result.Id = 0;

            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@TeamId", (object)TeamId);
                cmd.Parameters.AddWithValue("@SupplieId", (object)SupplieId);
                cmd.Parameters.AddWithValue("@SupplieUseId", (object)SupplieUseId);
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
        public MessageResults EditSupplieUseDetail(SupplieUseDetail _infor)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@SupplieUseId", ((object)_infor.SupplieUseId == null ? DBNull.Value : (object)_infor.SupplieUseId));
                cmd.Parameters.AddWithValue("@SupplieId", ((object)_infor.SupplieId == null ? DBNull.Value : (object)_infor.SupplieId));
                cmd.Parameters.AddWithValue("@Quantity", ((object)_infor.Quantity == null ? DBNull.Value : (object)_infor.Quantity));
                cmd.Parameters.AddWithValue("@Price", ((object)_infor.Price == null ? DBNull.Value : (object)_infor.Price));
                cmd.Parameters.AddWithValue("@ToMoney", ((object)_infor.ToMoney == null ? DBNull.Value : (object)_infor.ToMoney));
                cmd.Parameters.AddWithValue("@TeamId", ((object)_infor.TeamId == null ? DBNull.Value : (object)_infor.TeamId));
                cmd.Parameters.AddWithValue("@LineId", ((object)_infor.LineId == null ? DBNull.Value : (object)_infor.LineId));
                cmd.Parameters.AddWithValue("@Belonging", (_infor.Belonging == null ? DBNull.Value : (object)_infor.Belonging));
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
 
    }
}
