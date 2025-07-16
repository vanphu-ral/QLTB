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
    public class UserActiveController : Controller
    {
        private readonly ILogger<UserActiveController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public UserActiveController(ILogger<UserActiveController> logger, IConfiguration configuration)
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
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Quản lý ngành/ban" }, ConnectionString);
            return View();
        }
        public IEnumerable<UserActive> Get(string userId, string startDate, string endDate)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            var UserActiveList = new List<UserActive>();

            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetUserActive";
                cmd.Parameters.AddWithValue("@UserId", String.IsNullOrEmpty(userId) ? DBNull.Value : (object)userId);
                cmd.Parameters.AddWithValue("@startDate", String.IsNullOrEmpty(startDate) ? DBNull.Value : (object)startDate);
                cmd.Parameters.AddWithValue("@endDate", String.IsNullOrEmpty(endDate) ? DBNull.Value : (object)endDate);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    var _result = new UserActive();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    _result.IpAddress = sqlDataReader["IpAddress"].ToString();
                    _result.UserId = sqlDataReader["UserId"].ToString();
                    _result.UserName = sqlDataReader["UserName"].ToString();
_result.FullName = sqlDataReader["FullName"].ToString();

                    if (!(sqlDataReader["DateActive"] is DBNull))
                    {
                        _result.DateActive = DateTime.Parse(String.Format("{0}", sqlDataReader["DateActive"])).ToString("dd/MM/yyyy HH:mm:ss");
                    }
                    _result.LogContent = sqlDataReader["LogContent"].ToString();
                    UserActiveList.Add(_result);
                }

                return UserActiveList;
            }
            catch (Exception ex)
            {

                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return UserActiveList;
            }
            finally
            {
                sqlConnection.Close();
            }
        }

        public MessageResults DeleteUserActive(string userId, string startDate, string endDate)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            MessageResults _result = new MessageResults();
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeleteUserActive";
                cmd.Parameters.AddWithValue("@UserId", String.IsNullOrEmpty(userId) ? DBNull.Value : (object)userId);
                cmd.Parameters.AddWithValue("@startDate", String.IsNullOrEmpty(startDate) ? DBNull.Value : (object)startDate);
                cmd.Parameters.AddWithValue("@endDate", String.IsNullOrEmpty(endDate) ? DBNull.Value : (object)endDate);
                ClaimsPrincipal currentUser = this.User;
                string currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                string IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress);
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
                return _result;
            }
            finally
            {
                sqlConnection.Close();
            }
        }

    }
}
