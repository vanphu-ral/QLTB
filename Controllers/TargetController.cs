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
    public class TargetController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        private readonly ILogger<TargetController> _logger;
        public IConfiguration Configuration { get; }
        public TargetController(ILogger<TargetController> logger, IConfiguration configuration)
        {
            _logger = logger;
            Configuration = configuration;
        }
        public IActionResult Index()
        {
            return View();
        }

        public IEnumerable<Target> Get()
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
                cmd.CommandText = "GetTarget";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var TargetList = new List<Target>();
                while (sqlDataReader.Read())
                {
                    var _result = new Target();
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

                    TargetList.Add(_result);
                }

                return TargetList;
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
