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
    public class DeleteController : Controller
    {
        private readonly ILogger<DeleteController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public DeleteController(ILogger<DeleteController> logger, IConfiguration configuration)
        {
            _logger = logger;
            Configuration = configuration;
        }
        private string currentUserID;
        private string IpAddress;
        public IActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public MessageResults DeletePlanDailyTrouble(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeletePlanDailyTrouble";
                cmd.Parameters.AddWithValue("@Id", Id);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;
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
            }
            finally
            {
                sqlConnection.Close();
            }
            return _result;
        }
        [HttpGet]
        public MessageResults DeletePlanDailyTroubleReport(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeletePlanDailyTroubleReport";
                cmd.Parameters.AddWithValue("@Id", Id);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress); ;
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
            }
            finally
            {
                sqlConnection.Close();
            }
            return _result;
        }
        [HttpGet]
        public MessageResults DeletePlanOverDevice(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@Id", Id);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;
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
            }
            finally
            {
                sqlConnection.Close();
            }
            return _result;
        }
        [HttpGet]
        public MessageResults DeletePlanPeriodicDevice(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@Id", Id);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;
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
            }
            finally
            {
                sqlConnection.Close();
            }
            return _result;
        }
        [HttpGet]
        public MessageResults DeletePlanPeriodicDetail(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@Id", Id);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;
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
            }
            finally
            {
                sqlConnection.Close();
            }
            return _result;
        }
        [HttpGet]
        public MessageResults DeletePlanSupplieDetail(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@Id", Id);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;
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
            }
            finally
            {
                sqlConnection.Close();
            }
            return _result;
        }
        [HttpGet]
        public MessageResults DeletePlanTargetDevice(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@Id", Id);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;
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
            }
            finally
            {
                sqlConnection.Close();
            }
            return _result;
        }
        public MessageResults DeleteDeviceTargetDetail(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@Id", Id);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;
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
            }
            finally
            {
                sqlConnection.Close();
            }
            return _result;
        }
        public MessageResults DeleteSupplieUseDetail(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@Id", Id);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;
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
            }
            finally
            {
                sqlConnection.Close();
            }
            return _result;
        }
    }
}

