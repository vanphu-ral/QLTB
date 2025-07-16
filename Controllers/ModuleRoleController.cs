using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using Microsoft.Extensions.Logging;
using MledNew2023.MVC.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Reflection;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    public class ModuleRoleController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        private readonly ILogger<ModuleRoleController> _logger;
        public IConfiguration Configuration { get; }
        public ModuleRoleController(ILogger<ModuleRoleController> logger, IConfiguration configuration)
        {
            _logger = logger;
            Configuration = configuration;
        }
        public IActionResult Index()
        {
            return View();
        }

        public IEnumerable<ModuleRole> Get()
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
                cmd.CommandText = "GetModuleRole";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var moduleRoleList = new List<ModuleRole>();
                while (sqlDataReader.Read())
                {
                    var _result = new ModuleRole();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    _result.Name = sqlDataReader["Name"].ToString();
                    _result.Description = sqlDataReader["Description"].ToString();
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }

                    moduleRoleList.Add(_result);
                }

                return moduleRoleList;
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
        public string? Add(ModuleRole moduleRole)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddModuleRole";

                cmd.Parameters.AddWithValue("@Name", (moduleRole.Name == null ? DBNull.Value : (object)moduleRole.Name));
                cmd.Parameters.AddWithValue("@Description", moduleRole.Description == null ? DBNull.Value : (object)moduleRole.Description);
                

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                var result = cmd.ExecuteNonQuery();

                return "Success!";
            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return ex.Message;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public string? Edit(ModuleRole moduleRole)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditModuleRole";

                cmd.Parameters.AddWithValue("@Id", moduleRole.Id);
                cmd.Parameters.AddWithValue("@Name", (moduleRole.Name == null ? DBNull.Value : (object)moduleRole.Name));
                cmd.Parameters.AddWithValue("@Description", moduleRole.Description == null ? DBNull.Value : (object)moduleRole.Description);

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                var result = cmd.ExecuteNonQuery();

                return "Success!";
            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return ex.Message;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        // POST: ModuleRoleController/Delete/5
        [HttpPost]
        [Route("ModuleRole/Delete/{Id}")]
        //[ValidateAntiForgeryToken]
        public int Delete(Int64 Id)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeleteModuleRole";

                cmd.Parameters.AddWithValue("@Id", Id);

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                var result = cmd.ExecuteNonQuery();

                return result;
            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return 0;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
    }
}
