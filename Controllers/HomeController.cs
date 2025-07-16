using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using MledNew2023.MVC.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Globalization;
using System.Reflection;
using System.Security.Claims;
using System.Threading.Tasks;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    public class HomeController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        private readonly UserManager<IdentityUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        public IConfiguration Configuration { get; }
        public HomeController(IConfiguration configuration, UserManager<IdentityUser> userManager, RoleManager<IdentityRole> roleManager)
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
                return null;
            }
            finally
            {
                sqlConnection.Close();
            }
        }

        [HttpGet]
        public IEnumerable<Motor> GetRunningMotorAI(int numberRecod, string MotorCode)
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
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
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
                return null;
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
                return null;
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
                return null;
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
                return null;
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
                return null;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<InforPageHomeDetail> GetInforDetaiPageHome(int Index)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                List<InforPageHomeDetail> recordList = new List<InforPageHomeDetail>();
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetInforDetaiPageHome";
                cmd.Parameters.AddWithValue("@Index", ((object)Index == null ? DBNull.Value : (object)Index));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    InforPageHomeDetail sitem = new InforPageHomeDetail();
                    sitem.DeviceName = sqlDataReader["DeviceName"].ToString();
                    sitem.DeviceCode = sqlDataReader["DeviceCode"].ToString();
                    sitem.BranchName = sqlDataReader["BranchName"].ToString();
                    if (sqlDataReader["Col1"] != DBNull.Value) sitem.Col1 = int.Parse(String.Format("{0}", sqlDataReader["Col1"])); 
                    if (sqlDataReader["Col2"] != DBNull.Value) sitem.Col2 = int.Parse(String.Format("{0}", sqlDataReader["Col2"])); 
                    if (sqlDataReader["Col3"] != DBNull.Value) sitem.Col3 = int.Parse(String.Format("{0}", sqlDataReader["Col3"])); 
                    if (sqlDataReader["Col4"] != DBNull.Value) sitem.Col4 = int.Parse(String.Format("{0}", sqlDataReader["Col4"])); 
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
        public object ConvertToStringDateTime(string s)
        {
            try
            {
                if (string.IsNullOrEmpty(s))
                    return DBNull.Value;
                string mysDate = "";
                string[] sArr = s.Split('/');
                if (sArr.Length > 1)
                {
                    mysDate = String.Format("{0}-{1}-{2} 15:04:33", sArr[2], sArr[1], sArr[0]);//2019-12-19 15:04:33
                }
                else
                {
                    CultureInfo provider = CultureInfo.InvariantCulture;
                    DateTime dateTime12; //1/1/0001 12:00:00 AM    
                    // Exception: String was not recognized as a valid DateTime because the day of week was incorrect.  
                    bool isSuccess3 = DateTime.TryParseExact(s, "dd-MMM-yyyy", provider, DateTimeStyles.None, out dateTime12);
                    if (isSuccess3)
                    {
                        mysDate = dateTime12.ToString("yyyy-MM-dd HH:mm:ss");
                    }
                }

                return mysDate;
            }
            catch (FormatException)
            {
                return DBNull.Value;
                throw;
            }
        }

        [HttpGet]
        public InforPageHome GetInforPageHome()
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                InforPageHome recordList = new InforPageHome();
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetInforPageHome";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    if (!(sqlDataReader["VAl1_1"] is DBNull)) recordList.VAl1_1 = int.Parse(String.Format("{0}", sqlDataReader["VAl1_1"]));
                    if (!(sqlDataReader["VAl1_2"] is DBNull)) recordList.VAl1_2 = int.Parse(String.Format("{0}", sqlDataReader["VAl1_2"]));
                    if (!(sqlDataReader["VAl2_1"] is DBNull)) recordList.VAl2_1 = int.Parse(String.Format("{0}", sqlDataReader["VAl2_1"]));
                    if (!(sqlDataReader["VAl2_2"] is DBNull)) recordList.VAl2_2 = int.Parse(String.Format("{0}", sqlDataReader["VAl2_2"]));
                    if (!(sqlDataReader["VAl3_1"] is DBNull)) recordList.VAl3_1 = int.Parse(String.Format("{0}", sqlDataReader["VAl3_1"]));
                    if (!(sqlDataReader["VAl3_2"] is DBNull)) recordList.VAl3_2 = int.Parse(String.Format("{0}", sqlDataReader["VAl3_2"]));
                    if (!(sqlDataReader["VAl4_1"] is DBNull)) recordList.VAl4_1 = int.Parse(String.Format("{0}", sqlDataReader["VAl4_1"]));
                    if (!(sqlDataReader["VAl4_2"] is DBNull)) recordList.VAl4_2 = int.Parse(String.Format("{0}", sqlDataReader["VAl4_2"]));
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
        public InforPageHomeNew GetInforPageHomeNew(string startDate, string endDate, string kB,  string kF, string kT)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            InforPageHomeNew recordList = new InforPageHomeNew();
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetInforPageHomeNewByKey";
                cmd.Parameters.AddWithValue("@startDate", ((object)startDate == null ? DBNull.Value : (object)startDate));
                cmd.Parameters.AddWithValue("@endDate", ((object)endDate == null ? DBNull.Value : (object)endDate));
                cmd.Parameters.AddWithValue("@SFactoryId", ((object)kF == null ? DBNull.Value : (object)kF));
                cmd.Parameters.AddWithValue("@STeamId", ((object)kT == null ? DBNull.Value : (object)kT));
                cmd.Parameters.AddWithValue("@SBranchID", ((object)kB == null ? DBNull.Value : (object)kB));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    recordList.Label_01 = String.Format("{0}", sqlDataReader["Label_01"]);
                    if (!(sqlDataReader["Val_01"] is DBNull)) recordList.Val_01 = int.Parse(String.Format("{0}", sqlDataReader["Val_01"]));
                    recordList.Label_02 = String.Format("{0}", sqlDataReader["Label_02"]);
                    if (!(sqlDataReader["Val_02"] is DBNull)) recordList.Val_02 = int.Parse(String.Format("{0}", sqlDataReader["Val_02"]));
                    recordList.Label_03 = String.Format("{0}", sqlDataReader["Label_03"]);
                    if (!(sqlDataReader["Val_03"] is DBNull)) recordList.Val_03 = int.Parse(String.Format("{0}", sqlDataReader["Val_03"]));
                    recordList.Label_04 = String.Format("{0}", sqlDataReader["Label_04"]);
                    if (!(sqlDataReader["Val_04"] is DBNull)) recordList.Val_04 = int.Parse(String.Format("{0}", sqlDataReader["Val_04"]));
                    recordList.Label_05 = String.Format("{0}", sqlDataReader["Label_05"]);
                    if (!(sqlDataReader["Val_05"] is DBNull)) recordList.Val_05 = int.Parse(String.Format("{0}", sqlDataReader["Val_05"]));
                    recordList.Label_11 = String.Format("{0}", sqlDataReader["Label_11"]);
                    if (!(sqlDataReader["Val_11"] is DBNull)) recordList.Val_11 = int.Parse(String.Format("{0}", sqlDataReader["Val_11"]));
                    recordList.Label_12 = String.Format("{0}", sqlDataReader["Label_12"]);
                    if (!(sqlDataReader["Val_12"] is DBNull)) recordList.Val_12 = int.Parse(String.Format("{0}", sqlDataReader["Val_12"]));
                    recordList.Label_13 = String.Format("{0}", sqlDataReader["Label_13"]);
                    if (!(sqlDataReader["Val_13"] is DBNull)) recordList.Val_13 = int.Parse(String.Format("{0}", sqlDataReader["Val_13"]));
                    recordList.Label_14 = String.Format("{0}", sqlDataReader["Label_14"]);
                    if (!(sqlDataReader["Val_14"] is DBNull)) recordList.Val_14 = int.Parse(String.Format("{0}", sqlDataReader["Val_14"]));
                    recordList.Label_15 = String.Format("{0}", sqlDataReader["Label_15"]);
                    if (!(sqlDataReader["Val_15"] is DBNull)) recordList.Val_15 = int.Parse(String.Format("{0}", sqlDataReader["Val_15"]));
                    recordList.Sup_01 = String.Format("{0}", sqlDataReader["Sup_01"]);
                    recordList.Sup_02 = String.Format("{0}", sqlDataReader["Sup_02"]);
                    recordList.Sup_03 = String.Format("{0}", sqlDataReader["Sup_03"]);
                    recordList.Sup_04 = String.Format("{0}", sqlDataReader["Sup_04"]);
                    recordList.Sup_05 = String.Format("{0}", sqlDataReader["Sup_05"]);
                    recordList.Sup_11 = String.Format("{0}", sqlDataReader["Sup_11"]);
                    recordList.Sup_12 = String.Format("{0}", sqlDataReader["Sup_12"]);
                    recordList.Sup_13 = String.Format("{0}", sqlDataReader["Sup_13"]);
                    recordList.Sup_14 = String.Format("{0}", sqlDataReader["Sup_14"]);
                    recordList.Sup_15 = String.Format("{0}", sqlDataReader["Sup_15"]);
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
        [HttpGet]
        public IEnumerable<InforPageHomeTable> GetInforPageHomeTable(string startDate, string endDate, string kB, string kF, string kT, int IsAct)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            List<InforPageHomeTable> returnList = new List<InforPageHomeTable>();
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetInforPageHomeTableByKey";
                cmd.Parameters.AddWithValue("@startDate", ((object)startDate == null ? DBNull.Value : (object)startDate));
                cmd.Parameters.AddWithValue("@endDate", ((object)endDate == null ? DBNull.Value : (object)endDate));
                cmd.Parameters.AddWithValue("@SFactoryId", ((object)kF == null ? DBNull.Value : (object)kF));
                cmd.Parameters.AddWithValue("@STeamId", ((object)kT == null ? DBNull.Value : (object)kT));
                cmd.Parameters.AddWithValue("@SBranchID", ((object)kB == null ? DBNull.Value : (object)kB));
                cmd.Parameters.AddWithValue("@IsAct", (kB == null ? 0 : (object)IsAct));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    InforPageHomeTable recordList = new InforPageHomeTable();                   
                    recordList.ColVal1 = String.Format("{0}", sqlDataReader["ColVal1"]);
                    recordList.ColVal2 = String.Format("{0}", sqlDataReader["ColVal2"]);
                    recordList.ColVal3 = String.Format("{0}", sqlDataReader["ColVal3"]);
                    recordList.ColVal4 = String.Format("{0}", sqlDataReader["ColVal4"]);
                    recordList.ColVal5 = String.Format("{0}", sqlDataReader["ColVal5"]);
                    recordList.ColVal6 = String.Format("{0}", sqlDataReader["ColVal6"]);
                    recordList.ColVal7 = String.Format("{0}", sqlDataReader["ColVal7"]);
                    recordList.ColVal8 = String.Format("{0}", sqlDataReader["ColVal8"]);
                    returnList.Add(recordList);
                }
                return returnList;

            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return returnList;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<InforPageHomeBarChart> GetInHomeDataBarChart01(string startDate, string endDate, string kB, string kF, string kT)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            List<InforPageHomeBarChart> returnList = new List<InforPageHomeBarChart>();
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@startDate", ((object)startDate == null ? DBNull.Value : (object)startDate));
                cmd.Parameters.AddWithValue("@endDate", ((object)endDate == null ? DBNull.Value : (object)endDate));
                cmd.Parameters.AddWithValue("@SFactoryId", ((object)kF == null ? DBNull.Value : (object)kF));
                cmd.Parameters.AddWithValue("@STeamId", ((object)kT == null ? DBNull.Value : (object)kT));
                cmd.Parameters.AddWithValue("@SBranchID", ((object)kB == null ? DBNull.Value : (object)kB));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    InforPageHomeBarChart recordList = new InforPageHomeBarChart();
                    recordList.LabelX_01 = String.Format("{0}", sqlDataReader["LabelX_01"]);
                    recordList.LabelX_02 = String.Format("{0}", sqlDataReader["LabelX_02"]);
                    if (!(sqlDataReader["ColValY_01"] is DBNull)) recordList.ColValY_01 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_01"]));
                    if (!(sqlDataReader["ColValY_02"] is DBNull)) recordList.ColValY_02 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_02"]));
                    if (!(sqlDataReader["ColValY_03"] is DBNull)) recordList.ColValY_03 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_03"]));
                    if (!(sqlDataReader["ColValY_04"] is DBNull)) recordList.ColValY_04 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_04"]));
                    if (!(sqlDataReader["ColValY_05"] is DBNull)) recordList.ColValY_05 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_05"]));
                    if (!(sqlDataReader["ColValY_06"] is DBNull)) recordList.ColValY_06 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_06"]));
                    returnList.Add(recordList);
                }
                return returnList;

            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return returnList;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<InforPageHomeBarChart> GetInHomeDataBarChart02(string startDate, string endDate, string kB, string kF, string kT)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            List<InforPageHomeBarChart> returnList = new List<InforPageHomeBarChart>();
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@startDate", ((object)startDate == null ? DBNull.Value : (object)startDate));
                cmd.Parameters.AddWithValue("@endDate", ((object)endDate == null ? DBNull.Value : (object)endDate));
                cmd.Parameters.AddWithValue("@SFactoryId", ((object)kF == null ? DBNull.Value : (object)kF));
                cmd.Parameters.AddWithValue("@STeamId", ((object)kT == null ? DBNull.Value : (object)kT));
                cmd.Parameters.AddWithValue("@SBranchID", ((object)kB == null ? DBNull.Value : (object)kB));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    InforPageHomeBarChart recordList = new InforPageHomeBarChart();
                    recordList.LabelX_01 = String.Format("{0}", sqlDataReader["LabelX_01"]);
                    recordList.LabelX_02 = String.Format("{0}", sqlDataReader["LabelX_02"]);
                    if (!(sqlDataReader["ColValY_01"] is DBNull)) recordList.ColValY_01 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_01"]));
                    if (!(sqlDataReader["ColValY_02"] is DBNull)) recordList.ColValY_02 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_02"]));
                    if (!(sqlDataReader["ColValY_03"] is DBNull)) recordList.ColValY_03 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_03"]));
                    if (!(sqlDataReader["ColValY_04"] is DBNull)) recordList.ColValY_04 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_04"]));
                    if (!(sqlDataReader["ColValY_05"] is DBNull)) recordList.ColValY_05 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_05"]));
                    if (!(sqlDataReader["ColValY_06"] is DBNull)) recordList.ColValY_06 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_06"]));
                    returnList.Add(recordList);
                }
                return returnList;

            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return returnList;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<InforPageHomeBarChart> GetInHomeDataBarChart11(string startDate, string endDate, string kB, string kF, string kT)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            List<InforPageHomeBarChart> returnList = new List<InforPageHomeBarChart>();
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@startDate", ((object)startDate == null ? DBNull.Value : (object)startDate));
                cmd.Parameters.AddWithValue("@endDate", ((object)endDate == null ? DBNull.Value : (object)endDate));
                cmd.Parameters.AddWithValue("@SFactoryId", ((object)kF == null ? DBNull.Value : (object)kF));
                cmd.Parameters.AddWithValue("@STeamId", ((object)kT == null ? DBNull.Value : (object)kT));
                cmd.Parameters.AddWithValue("@SBranchID", ((object)kB == null ? DBNull.Value : (object)kB));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    InforPageHomeBarChart recordList = new InforPageHomeBarChart();
                    recordList.LabelX_01 = String.Format("{0}", sqlDataReader["LabelX_01"]);
                    recordList.LabelX_02 = String.Format("{0}", sqlDataReader["LabelX_02"]);
                    if (!(sqlDataReader["ColValY_01"] is DBNull)) recordList.ColValY_01 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_01"]));
                    if (!(sqlDataReader["ColValY_02"] is DBNull)) recordList.ColValY_02 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_02"]));
                    if (!(sqlDataReader["ColValY_03"] is DBNull)) recordList.ColValY_03 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_03"]));
                    if (!(sqlDataReader["ColValY_04"] is DBNull)) recordList.ColValY_04 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_04"]));
                    if (!(sqlDataReader["ColValY_05"] is DBNull)) recordList.ColValY_05 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_05"]));
                    if (!(sqlDataReader["ColValY_06"] is DBNull)) recordList.ColValY_06 = int.Parse(String.Format("{0}", sqlDataReader["ColValY_06"]));
                    returnList.Add(recordList);
                }
                return returnList;

            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return returnList;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<InforPageHomeChart> GetInHomeDataDonutChart(string startDate, string endDate, string kB, string kF, string kT)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            List<InforPageHomeChart> returnList = new List<InforPageHomeChart>();
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
                cmd.Parameters.AddWithValue("@startDate", ((object)startDate == null ? DBNull.Value : (object)startDate));
                cmd.Parameters.AddWithValue("@endDate", ((object)endDate == null ? DBNull.Value : (object)endDate));
                cmd.Parameters.AddWithValue("@SFactoryId", ((object)kF == null ? DBNull.Value : (object)kF));
                cmd.Parameters.AddWithValue("@STeamId", ((object)kT == null ? DBNull.Value : (object)kT));
                cmd.Parameters.AddWithValue("@SBranchID", ((object)kB == null ? DBNull.Value : (object)kB));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    InforPageHomeChart recordList = new InforPageHomeChart();
                    recordList.LabelX_01 = String.Format("{0}", sqlDataReader["LabelX_01"]);
                    recordList.LabelX_02 = String.Format("{0}", sqlDataReader["LabelX_02"]);
                    if (!(sqlDataReader["ColValY"] is DBNull)) recordList.ColValY = int.Parse(String.Format("{0}", sqlDataReader["ColValY"]));
                    returnList.Add(recordList);
                }
                return returnList;

            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return returnList;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<InforPageHomeTable> GetInforDetaiPageHomeNew(int Index, string startDate, string endDate, string kB, string kF, string kT)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            List<InforPageHomeTable> recordList = new List<InforPageHomeTable>();

            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetInforDetaiPageHomeNew";
                cmd.Parameters.AddWithValue("@Index", ((object)Index == null ? DBNull.Value : (object)Index));
                cmd.Parameters.AddWithValue("@startDate", ((object)startDate == null ? DBNull.Value : (object)startDate));
                cmd.Parameters.AddWithValue("@endDate", ((object)endDate == null ? DBNull.Value : (object)endDate));
                cmd.Parameters.AddWithValue("@SFactoryId", ((object)kF == null ? DBNull.Value : (object)kF));
                cmd.Parameters.AddWithValue("@STeamId", ((object)kT == null ? DBNull.Value : (object)kT));
                cmd.Parameters.AddWithValue("@SBranchID", ((object)kB == null ? DBNull.Value : (object)kB));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                while (sqlDataReader.Read())
                {
                    InforPageHomeTable sitem = new InforPageHomeTable();
                    sitem.ColVal1 = String.Format("{0}", sqlDataReader["ColVal1"]);
                    sitem.ColVal2 = String.Format("{0}", sqlDataReader["ColVal2"]);
                    sitem.ColVal3 = String.Format("{0}", sqlDataReader["ColVal3"]);
                    sitem.ColVal4 = String.Format("{0}", sqlDataReader["ColVal4"]);
                    sitem.ColVal5 = String.Format("{0}", sqlDataReader["ColVal5"]);
                    sitem.ColVal6 = String.Format("{0}", sqlDataReader["ColVal6"]);
                    sitem.ColVal7 = String.Format("{0}", sqlDataReader["ColVal7"]);
                    sitem.ColVal8 = String.Format("{0}", sqlDataReader["ColVal8"]);
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