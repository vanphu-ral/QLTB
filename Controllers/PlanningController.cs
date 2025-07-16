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
    public class PlanningController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        private readonly ILogger<PlanningController> _logger;
        public IConfiguration Configuration { get; }
        public PlanningController(ILogger<PlanningController> logger, IConfiguration configuration)
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
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "Lập kế hoạch"
            }, ConnectionString);
            return View();
        }
        public IActionResult PlanDaily()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "Lập kế hoạch"
            }, ConnectionString);

            return View();
        }
        public IActionResult PlanPeriodic()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "Lập kế hoạch"
            }, ConnectionString);

            return View();
        }
        public IActionResult PlanOver()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "Lập kế hoạch"
            }, ConnectionString);

            return View();
        }
        public IActionResult PlanSupplie()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "Lập kế hoạch"
            }, ConnectionString);

            return View();
        }
        public IActionResult PlanTarget()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "Lập kế hoạch"
            }, ConnectionString);

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
                cmd.CommandText = "GetPlanning";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var PlanningList = new List<PlanPeriodicDevice>();
                while (sqlDataReader.Read())
                {
                    var _result = new PlanPeriodicDevice();
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
        [HttpPost]
        public IEnumerable<PlanPeriodicDevice> GetPlanPeriodic()
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
                while (sqlDataReader.Read())
                {
                    var _result = new PlanPeriodicDevice();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }

                    _result.Year = int.Parse(String.Format("{0}", sqlDataReader["PlanNumber"]));
                    _result.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["PlanNumber"]));
                    _result.BranchId = int.Parse(String.Format("{0}", sqlDataReader["PlanNumber"]));
                    _result.DatePlan = sqlDataReader["PlanNumber"].ToString();
                    _result.UserPlan = int.Parse(String.Format("{0}", sqlDataReader["UserPlan"]));
                    _result.DateBranch = sqlDataReader["DateBranch"].ToString();
                    _result.UserBranch = int.Parse(String.Format("{0}", sqlDataReader["UserBranch"]));
                    _result.DateFactory = sqlDataReader["DateFactory"].ToString();
                    _result.UserFactory = int.Parse(String.Format("{0}", sqlDataReader["UserFactory"]));
                    _result.DateAuthority = sqlDataReader["DateAuthority"].ToString();
                    _result.UserAuthority = int.Parse(String.Format("{0}", sqlDataReader["UserAuthority"]));
                    _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
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
    }
}
