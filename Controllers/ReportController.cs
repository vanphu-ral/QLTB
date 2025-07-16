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
using System.Linq;
using System.Reflection;
using System.Security.Claims;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    public class ReportController : Controller
    {
        private readonly ILogger<ReportController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public ReportController(ILogger<ReportController> logger, IConfiguration configuration)
        {
            _logger = logger;
            Configuration = configuration;
        }
        private string currentUserID;
        private string IpAddress;
        public IActionResult Report1()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "BCSD vật tư, phụ tùng"
            }, ConnectionString);

            return View();
        }
        public IActionResult Report2()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress); ;
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "Sổ theo dõi BD thiết bị"
            }, ConnectionString);

            return View();
        }
        public IActionResult Report3()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress); ;
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "Sổ theo dõi SC thiết bị"
            }, ConnectionString);

            return View();
        }
        public IActionResult Report4()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress); ;
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "KQPT dự báo tình trạng TB"
            }, ConnectionString);

            return View();
        }
        public IActionResult Report5()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress); ;
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "BCTK Tình trạng thiết bị"
            }, ConnectionString);

            return View();
        }
        public IActionResult Report6()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress); ;
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "BC sự cố và dừng thiết bị"
            }, ConnectionString);

            return View();
        }
        public IActionResult Report7()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress); ;
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "BCKQ mục tiêu thiết bị"
            }, ConnectionString);

            return View();
        }
        public IActionResult Report8()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress); ;
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "BCTK thông tin thiết bị"
            }, ConnectionString);

            return View();
        }
        public IActionResult Index()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress); ;
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults
            {
                Id = 0,
                message = "Xem chức năng",
                Tittle = "Báo cáo"
            }, ConnectionString);

            return View();
        }

        [HttpGet]
        public DeviceTarget GetReport1(Int32 month, Int32 year, Int64 BranchId, Int64 FactoryId)
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
                cmd.CommandText = "GetReport1";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@month", (object)month != null ? month : 0);
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

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
                    }
                    else
                    {
                        DeviceTargetDetail _planDevice = new DeviceTargetDetail();
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _planDevice.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        _planDevice.DeviceTargetId = int.Parse(String.Format("{0}", sqlDataReader["DeviceTargetId"]));
                        _planDevice.Contents = sqlDataReader["Contents"].ToString();
                        _planDevice.ResultAct = sqlDataReader["ResultAct"].ToString();
                        _planDevice.Targets = sqlDataReader["Targets"].ToString();
                        _planDevice.PlanContent = sqlDataReader["PlanContent"].ToString();
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
        public IEnumerable<ReportNumberBigTrouble> GetReportCostOfSupplieMonth(int month, int year, Int64 BranchId, Int64 FactoryId)
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
                cmd.Parameters.AddWithValue("@month", (object)month != null ? month : 0);
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.CommandText = "GetReportCostOfSupplieMonth";

                SqlDataReader sqlDataReader = cmd.ExecuteReader();


                var _numberBigTrouble = new List<ReportNumberBigTrouble>();
                while (sqlDataReader.Read())
                {
                    var _result = new ReportNumberBigTrouble();

                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    _result.Name = sqlDataReader["Name"].ToString();

                    if (!(sqlDataReader["MONTH01"] is DBNull))
                    {
                        _result.MONTH01 = int.Parse(String.Format("{0}", sqlDataReader["MONTH01"]));
                    }
                    if (!(sqlDataReader["MONTH01"] is DBNull))
                    {
                        _result.MONTH01 = int.Parse(String.Format("{0}", sqlDataReader["MONTH01"]));
                    }
                    if (!(sqlDataReader["MONTH02"] is DBNull))
                    {
                        _result.MONTH02 = int.Parse(String.Format("{0}", sqlDataReader["MONTH02"]));
                    }
                    if (!(sqlDataReader["MONTH03"] is DBNull))
                    {
                        _result.MONTH03 = int.Parse(String.Format("{0}", sqlDataReader["MONTH03"]));
                    }
                    if (!(sqlDataReader["MONTH04"] is DBNull))
                    {
                        _result.MONTH04 = int.Parse(String.Format("{0}", sqlDataReader["MONTH04"]));
                    }
                    if (!(sqlDataReader["MONTH05"] is DBNull))
                    {
                        _result.MONTH05 = int.Parse(String.Format("{0}", sqlDataReader["MONTH05"]));
                    }
                    if (!(sqlDataReader["MONTH06"] is DBNull))
                    {
                        _result.MONTH06 = int.Parse(String.Format("{0}", sqlDataReader["MONTH06"]));
                    }
                    if (!(sqlDataReader["MONTH07"] is DBNull))
                    {
                        _result.MONTH07 = int.Parse(String.Format("{0}", sqlDataReader["MONTH07"]));
                    }
                    if (!(sqlDataReader["MONTH08"] is DBNull))
                    {
                        _result.MONTH08 = int.Parse(String.Format("{0}", sqlDataReader["MONTH08"]));
                    }
                    if (!(sqlDataReader["MONTH09"] is DBNull))
                    {
                        _result.MONTH09 = int.Parse(String.Format("{0}", sqlDataReader["MONTH09"]));
                    }
                    if (!(sqlDataReader["MONTH10"] is DBNull))
                    {
                        _result.MONTH10 = int.Parse(String.Format("{0}", sqlDataReader["MONTH10"]));
                    }
                    if (!(sqlDataReader["MONTH11"] is DBNull))
                    {
                        _result.MONTH11 = int.Parse(String.Format("{0}", sqlDataReader["MONTH11"]));
                    }
                    if (!(sqlDataReader["MONTH12"] is DBNull))
                    {
                        _result.MONTH12 = int.Parse(String.Format("{0}", sqlDataReader["MONTH12"]));
                    }

                    _numberBigTrouble.Add(_result);
                    //ViewBag.TotalDeivces = _CurDeviceInLineList.Count();
                }


                return _numberBigTrouble;

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
        public IEnumerable<ReportCurLineSum> GetReportCurLineSum(Int64 CurBranchId, string startDate, string endDate)
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
                cmd.CommandText = "GetReportCurLineSum";

                cmd.Parameters.AddWithValue("@CurBranchId", (object)CurBranchId != null ? CurBranchId : 0);
                cmd.Parameters.AddWithValue("@startDate", String.IsNullOrEmpty(startDate) ? DBNull.Value : (object)startDate);
                cmd.Parameters.AddWithValue("@endDate", String.IsNullOrEmpty(endDate) ? DBNull.Value : (object)endDate);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _CurDeviceInLineList = new List<ReportCurLineSum>();
                while (sqlDataReader.Read())
                {
                    var _result = new ReportCurLineSum();
                    //if (!(sqlDataReader["Id"] is DBNull))
                    //{
                    //    _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    //}
                    _result.LineName = sqlDataReader["LineName"].ToString();
                    _result.GroupName = sqlDataReader["GroupName"].ToString();
                    if (!(sqlDataReader["QuantityDevice"] is DBNull))
                    {
                        _result.QuantityDevice = int.Parse(String.Format("{0}", sqlDataReader["QuantityDevice"]));
                    }

                    _CurDeviceInLineList.Add(_result);
                    //ViewBag.TotalDeivces = _CurDeviceInLineList.Count();
                }


                return _CurDeviceInLineList;

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
        public IEnumerable<CurLineSum> GetLineSum(Int64 CurBranchId)
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
                cmd.CommandText = "GetCurLineSum";

                cmd.Parameters.AddWithValue("@CurBranchId", (object)CurBranchId != null ? CurBranchId : 0);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _CurLineSum = new List<CurLineSum>();
                while (sqlDataReader.Read())
                {
                    var _result = new CurLineSum();
                    _result.BranchName = sqlDataReader["BranchName"].ToString();
                    if (!(sqlDataReader["LineSum"] is DBNull))
                    {
                        _result.LineSum = int.Parse(String.Format("{0}", sqlDataReader["LineSum"]));
                    }
                    if (!(sqlDataReader["DeviceSum"] is DBNull))
                    {
                        _result.DeviceSum = int.Parse(String.Format("{0}", sqlDataReader["DeviceSum"]));
                    }
                    _CurLineSum.Add(_result);
                }


                return _CurLineSum;

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
        public IEnumerable<CurDeviceInLine> GetCurDeviceInLine(Int64 CurBranchId)
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
                cmd.CommandText = "GetCurDeviceInLine";

                cmd.Parameters.AddWithValue("@CurBranchId", (object)CurBranchId != null ? CurBranchId : 0);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _CurDeviceInLine = new List<CurDeviceInLine>();
                while (sqlDataReader.Read())
                {
                    var _result = new CurDeviceInLine();
                    _result.LineName = sqlDataReader["LineName"].ToString();
                    if (!(sqlDataReader["DeviceInLIne"] is DBNull))
                    {
                        _result.DeviceInLine = int.Parse(String.Format("{0}", sqlDataReader["DeviceInLine"]));
                    }
                    _CurDeviceInLine.Add(_result);
                    //ViewBag.TotalDeivces = _CurDeviceInLineList.Count();
                }


                return _CurDeviceInLine;

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
        public IEnumerable<ReportMaintenanceTracking> GetReportMaintenanceTracking(int TimeStop, int month, int year, Int64 BranchId, Int64 FactoryId, Int64 DeviceId)
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
                cmd.CommandText = "GetReportMaintenanceTracking";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@DeviceId", (object)DeviceId != null ? DeviceId : 0);
                cmd.Parameters.AddWithValue("@TimeStop", (object)TimeStop != null ? TimeStop : 0);
                cmd.Parameters.AddWithValue("@month", (object)month != null ? month : 0);
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _contentList = new List<ReportMaintenanceTracking>();
                while (sqlDataReader.Read())
                {
                    var _result = new ReportMaintenanceTracking();
                    if (!(sqlDataReader["DatePlan"] is DBNull))
                    {
                        _result.DatePlan = DateTime.Parse(String.Format("{0}", sqlDataReader["DatePlan"])).ToString("dd/MM/yyyy");
                    }
                    _result.ContentAct = sqlDataReader["ContentAct"].ToString();
                    _result.StopHour = String.Format("{0}", sqlDataReader["StopHour"]);
                    _result.IsTrouble = int.Parse(String.Format("{0}", sqlDataReader["IsTrouble"]));
                    _result.UserAct = sqlDataReader["UserAct"].ToString();
                    _result.SupplieName = sqlDataReader["SupplieName"].ToString();
                    _result.Note = sqlDataReader["Note"].ToString();
                    _result.COLVAL01 = sqlDataReader["COLVAL01"].ToString();
                    _result.COLVAL02 = sqlDataReader["COLVAL02"].ToString();
                    _result.COLVAL03 = sqlDataReader["COLVAL03"].ToString();
                    _result.COLVAL04 = sqlDataReader["COLVAL04"].ToString();
                    _result.COLVAL05 = sqlDataReader["COLVAL05"].ToString();
                    _result.COLVAL06 = sqlDataReader["COLVAL06"].ToString();
                    _result.COLVAL07 = sqlDataReader["COLVAL07"].ToString();
                    _result.COLVAL08 = sqlDataReader["COLVAL08"].ToString();
                    _result.COLVAL09 = sqlDataReader["COLVAL09"].ToString();
                    _result.COLVAL10 = sqlDataReader["COLVAL10"].ToString();
                    _contentList.Add(_result);
                }
                return _contentList;

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
        public IEnumerable<ReportNumberBigTrouble> GetReportNumberBigTrouble(int DeviceId)
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
                cmd.CommandText = "GetReportNumberBigTrouble"; 
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@DeviceId", DeviceId);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _numberBigTrouble = new List<ReportNumberBigTrouble>();
                while (sqlDataReader.Read())
                {
                    var _result = new ReportNumberBigTrouble();

                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    _result.Name = sqlDataReader["Name"].ToString();

                    if (!(sqlDataReader["MONTH01"] is DBNull))
                    {
                        _result.MONTH01 = int.Parse(String.Format("{0}", sqlDataReader["MONTH01"]));
                    }
                    if (!(sqlDataReader["MONTH01"] is DBNull))
                    {
                        _result.MONTH01 = int.Parse(String.Format("{0}", sqlDataReader["MONTH01"]));
                    }
                    if (!(sqlDataReader["MONTH02"] is DBNull))
                    {
                        _result.MONTH02 = int.Parse(String.Format("{0}", sqlDataReader["MONTH02"]));
                    }
                    if (!(sqlDataReader["MONTH03"] is DBNull))
                    {
                        _result.MONTH03 = int.Parse(String.Format("{0}", sqlDataReader["MONTH03"]));
                    }
                    if (!(sqlDataReader["MONTH04"] is DBNull))
                    {
                        _result.MONTH04 = int.Parse(String.Format("{0}", sqlDataReader["MONTH04"]));
                    }
                    if (!(sqlDataReader["MONTH05"] is DBNull))
                    {
                        _result.MONTH05 = int.Parse(String.Format("{0}", sqlDataReader["MONTH05"]));
                    }
                    if (!(sqlDataReader["MONTH06"] is DBNull))
                    {
                        _result.MONTH06 = int.Parse(String.Format("{0}", sqlDataReader["MONTH06"]));
                    }
                    if (!(sqlDataReader["MONTH07"] is DBNull))
                    {
                        _result.MONTH07 = int.Parse(String.Format("{0}", sqlDataReader["MONTH07"]));
                    }
                    if (!(sqlDataReader["MONTH08"] is DBNull))
                    {
                        _result.MONTH08 = int.Parse(String.Format("{0}", sqlDataReader["MONTH08"]));
                    }
                    if (!(sqlDataReader["MONTH09"] is DBNull))
                    {
                        _result.MONTH09 = int.Parse(String.Format("{0}", sqlDataReader["MONTH09"]));
                    }
                    if (!(sqlDataReader["MONTH10"] is DBNull))
                    {
                        _result.MONTH10 = int.Parse(String.Format("{0}", sqlDataReader["MONTH10"]));
                    }
                    if (!(sqlDataReader["MONTH11"] is DBNull))
                    {
                        _result.MONTH11 = int.Parse(String.Format("{0}", sqlDataReader["MONTH11"]));
                    }
                    if (!(sqlDataReader["MONTH12"] is DBNull))
                    {
                        _result.MONTH12 = int.Parse(String.Format("{0}", sqlDataReader["MONTH12"]));
                    }

                    _numberBigTrouble.Add(_result);
                    //ViewBag.TotalDeivces = _CurDeviceInLineList.Count();
                }


                return _numberBigTrouble;

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
        public IEnumerable<ReportNumberBigTrouble> GetReportTimeStopTrouble(int DeviceId)
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
                cmd.CommandText = "GetReportTimeStopTrouble"; 
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@DeviceId", DeviceId);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _numberBigTrouble = new List<ReportNumberBigTrouble>();
                while (sqlDataReader.Read())
                {
                    var _result = new ReportNumberBigTrouble();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    _result.Name = sqlDataReader["Name"].ToString();

                    if (!(sqlDataReader["MONTH01"] is DBNull))
                    {
                        _result.MONTH01 = int.Parse(String.Format("{0}", sqlDataReader["MONTH01"]));
                    }
                    if (!(sqlDataReader["MONTH02"] is DBNull))
                    {
                        _result.MONTH02 = int.Parse(String.Format("{0}", sqlDataReader["MONTH02"]));
                    }
                    if (!(sqlDataReader["MONTH03"] is DBNull))
                    {
                        _result.MONTH03 = int.Parse(String.Format("{0}", sqlDataReader["MONTH03"]));
                    }
                    if (!(sqlDataReader["MONTH04"] is DBNull))
                    {
                        _result.MONTH04 = int.Parse(String.Format("{0}", sqlDataReader["MONTH04"]));
                    }
                    if (!(sqlDataReader["MONTH05"] is DBNull))
                    {
                        _result.MONTH05 = int.Parse(String.Format("{0}", sqlDataReader["MONTH05"]));
                    }
                    if (!(sqlDataReader["MONTH06"] is DBNull))
                    {
                        _result.MONTH06 = int.Parse(String.Format("{0}", sqlDataReader["MONTH06"]));
                    }
                    if (!(sqlDataReader["MONTH07"] is DBNull))
                    {
                        _result.MONTH07 = int.Parse(String.Format("{0}", sqlDataReader["MONTH07"]));
                    }
                    if (!(sqlDataReader["MONTH08"] is DBNull))
                    {
                        _result.MONTH08 = int.Parse(String.Format("{0}", sqlDataReader["MONTH08"]));
                    }
                    if (!(sqlDataReader["MONTH09"] is DBNull))
                    {
                        _result.MONTH09 = int.Parse(String.Format("{0}", sqlDataReader["MONTH09"]));
                    }
                    if (!(sqlDataReader["MONTH10"] is DBNull))
                    {
                        _result.MONTH10 = int.Parse(String.Format("{0}", sqlDataReader["MONTH10"]));
                    }
                    if (!(sqlDataReader["MONTH11"] is DBNull))
                    {
                        _result.MONTH11 = int.Parse(String.Format("{0}", sqlDataReader["MONTH11"]));
                    }
                    if (!(sqlDataReader["MONTH12"] is DBNull))
                    {
                        _result.MONTH12 = int.Parse(String.Format("{0}", sqlDataReader["MONTH12"]));
                    }

                    _numberBigTrouble.Add(_result);
                    //ViewBag.TotalDeivces = _CurDeviceInLineList.Count();
                }


                return _numberBigTrouble;

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
        public IEnumerable<ReportNumberBigTrouble> GetReportNumberThietBiOverThreshold(int DeviceId)
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
                cmd.CommandText = "GetReportNumberThietBiOverThreshold"; 
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@DeviceId", DeviceId);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _numberBigTrouble = new List<ReportNumberBigTrouble>();
                while (sqlDataReader.Read())
                {
                    var _result = new ReportNumberBigTrouble();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    _result.Name = sqlDataReader["Name"].ToString();

                    if (!(sqlDataReader["MONTH01"] is DBNull))
                    {
                        _result.MONTH01 = int.Parse(String.Format("{0}", sqlDataReader["MONTH01"]));
                    }
                    if (!(sqlDataReader["MONTH02"] is DBNull))
                    {
                        _result.MONTH02 = int.Parse(String.Format("{0}", sqlDataReader["MONTH02"]));
                    }
                    if (!(sqlDataReader["MONTH03"] is DBNull))
                    {
                        _result.MONTH03 = int.Parse(String.Format("{0}", sqlDataReader["MONTH03"]));
                    }
                    if (!(sqlDataReader["MONTH04"] is DBNull))
                    {
                        _result.MONTH04 = int.Parse(String.Format("{0}", sqlDataReader["MONTH04"]));
                    }
                    if (!(sqlDataReader["MONTH05"] is DBNull))
                    {
                        _result.MONTH05 = int.Parse(String.Format("{0}", sqlDataReader["MONTH05"]));
                    }
                    if (!(sqlDataReader["MONTH06"] is DBNull))
                    {
                        _result.MONTH06 = int.Parse(String.Format("{0}", sqlDataReader["MONTH06"]));
                    }
                    if (!(sqlDataReader["MONTH07"] is DBNull))
                    {
                        _result.MONTH07 = int.Parse(String.Format("{0}", sqlDataReader["MONTH07"]));
                    }
                    if (!(sqlDataReader["MONTH08"] is DBNull))
                    {
                        _result.MONTH08 = int.Parse(String.Format("{0}", sqlDataReader["MONTH08"]));
                    }
                    if (!(sqlDataReader["MONTH09"] is DBNull))
                    {
                        _result.MONTH09 = int.Parse(String.Format("{0}", sqlDataReader["MONTH09"]));
                    }
                    if (!(sqlDataReader["MONTH10"] is DBNull))
                    {
                        _result.MONTH10 = int.Parse(String.Format("{0}", sqlDataReader["MONTH10"]));
                    }
                    if (!(sqlDataReader["MONTH11"] is DBNull))
                    {
                        _result.MONTH11 = int.Parse(String.Format("{0}", sqlDataReader["MONTH11"]));
                    }
                    if (!(sqlDataReader["MONTH12"] is DBNull))
                    {
                        _result.MONTH12 = int.Parse(String.Format("{0}", sqlDataReader["MONTH12"]));
                    }

                    _numberBigTrouble.Add(_result);
                    //ViewBag.TotalDeivces = _CurDeviceInLineList.Count();
                }


                return _numberBigTrouble;

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
        public IEnumerable<ReportUsedSupplie> GetReportUsedSupplie(int month, int year, Int64 BranchId, Int64 FactoryId)
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
                cmd.CommandText = "GetReportUsedSupplie";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@month", (object)month != null ? month : 0);
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                cmd.Parameters.AddWithValue("@FactoryId", (object)FactoryId != null ? FactoryId : 0);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _usedSupplieList = new List<ReportUsedSupplie>();
                while (sqlDataReader.Read())
                {
                    var _result = new ReportUsedSupplie();
                    _result.TeamName = sqlDataReader["TeamName"].ToString();
                    _result.SupplieName = sqlDataReader["SupplieName"].ToString();
                    _result.SupplieCode = sqlDataReader["SupplieCode"].ToString();
                    _result.Unit = sqlDataReader["Unit"].ToString();
                    if (!(sqlDataReader["Quantity"] is DBNull))
                    {
                        _result.Quantity = int.Parse(String.Format("{0}", sqlDataReader["Quantity"]));
                    }
                    if (!(sqlDataReader["Price"] is DBNull))
                    {
                        _result.Price = int.Parse(String.Format("{0}", sqlDataReader["Price"]));
                    }
                    if (!(sqlDataReader["ToMoney"] is DBNull))
                    {
                        _result.ToMoney = int.Parse(String.Format("{0}", sqlDataReader["ToMoney"]));
                    }
                    _result.Uses = sqlDataReader["Uses"].ToString();
                    _usedSupplieList.Add(_result);
                }
                var a = _usedSupplieList.GroupBy(_result => _result.TeamName);


                return _usedSupplieList;
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
        public IEnumerable<ReportDeviceOperationTime> GetReportDeviceOperationTime(int month, int year)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetReportDeviceOperationTime";
                cmd.Parameters.AddWithValue("@month", (object)month != null ? month : 0);
                cmd.Parameters.AddWithValue("@year", (object)year != null ? year : 0);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _deviceOperationTime = new List<ReportDeviceOperationTime>();
                while (sqlDataReader.Read())
                {
                    var _result = new ReportDeviceOperationTime();
                    if (!(sqlDataReader["DayNum"] is DBNull))
                    {
                        _result.DayNum = DateTime.Parse(String.Format("{0}", sqlDataReader["DayNum"])).ToString("dd/MM/yyyy");
                    }
                    if (!(sqlDataReader["RunningTime"] is DBNull)) _result.RunningTime = decimal.Parse(String.Format("{0}", sqlDataReader["RunningTime"]));
                    else _result.RunningTime = 0;
                    if (!(sqlDataReader["StopTime"] is DBNull)) _result.StopTime = decimal.Parse(String.Format("{0}", sqlDataReader["StopTime"]));
                    else _result.StopTime = 0;
                    if (!(sqlDataReader["OperationTime"] is DBNull)) _result.OperationTime = decimal.Parse(String.Format("{0}", sqlDataReader["OperationTime"]));
                    else _result.OperationTime = 0;

                    _deviceOperationTime.Add(_result);
                }
                _logger.LogInformation("GET Seccess");
                return _deviceOperationTime;
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
        public IEnumerable<InforReportDetail> GetInforDetaiReport(int numberReport, int Index, Int64 BranchID)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                List<InforReportDetail> recordList = new List<InforReportDetail>();
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetInforDetaiReport";
                cmd.Parameters.AddWithValue("@NumberReport", ((object)numberReport == null ? DBNull.Value : (object)numberReport));
                cmd.Parameters.AddWithValue("@Index", ((object)Index == null ? DBNull.Value : (object)Index));
                cmd.Parameters.AddWithValue("@BranchID", ((object)BranchID == null ? DBNull.Value : (object)BranchID));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    InforReportDetail sitem = new InforReportDetail();
                    if (sqlDataReader["Col1"] != DBNull.Value) sitem.Col1 = sqlDataReader["Col1"].ToString();
                    if (sqlDataReader["Col2"] != DBNull.Value) sitem.Col2 = sqlDataReader["Col2"].ToString();
                    if (sqlDataReader["Col3"] != DBNull.Value) sitem.Col3 = sqlDataReader["Col3"].ToString();
                    if (sqlDataReader["Col4"] != DBNull.Value) sitem.Col4 = sqlDataReader["Col4"].ToString();
                    if (sqlDataReader["Col5"] != DBNull.Value) sitem.Col4 = sqlDataReader["Col5"].ToString();
                    if (sqlDataReader["Col6"] != DBNull.Value) sitem.Col6 = sqlDataReader["Col6"].ToString();
                    if (sqlDataReader["Col7"] != DBNull.Value) sitem.Col7 = sqlDataReader["Col7"].ToString();
                    if (sqlDataReader["Col8"] != DBNull.Value) sitem.Col8 = sqlDataReader["Col8"].ToString();
                    recordList.Add(sitem);
                }
                return recordList;

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
        public InforReport GetInforReport(int numberReport, Int64 BranchID)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                InforReport recordInfor = new InforReport();
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetInforReport";
                cmd.Parameters.AddWithValue("@NumberReport", ((object)numberReport == null ? DBNull.Value : (object)numberReport));
                cmd.Parameters.AddWithValue("@BranchID", ((object)BranchID == null ? DBNull.Value : (object)BranchID));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    recordInfor.LabelContent1 = sqlDataReader["LabelContent1"].ToString();
                    recordInfor.LabelContent2 = sqlDataReader["LabelContent2"].ToString();
                    recordInfor.LabelContent3 = sqlDataReader["LabelContent3"].ToString();
                    recordInfor.LabelContent4 = sqlDataReader["LabelContent4"].ToString();
                    if (!(sqlDataReader["VAl1_1"] is DBNull)) recordInfor.VAl1_1 = int.Parse(String.Format("{0}", sqlDataReader["VAl1_1"]));
                    if (!(sqlDataReader["VAl1_2"] is DBNull)) recordInfor.VAl1_2 = int.Parse(String.Format("{0}", sqlDataReader["VAl1_2"]));
                    if (!(sqlDataReader["VAl2_1"] is DBNull)) recordInfor.VAl2_1 = int.Parse(String.Format("{0}", sqlDataReader["VAl2_1"]));
                    if (!(sqlDataReader["VAl2_2"] is DBNull)) recordInfor.VAl2_2 = int.Parse(String.Format("{0}", sqlDataReader["VAl2_2"]));
                    if (!(sqlDataReader["VAl3_1"] is DBNull)) recordInfor.VAl3_1 = int.Parse(String.Format("{0}", sqlDataReader["VAl3_1"]));
                    if (!(sqlDataReader["VAl3_2"] is DBNull)) recordInfor.VAl3_2 = int.Parse(String.Format("{0}", sqlDataReader["VAl3_2"]));
                    if (!(sqlDataReader["VAl4_1"] is DBNull)) recordInfor.VAl4_1 = int.Parse(String.Format("{0}", sqlDataReader["VAl4_1"]));
                    if (!(sqlDataReader["VAl4_2"] is DBNull)) recordInfor.VAl4_2 = int.Parse(String.Format("{0}", sqlDataReader["VAl4_2"]));
                }
                return recordInfor;
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
        public IEnumerable<ReportDeviceStatus>GetReport4DeviceAIStatusForDonutChart(int DeviceId, int syear, int smonth)
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
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@DeviceId", DeviceId);
                cmd.Parameters.AddWithValue("@syear", syear);
                cmd.Parameters.AddWithValue("@smonth", smonth);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _deviceOperationTime = new List<ReportDeviceStatus>();
                while (sqlDataReader.Read())
                {
                    var _result = new ReportDeviceStatus();
                    if (!(sqlDataReader["ValSUM"] is DBNull)) _result.ValSUM = int.Parse(String.Format("{0}", sqlDataReader["ValSUM"]));
                    else _result.ValSUM = 0;
                    if (!(sqlDataReader["ValGreen"] is DBNull)) _result.ValGreen = int.Parse(String.Format("{0}", sqlDataReader["ValGreen"]));
                    else _result.ValGreen = 0;
                    if (!(sqlDataReader["ValOrange"] is DBNull)) _result.ValOrange = int.Parse(String.Format("{0}", sqlDataReader["ValOrange"]));
                    else _result.ValOrange = 0;
                    if (!(sqlDataReader["ValRed"] is DBNull)) _result.ValRed = int.Parse(String.Format("{0}", sqlDataReader["ValRed"]));
                    else _result.ValRed = 0;
                    _deviceOperationTime.Add(_result);
                }
                _logger.LogInformation("GET Seccess");
                return _deviceOperationTime;
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
        public IEnumerable<ReportNumberInYear> GetReport4ForLineChart(int DeviceId, int syear, int smonth)
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
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@DeviceId", DeviceId);
                cmd.Parameters.AddWithValue("@syear", syear);
                cmd.Parameters.AddWithValue("@smonth", smonth);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _numberBigTrouble = new List<ReportNumberInYear>();
                while (sqlDataReader.Read())
                {
                    var _result = new ReportNumberInYear();

                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    _result.Name = sqlDataReader["Name"].ToString();
                    _result.Item01 = sqlDataReader["Item01"].ToString();
                    _result.Item02 = sqlDataReader["Item02"].ToString();
                    _result.Item03 = sqlDataReader["Item03"].ToString();
                    _result.Item04 = sqlDataReader["Item04"].ToString();
                    _result.Item05 = sqlDataReader["Item05"].ToString();
                    _result.Item06 = sqlDataReader["Item06"].ToString();
                    _result.Item07 = sqlDataReader["Item07"].ToString();
                    _result.Item08 = sqlDataReader["Item08"].ToString();
                    _result.Item09 = sqlDataReader["Item09"].ToString();
                    _result.Item10 = sqlDataReader["Item10"].ToString();
                    _result.Item11 = sqlDataReader["Item11"].ToString();
                    _result.Item12 = sqlDataReader["Item12"].ToString();
                    _numberBigTrouble.Add(_result);
                }

                return _numberBigTrouble;

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
        public IEnumerable<Report4Rul> GetReport4ForLineMotorChartInYear(int DeviceId, int syear, int smonth)
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
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@DeviceId", DeviceId);
                cmd.Parameters.AddWithValue("@syear", syear);
                cmd.Parameters.AddWithValue("@smonth", smonth);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _numberBigTrouble = new List<Report4Rul>();
                while (sqlDataReader.Read())
                {
                    var _result = new Report4Rul();

                    //if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    _result.ColVAl = sqlDataReader["ColVAl"].ToString();
                    _result.ColX = sqlDataReader["ColX"].ToString();
                    _result.ColDate = sqlDataReader["ColDate"].ToString();
                    _numberBigTrouble.Add(_result);
                }

                return _numberBigTrouble;

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
        public IEnumerable<Report4Rul> GetReport4ForLineMotorChartInMonth(int DeviceId, int syear, int smonth)
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
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@DeviceId", DeviceId);
                cmd.Parameters.AddWithValue("@syear", syear);
                cmd.Parameters.AddWithValue("@smonth", smonth);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _numberBigTrouble = new List<Report4Rul>();
                while (sqlDataReader.Read())
                {
                    var _result = new Report4Rul();

                    //if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    _result.ColVAl = sqlDataReader["ColVAl"].ToString();
                    _result.ColX = sqlDataReader["ColX"].ToString();
                    _result.ColDate = sqlDataReader["ColDate"].ToString();
                    _numberBigTrouble.Add(_result);
                }

                return _numberBigTrouble;

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
        public IEnumerable<Report4Rul> GetReport4ForLineMotorChartInDay(int DeviceId, int syear, int smonth)
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
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@DeviceId", DeviceId);
                cmd.Parameters.AddWithValue("@syear", syear);
                cmd.Parameters.AddWithValue("@smonth", smonth);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _numberBigTrouble = new List<Report4Rul>();
                while (sqlDataReader.Read())
                {
                    var _result = new Report4Rul();

                    //if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    _result.ColVAl = sqlDataReader["ColVAl"].ToString();
                    _result.ColX = sqlDataReader["ColX"].ToString();
                    _result.ColDate = sqlDataReader["ColDate"].ToString();
                    _numberBigTrouble.Add(_result);
                }
                return _numberBigTrouble;

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
        public IEnumerable<DeviceAIStatus> GetReport4ForTableHistory(int DeviceId, int syear, int smonth, string sNote)
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
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@DeviceId", DeviceId);
                cmd.Parameters.AddWithValue("@syear", syear);
                cmd.Parameters.AddWithValue("@smonth", smonth);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var _numberBigTrouble = new List<DeviceAIStatus>();
                while (sqlDataReader.Read())
                {
                    var _result = new DeviceAIStatus();
                    if (sqlDataReader["Id"] != DBNull.Value) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"])); else _result.Id = 0;
                    if (sqlDataReader["DeviceCode"] != DBNull.Value) _result.DeviceCode = sqlDataReader["DeviceCode"].ToString();
                    if (sqlDataReader["ValueStatus"] != DBNull.Value) _result.ValueStatus = int.Parse(String.Format("{0}", sqlDataReader["ValueStatus"])); else _result.ValueStatus = 0;
                    if (sqlDataReader["TimeCreated"] != DBNull.Value) _result.TimeCreated = sqlDataReader["TimeCreated"].ToString();
                    if (sqlDataReader["NumberReport"] != DBNull.Value) _result.NumberReport = int.Parse(String.Format("{0}", sqlDataReader["NumberReport"])); else _result.NumberReport = 0;
                    if (sqlDataReader["TimeReport"] != DBNull.Value) _result.TimeReport = int.Parse(String.Format("{0}", sqlDataReader["TimeReport"])); else _result.TimeReport = 0;
                    _result.Note = sqlDataReader["Note"].ToString();
                    _numberBigTrouble.Add(_result);
                }

                return _numberBigTrouble;

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
        //GetReport4ForTrubleDetails
        [HttpGet]
        public IEnumerable<InforReportDetail> GetReport4ForTroubleDetails(string startDate, string endDate, string kD, string kF, string kT, string kL, string kB, string kP)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            List<InforReportDetail> recordList = new List<InforReportDetail>();
            try
            {              
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetReport4ForTroubleDetails";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@startDate", ((object)startDate == null ? DBNull.Value : (object)startDate));
                cmd.Parameters.AddWithValue("@endDate", ((object)endDate == null ? DBNull.Value : (object)endDate));
                cmd.Parameters.AddWithValue("@SDeviceId", ((object)kD == null ? DBNull.Value : (object)kD));
                cmd.Parameters.AddWithValue("@SFactoryId", ((object)kF == null ? DBNull.Value : (object)kF));
                cmd.Parameters.AddWithValue("@STeamId", ((object)kT == null ? DBNull.Value : (object)kT));
                cmd.Parameters.AddWithValue("@SBranchID", ((object)kB == null ? DBNull.Value : (object)kB));
                cmd.Parameters.AddWithValue("@SLineId", ((object)kL == null ? DBNull.Value : (object)kL));
                cmd.Parameters.AddWithValue("@SPlanId", ((object)kP == null ? DBNull.Value : (object)kP));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    InforReportDetail sitem = new InforReportDetail();
                    sitem.Col1 = sqlDataReader["Col1"].ToString();
                    sitem.Col2 = sqlDataReader["Col2"].ToString();
                    sitem.Col3 = sqlDataReader["Col3"].ToString();
                    sitem.Col4 = sqlDataReader["Col4"].ToString();
                    sitem.Col5 = sqlDataReader["Col5"].ToString();
                    sitem.Col6 = sqlDataReader["Col6"].ToString();
                    sitem.Col7 = sqlDataReader["Col7"].ToString();
                    sitem.Col8 = sqlDataReader["Col8"].ToString();
                    sitem.Col9 = sqlDataReader["Col9"].ToString();
                    sitem.Col10 = sqlDataReader["Col10"].ToString();
                    sitem.Col11 = sqlDataReader["Col11"].ToString();
                    sitem.Col12 = sqlDataReader["Col12"].ToString();
                    sitem.Col13 = sqlDataReader["Col13"].ToString();
                    sitem.Col14 = sqlDataReader["Col14"].ToString();
                    sitem.Col15 = sqlDataReader["Col15"].ToString();
                    sitem.Col16 = sqlDataReader["Col16"].ToString();
                    sitem.Col17 = sqlDataReader["Col17"].ToString();
                    sitem.Col18 = sqlDataReader["Col18"].ToString();
                    sitem.Col19 = sqlDataReader["Col19"].ToString();
                    sitem.Col20 = sqlDataReader["Col20"].ToString();
                    recordList.Add(sitem);
                }
                return recordList;

            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return recordList;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
    }
}
