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
using System.Net.Http;
using System.Reflection;
using System.Security.Claims;
using System.Threading.Tasks;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    public class RoleController : Controller
    {
        private readonly RoleManager<IdentityRole> _roleManager;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public RoleController(IConfiguration configuration, RoleManager<IdentityRole> roleManager)
        {
            _roleManager = roleManager;
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
                new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Quản lý nhóm người dùng" }, ConnectionString);
            return View();
        }

        public IEnumerable<AspNetRole> Get()
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
                cmd.CommandText = "GetRole";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _roleList = new List<AspNetRole>();
                while (sqlDataReader.Read())
                {
                    var _result = new AspNetRole();
                    _result.Name = sqlDataReader["Name"].ToString();
                    _result.Id = sqlDataReader["Id"].ToString();
                    _result.Description = sqlDataReader["Description"].ToString();
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }

                    _roleList.Add(_result);
                }

                return _roleList;
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
        public async Task<MessageResults> AddRole(string roleName)
        {
            MessageResults _result = new MessageResults();
            try
            {
                // TẠO MỚI
                var newRole = new IdentityRole(roleName);
                // Thực hiện tạo Role mới
                var rsNewRole = await _roleManager.CreateAsync(newRole);
                if (rsNewRole.Succeeded)
                {
                    _result.success = true; _result.Id = 1;
                    _result.message = "Thêm mới thành công";
                    return _result;
                }
                else
                {
                    var StatusMessage = "Error: ";
                    foreach (var er in rsNewRole.Errors)
                    {
                        StatusMessage += er.Description;
                    }
                    _result.success = false; _result.Id = 0;
                    _result.message = StatusMessage;
                    return _result;
                }                
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
                _result.message = "Thêm mới không thành công";
            }
            return _result;
        }
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults Edit(AspNetRole _role)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {              

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditRole";

                cmd.Parameters.AddWithValue("@Id", _role.Id);
                cmd.Parameters.AddWithValue("@Name", (_role.Name == null ? DBNull.Value : (object)_role.Name));
                cmd.Parameters.AddWithValue("@NormalizedName", _role.Name.ToUpper() == null ? DBNull.Value : (object)_role.Name.ToUpper());
                cmd.Parameters.AddWithValue("@Description", _role.Description == null ? DBNull.Value : (object)_role.Description);

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;
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
        // POST: RoleController/Delete/5
        [HttpGet]
        public MessageResults Distroy(string Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeleteRole";
                cmd.Parameters.AddWithValue("@Id", Id);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;
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
