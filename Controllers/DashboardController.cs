using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using MledNew2023.MVC.Helpers;
using MledNew2023.MVC.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Reflection;
using System.Security.Claims;
using System.Threading.Tasks;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    public class DashboardController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        private readonly UserManager<IdentityUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        public IConfiguration Configuration { get; }
        public DashboardController(IConfiguration configuration, UserManager<IdentityUser> userManager, RoleManager<IdentityRole> roleManager)
        {
            Configuration = configuration;
            _userManager = userManager;
            _roleManager = roleManager;
        }
        public IActionResult Index()
        {
            return View();
        }
        public static bool IsSysAdmin(IdentityRole role)
        {
            if (role.Name == "SuperAdmin" || role.Name == "SystemAdmin")
                return true;
            else return false;
        }

        public IActionResult Privacy()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }
        [HttpGet]
        public IEnumerable<Motor> GetRecordMotor(int numberRecod, string MotorCode)
        {
            string ConnectionString = String.Format("{0}", String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection")));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRecordMotor";
                cmd.Parameters.AddWithValue("@NumberRecort", ((object)numberRecod == null ? DBNull.Value : (object)numberRecod));
                cmd.Parameters.AddWithValue("@MotorCode", ((object)MotorCode == null ? DBNull.Value : (object)MotorCode));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var recordList = new List<Motor>();
                while (sqlDataReader.Read())
                {
                    var _result = new Motor();
                    if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    _result.MotorCode = sqlDataReader["MotorCode"].ToString();
                    if (!(sqlDataReader["MotorAI"] is DBNull)) _result.MotorAI = Int64.Parse(String.Format("{0}", sqlDataReader["MotorAI"]));
                    if (!(sqlDataReader["MotorTemp"] is DBNull)) _result.MotorTemp = decimal.Parse(String.Format("{0}", sqlDataReader["MotorTemp"]));
                    if (!(sqlDataReader["MotorI"] is DBNull)) _result.MotorI = decimal.Parse(String.Format("{0}", sqlDataReader["MotorI"]));
                    if (!(sqlDataReader["MotorSpeed"] is DBNull)) _result.MotorSpeed = decimal.Parse(String.Format("{0}", sqlDataReader["MotorSpeed"]));
                    if (!(sqlDataReader["MotorSpeed2"] is DBNull)) _result.MotorSpeed2 = decimal.Parse(String.Format("{0}", sqlDataReader["MotorSpeed2"]));
                    if (!(sqlDataReader["MotorRunningHour"] is DBNull)) _result.MotorRunningHour = decimal.Parse(String.Format("{0}", sqlDataReader["MotorRunningHour"]));
                    if (!(sqlDataReader["MotorStopHour"] is DBNull)) _result.MotorStopHour = decimal.Parse(String.Format("{0}", sqlDataReader["MotorStopHour"]));
                    if (!(sqlDataReader["ConveyorMoveStep"] is DBNull)) _result.ConveyorMoveStep = decimal.Parse(String.Format("{0}", sqlDataReader["ConveyorMoveStep"]));
                    if (!(sqlDataReader["MotorFrequency"] is DBNull)) _result.MotorFrequency = decimal.Parse(String.Format("{0}", sqlDataReader["MotorFrequency"]));
                    if (!(sqlDataReader["MotorVibrate"] is DBNull)) _result.MotorVibrate = decimal.Parse(String.Format("{0}", sqlDataReader["MotorVibrate"]));
                    //
                    if (!(sqlDataReader["Wr_MotorTemp"] is DBNull)) _result.Wr_MotorTemp = int.Parse(String.Format("{0}", sqlDataReader["Wr_MotorTemp"]));
                    if (!(sqlDataReader["Wr_MotorI"] is DBNull)) _result.Wr_MotorI = int.Parse(String.Format("{0}", sqlDataReader["Wr_MotorI"]));
                    if (!(sqlDataReader["Wr_MotorSpeed"] is DBNull)) _result.Wr_MotorSpeed = int.Parse(String.Format("{0}", sqlDataReader["Wr_MotorSpeed"]));
                    if (!(sqlDataReader["Wr_MotorSpeed2"] is DBNull)) _result.Wr_MotorSpeed2 = int.Parse(String.Format("{0}", sqlDataReader["Wr_MotorSpeed2"]));
                    if (!(sqlDataReader["Wr_MotorRunningHour"] is DBNull)) _result.Wr_MotorRunningHour = int.Parse(String.Format("{0}", sqlDataReader["Wr_MotorRunningHour"]));
                    if (!(sqlDataReader["Wr_MotorStopHour"] is DBNull)) _result.Wr_MotorStopHour = int.Parse(String.Format("{0}", sqlDataReader["Wr_MotorStopHour"]));
                    if (!(sqlDataReader["Wr_ConveyorMoveStep"] is DBNull)) _result.Wr_ConveyorMoveStep = int.Parse(String.Format("{0}", sqlDataReader["Wr_ConveyorMoveStep"]));
                    if (!(sqlDataReader["Wr_MotorFrequency"] is DBNull)) _result.Wr_MotorFrequency = int.Parse(String.Format("{0}", sqlDataReader["Wr_MotorFrequency"]));
                    if (!(sqlDataReader["Wr_MotorVibrate"] is DBNull)) _result.Wr_MotorVibrate = int.Parse(String.Format("{0}", sqlDataReader["Wr_MotorVibrate"]));

                    if (!(sqlDataReader["TimeReceived"] is DBNull)) _result.TimeReceived = String.Format("{0}", sqlDataReader["TimeReceived"]);//.ToString();
                    recordList.Add(_result);
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
                return new List<Motor>();
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<ReportRealTime> GetRecordMotorByFieldName(int numberRecod, string MotorCode, string fieldName)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                List<ReportRealTime> recordList = new List<ReportRealTime>();
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRecordMotorByFieldName";
                cmd.Parameters.AddWithValue("@NumberRecort", ((object)numberRecod == null ? DBNull.Value : (object)numberRecod));
                cmd.Parameters.AddWithValue("@MotorCode", ((object)MotorCode == null ? DBNull.Value : (object)MotorCode));
                cmd.Parameters.AddWithValue("@FieldName", ((object)fieldName == null ? DBNull.Value : (object)fieldName));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    ReportRealTime sitem = new ReportRealTime();
                    if (sqlDataReader["Id"] != DBNull.Value) sitem.ColX = int.Parse(String.Format("{0}", sqlDataReader["Id"])); else sitem.ColX = 0;
                    if (sqlDataReader["ColVal"] != DBNull.Value) sitem.ColY = decimal.Parse(String.Format("{0}", sqlDataReader["ColVal"])); else sitem.ColY = 0;
                    sitem.LabelX = sqlDataReader["LabelX"].ToString();
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
        public IEnumerable<ReportRealTime> GetRecordMotorByFieldNameAddLine(int numberRecod, string MotorCode, string fieldName, Int64 MaxID)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                List<ReportRealTime> recordList = new List<ReportRealTime>();
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRecordMotorByFieldNameAddLine";
                cmd.Parameters.AddWithValue("@NumberRecort", ((object)numberRecod == null ? DBNull.Value : (object)numberRecod));
                cmd.Parameters.AddWithValue("@MotorCode", ((object)MotorCode == null ? DBNull.Value : (object)MotorCode));
                cmd.Parameters.AddWithValue("@FieldName", ((object)fieldName == null ? DBNull.Value : (object)fieldName));
                cmd.Parameters.AddWithValue("@MaxID", ((object)MaxID == null ? DBNull.Value : (object)MaxID));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    ReportRealTime sitem = new ReportRealTime();
                    if (sqlDataReader["Id"] != DBNull.Value) sitem.ColX = int.Parse(String.Format("{0}", sqlDataReader["Id"])); else sitem.ColX = 0;
                    if (sqlDataReader["ColVal"] != DBNull.Value) sitem.ColY = decimal.Parse(String.Format("{0}", sqlDataReader["ColVal"])); else sitem.ColY = 0;
                    sitem.LabelX = sqlDataReader["LabelX"].ToString();
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
                return new List<ReportRealTime>();
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<Transformers> GetRecordTransformers(int numberRecod, string TransformerCode)
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
                cmd.CommandText = "GetRecordTransformers";
                cmd.Parameters.AddWithValue("@NumberRecort", ((object)numberRecod == null ? DBNull.Value : (object)numberRecod));
                cmd.Parameters.AddWithValue("@TransformerCode", ((object)TransformerCode == null ? DBNull.Value : (object)TransformerCode));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var recordList = new List<Transformers>();
                while (sqlDataReader.Read())
                {
                    var _result = new Transformers();
                    if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    _result.TransformerCode = sqlDataReader["TransformerCode"].ToString();
                    if (!(sqlDataReader["TempBa1"] is DBNull)) _result.TempBa1 = decimal.Parse(String.Format("{0}", sqlDataReader["TempBa1"]));
                    if (!(sqlDataReader["TempBa2"] is DBNull)) _result.TempBa2 = decimal.Parse(String.Format("{0}", sqlDataReader["TempBa2"]));
                    if (!(sqlDataReader["TempBa3"] is DBNull)) _result.TempBa3 = decimal.Parse(String.Format("{0}", sqlDataReader["TempBa3"]));
                    if (!(sqlDataReader["TempBa4"] is DBNull)) _result.TempBa4 = decimal.Parse(String.Format("{0}", sqlDataReader["TempBa4"]));
                    if (!(sqlDataReader["TempArea1"] is DBNull)) _result.TempArea1 = decimal.Parse(String.Format("{0}", sqlDataReader["TempArea1"]));
                    if (!(sqlDataReader["TempArea2"] is DBNull)) _result.TempArea2 = decimal.Parse(String.Format("{0}", sqlDataReader["TempArea2"]));
                    if (!(sqlDataReader["TempArea3"] is DBNull)) _result.TempArea3 = decimal.Parse(String.Format("{0}", sqlDataReader["TempArea3"]));
                    if (!(sqlDataReader["TempArea4"] is DBNull)) _result.TempArea4 = decimal.Parse(String.Format("{0}", sqlDataReader["TempArea4"]));
                    if (!(sqlDataReader["MachineIBa1"] is DBNull)) _result.MachineIBa1 = decimal.Parse(String.Format("{0}", sqlDataReader["MachineIBa1"]));
                    if (!(sqlDataReader["MachineIBa2"] is DBNull)) _result.MachineIBa2 = decimal.Parse(String.Format("{0}", sqlDataReader["MachineIBa2"]));
                    if (!(sqlDataReader["MachineIBa3"] is DBNull)) _result.MachineIBa3 = decimal.Parse(String.Format("{0}", sqlDataReader["MachineIBa3"]));
                    if (!(sqlDataReader["MachineIBa4"] is DBNull)) _result.MachineIBa4 = decimal.Parse(String.Format("{0}", sqlDataReader["MachineIBa4"]));
                    if (!(sqlDataReader["MachineUBa1"] is DBNull)) _result.MachineUBa1 = decimal.Parse(String.Format("{0}", sqlDataReader["MachineUBa1"]));
                    if (!(sqlDataReader["MachineUBa2"] is DBNull)) _result.MachineUBa2 = decimal.Parse(String.Format("{0}", sqlDataReader["MachineUBa2"]));
                    if (!(sqlDataReader["MachineUBa3"] is DBNull)) _result.MachineUBa3 = decimal.Parse(String.Format("{0}", sqlDataReader["MachineUBa3"]));
                    if (!(sqlDataReader["MachineUBa4"] is DBNull)) _result.MachineUBa4 = decimal.Parse(String.Format("{0}", sqlDataReader["MachineUBa4"]));
                    if (!(sqlDataReader["MachineRunningHour"] is DBNull)) _result.MachineRunningHour = decimal.Parse(String.Format("{0}", sqlDataReader["MachineRunningHour"]));
                    if (!(sqlDataReader["MachineStopHour"] is DBNull)) _result.MachineStopHour = decimal.Parse(String.Format("{0}", sqlDataReader["MachineStopHour"]));
                    ///
                    if (!(sqlDataReader["Wr_TempBa1"] is DBNull)) _result.Wr_TempBa1 = int.Parse(String.Format("{0}", sqlDataReader["Wr_TempBa1"]));
                    if (!(sqlDataReader["Wr_TempBa2"] is DBNull)) _result.Wr_TempBa2 = int.Parse(String.Format("{0}", sqlDataReader["Wr_TempBa2"]));
                    if (!(sqlDataReader["Wr_TempBa3"] is DBNull)) _result.Wr_TempBa3 = int.Parse(String.Format("{0}", sqlDataReader["Wr_TempBa3"]));
                    if (!(sqlDataReader["Wr_TempBa4"] is DBNull)) _result.Wr_TempBa4 = int.Parse(String.Format("{0}", sqlDataReader["Wr_TempBa4"]));
                    if (!(sqlDataReader["Wr_TempArea1"] is DBNull)) _result.Wr_TempArea1 = int.Parse(String.Format("{0}", sqlDataReader["Wr_TempArea1"]));
                    if (!(sqlDataReader["Wr_TempArea2"] is DBNull)) _result.Wr_TempArea2 = int.Parse(String.Format("{0}", sqlDataReader["Wr_TempArea2"]));
                    if (!(sqlDataReader["Wr_TempArea3"] is DBNull)) _result.Wr_TempArea3 = int.Parse(String.Format("{0}", sqlDataReader["Wr_TempArea3"]));
                    if (!(sqlDataReader["Wr_TempArea4"] is DBNull)) _result.Wr_TempArea4 = int.Parse(String.Format("{0}", sqlDataReader["Wr_TempArea4"]));
                    if (!(sqlDataReader["Wr_MachineIBa1"] is DBNull)) _result.Wr_MachineIBa1 = int.Parse(String.Format("{0}", sqlDataReader["Wr_MachineIBa1"]));
                    if (!(sqlDataReader["Wr_MachineIBa2"] is DBNull)) _result.Wr_MachineIBa2 = int.Parse(String.Format("{0}", sqlDataReader["Wr_MachineIBa2"]));
                    if (!(sqlDataReader["Wr_MachineIBa3"] is DBNull)) _result.Wr_MachineIBa3 = int.Parse(String.Format("{0}", sqlDataReader["Wr_MachineIBa3"]));
                    if (!(sqlDataReader["Wr_MachineIBa4"] is DBNull)) _result.Wr_MachineIBa4 = int.Parse(String.Format("{0}", sqlDataReader["Wr_MachineIBa4"]));
                    if (!(sqlDataReader["Wr_MachineUBa1"] is DBNull)) _result.Wr_MachineUBa1 = int.Parse(String.Format("{0}", sqlDataReader["Wr_MachineUBa1"]));
                    if (!(sqlDataReader["Wr_MachineUBa2"] is DBNull)) _result.Wr_MachineUBa2 = int.Parse(String.Format("{0}", sqlDataReader["Wr_MachineUBa2"]));
                    if (!(sqlDataReader["Wr_MachineUBa3"] is DBNull)) _result.Wr_MachineUBa3 = int.Parse(String.Format("{0}", sqlDataReader["Wr_MachineUBa3"]));
                    if (!(sqlDataReader["Wr_MachineUBa4"] is DBNull)) _result.Wr_MachineUBa4 = int.Parse(String.Format("{0}", sqlDataReader["Wr_MachineUBa4"]));
                    if (!(sqlDataReader["Wr_MachineRunningHour"] is DBNull)) _result.Wr_MachineRunningHour = int.Parse(String.Format("{0}", sqlDataReader["Wr_MachineRunningHour"]));
                    if (!(sqlDataReader["Wr_MachineStopHour"] is DBNull)) _result.Wr_MachineStopHour = int.Parse(String.Format("{0}", sqlDataReader["Wr_MachineStopHour"]));

                    if (!(sqlDataReader["TimeReceived"] is DBNull)) _result.TimeReceived = sqlDataReader["TimeReceived"].ToString();
                    recordList.Add(_result);
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
                return new List<Transformers>(); ;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<ReportTransformerRealTime> GetRecordTransformerByFieldName(int numberRecod, string TransformerCode, string fieldName)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                List<ReportTransformerRealTime> recordList = new List<ReportTransformerRealTime>();
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRecordTransformerByFieldName";
                cmd.Parameters.AddWithValue("@NumberRecort", ((object)numberRecod == null ? DBNull.Value : (object)numberRecod));
                cmd.Parameters.AddWithValue("@TransformerCode", ((object)TransformerCode == null ? DBNull.Value : (object)TransformerCode));
                cmd.Parameters.AddWithValue("@FieldName", ((object)fieldName == null ? DBNull.Value : (object)fieldName));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    ReportTransformerRealTime sitem = new ReportTransformerRealTime();
                    if (sqlDataReader["Id"] != DBNull.Value) sitem.ColX = int.Parse(String.Format("{0}", sqlDataReader["Id"])); else sitem.ColX = 0;
                    if (sqlDataReader["ColVal"] != DBNull.Value) sitem.ColY = decimal.Parse(String.Format("{0}", sqlDataReader["ColVal"])); else sitem.ColY = 0;
                    if (sqlDataReader["ColYBA1"] != DBNull.Value) sitem.ColYBA1 = decimal.Parse(String.Format("{0}", sqlDataReader["ColYBA1"])); else sitem.ColY = 0;
                    if (sqlDataReader["ColYBA2"] != DBNull.Value) sitem.ColYBA2 = decimal.Parse(String.Format("{0}", sqlDataReader["ColYBA2"])); else sitem.ColY = 0;
                    if (sqlDataReader["ColYBA3"] != DBNull.Value) sitem.ColYBA3 = decimal.Parse(String.Format("{0}", sqlDataReader["ColYBA3"])); else sitem.ColY = 0;
                    if (sqlDataReader["ColYBA4"] != DBNull.Value) sitem.ColYBA4 = decimal.Parse(String.Format("{0}", sqlDataReader["ColYBA4"])); else sitem.ColY = 0;
                    sitem.LabelX = sqlDataReader["LabelX"].ToString();
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
                return new List<ReportTransformerRealTime>();
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<ReportTransformerRealTime> GetRecordTransformerByFieldNameAddLine(int numberRecod, string TransformerCode, string fieldName, Int64 MaxID)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                List<ReportTransformerRealTime> recordList = new List<ReportTransformerRealTime>();
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetRecordTransformerByFieldNameAddLine";
                cmd.Parameters.AddWithValue("@NumberRecort", ((object)numberRecod == null ? DBNull.Value : (object)numberRecod));
                cmd.Parameters.AddWithValue("@TransformerCode", ((object)TransformerCode == null ? DBNull.Value : (object)TransformerCode));
                cmd.Parameters.AddWithValue("@FieldName", ((object)fieldName == null ? DBNull.Value : (object)fieldName));
                cmd.Parameters.AddWithValue("@MaxID", ((object)MaxID == null ? DBNull.Value : (object)MaxID));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    ReportTransformerRealTime sitem = new ReportTransformerRealTime();
                    if (sqlDataReader["Id"] != DBNull.Value) sitem.ColX = int.Parse(String.Format("{0}", sqlDataReader["Id"])); else sitem.ColX = 0;
                    if (sqlDataReader["ColVal"] != DBNull.Value) sitem.ColY = decimal.Parse(String.Format("{0}", sqlDataReader["ColVal"])); else sitem.ColY = 0;
                    if (sqlDataReader["ColYBA1"] != DBNull.Value) sitem.ColYBA1 = decimal.Parse(String.Format("{0}", sqlDataReader["ColYBA1"])); else sitem.ColY = 0;
                    if (sqlDataReader["ColYBA2"] != DBNull.Value) sitem.ColYBA2 = decimal.Parse(String.Format("{0}", sqlDataReader["ColYBA2"])); else sitem.ColY = 0;
                    if (sqlDataReader["ColYBA3"] != DBNull.Value) sitem.ColYBA3 = decimal.Parse(String.Format("{0}", sqlDataReader["ColYBA3"])); else sitem.ColY = 0;
                    if (sqlDataReader["ColYBA4"] != DBNull.Value) sitem.ColYBA4 = decimal.Parse(String.Format("{0}", sqlDataReader["ColYBA4"])); else sitem.ColY = 0;
                    sitem.LabelX = sqlDataReader["LabelX"].ToString();
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
                return new List<ReportTransformerRealTime>();
            }
            finally
            {
                sqlConnection.Close();
            }
        }

        //AddDeviceAIStatus
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults AddDeviceAIStatus(DeviceAIStatus _device)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@DeviceCode", (_device.DeviceCode == null ? DBNull.Value : (object)_device.DeviceCode));
                cmd.Parameters.AddWithValue("@ValueStatus", (object)_device.ValueStatus == null ? DBNull.Value : (object)_device.ValueStatus);
                cmd.Parameters.AddWithValue("@NumberReport", (object)_device.NumberReport == null ? DBNull.Value : (object)_device.NumberReport);
                cmd.Parameters.AddWithValue("@TimeCreated", _device.TimeCreated == null ? DBNull.Value : (object)_device.TimeCreated);
                cmd.Parameters.AddWithValue("@TimeReport", (object)_device.TimeReport == null ? DBNull.Value : (object)_device.TimeReport);
                cmd.Parameters.AddWithValue("@Note", _device.Note == null ? DBNull.Value : (object)_device.Note);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                string currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                string IpAddress = String.Format("{0}",HttpContext.Connection.RemoteIpAddress);;
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
        //AddDeviceAIStatus
        [HttpGet]
        //[ValidateAntiForgeryToken]
        public MessageResults UpdateRulAIByDeviceCode(Int64 MotorID, decimal Rul)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@Rul", ((object)Rul == null ? DBNull.Value : (object)Rul));
                cmd.Parameters.AddWithValue("@MotorID", (object)MotorID);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                cmd.ExecuteReader();
                _result.success = true; _result.Id = MotorID;
                _result.message = "UpdateRulAIByDeviceCode";
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