using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using MledNew2023.MVC.Models;
using Newtonsoft.Json;
using System;
using System.Collections.Generic;
using System.Data;
using System.IO;
using System.Reflection;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    public class MotorController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        private IWebHostEnvironment _env;
        public MotorController(IConfiguration configuration, IWebHostEnvironment env)
        {
            Configuration = configuration;
            _env = env;
        }
        public IActionResult Index()
        {
            return View();
        }
        [HttpGet]
        public Threshold GetThresholdByKey(string Key)
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
                cmd.CommandText = "GetThresholdByKey";
                cmd.Parameters.AddWithValue("@Key", ((object)Key == null ? DBNull.Value : (object)Key));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                Threshold _t = new Threshold();
                while (sqlDataReader.Read())
                {
                    if (sqlDataReader["LowerValue"] != DBNull.Value) _t.LowerValue = decimal.Parse(String.Format("{0}", sqlDataReader["LowerValue"]));
                    if (sqlDataReader["UpperValue"] != DBNull.Value) _t.UpperValue = decimal.Parse(String.Format("{0}", sqlDataReader["UpperValue"]));
                    if (sqlDataReader["OrangeLowerValue"] != DBNull.Value) _t.OrangeLowerValue = decimal.Parse(String.Format("{0}", sqlDataReader["OrangeLowerValue"]));
                    if (sqlDataReader["OrangeUpperValue"] != DBNull.Value) _t.OrangeUpperValue = decimal.Parse(String.Format("{0}", sqlDataReader["OrangeUpperValue"]));
                    if (sqlDataReader["RedLowerValue"] != DBNull.Value) _t.RedLowerValue = decimal.Parse(String.Format("{0}", sqlDataReader["RedLowerValue"]));
                    if (sqlDataReader["RedUpperValue"] != DBNull.Value) _t.RedUpperValue = decimal.Parse(String.Format("{0}", sqlDataReader["RedUpperValue"]));
                    if (sqlDataReader["ThresholdType"] != DBNull.Value) _t.ThresholdType = int.Parse(String.Format("{0}", sqlDataReader["ThresholdType"]));
                    if (sqlDataReader["OrangeThresholdType"] != DBNull.Value) _t.OrangeThresholdType = int.Parse(String.Format("{0}", sqlDataReader["OrangeThresholdType"]));
                    if (sqlDataReader["RedThresholdType"] != DBNull.Value) _t.RedThresholdType = int.Parse(String.Format("{0}", sqlDataReader["RedThresholdType"]));

                    _t.Key = Key;
                    return _t;
                }
                return null;
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
        public IEnumerable<String> Get()
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetMotorList";
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var motorList = new List<String>();

                while (sqlDataReader.Read())
                {
                    var motor = sqlDataReader["Code"].ToString();
                    motorList.Add(motor);
                }
                return motorList;
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
        public IEnumerable<Motor> GetIndexMotor()
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetIndexMotor";
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var motorList = new List<Motor>();
                while (sqlDataReader.Read())
                {
                    var motor = new Motor();
                    for (int i = 0; i < sqlDataReader.FieldCount; i++)
                    {
                        //lấy tên cột dữ liệu đang đọc
                        var colName = sqlDataReader.GetName(i);
                        //Lấy giá trị cell đang đọc
                        var value = sqlDataReader.GetValue(i);
                        //Lấy ra property giống với tên cột được khai báo ở trên
                        var property = motor.GetType().GetProperty(colName);
                        if (property != null && value != DBNull.Value)
                        {
                            if (colName == "TimeReceived")
                                property.SetValue(motor, DateTime.Parse(value.ToString()).ToString("dd/MM/yyyy HH:mm:ss"));
                            else
                                property.SetValue(motor, value);
                        }
                    }
                    motorList.Add(motor);
                }
                return motorList;
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
        public int GetCountMotor()
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
                cmd.CommandText = "GetCountMotor";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    var value = sqlDataReader.GetValue(0);
                    if (value != DBNull.Value) return int.Parse(value.ToString());
                    else
                        return 0;
                }
                return 0;
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
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MotorSend Add([FromBody] Motor motor)
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
                cmd.CommandText = "AddMotor";

                cmd.Parameters.AddWithValue("@MotorCode", (motor.MotorCode == null ? DBNull.Value : (object)motor.MotorCode));
                cmd.Parameters.AddWithValue("@MotorAI", ((object)motor.MotorAI == null ? DBNull.Value : (object)motor.MotorAI));
                cmd.Parameters.AddWithValue("@MotorTemp", ((object)motor.MotorTemp == null ? DBNull.Value : (object)motor.MotorTemp));
                cmd.Parameters.AddWithValue("@MotorI", ((object)motor.MotorI == null ? DBNull.Value : (object)motor.MotorI));
                cmd.Parameters.AddWithValue("@MotorRunningTime", ((object)motor.MotorRunningTime == null ? DBNull.Value : (object)motor.MotorRunningTime));
                cmd.Parameters.AddWithValue("@MotorStopTime", ((object)motor.MotorStopTime == null ? DBNull.Value : (object)motor.MotorStopTime));
                cmd.Parameters.AddWithValue("@ConveyorSpeed", ((object)motor.ConveyorSpeed == null ? DBNull.Value : (object)motor.ConveyorSpeed));
                cmd.Parameters.AddWithValue("@MotorSpeed", ((object)motor.MotorSpeed == null ? DBNull.Value : (object)motor.MotorSpeed));
                cmd.Parameters.AddWithValue("@MotorFrequency", ((object)motor.MotorFrequency == null ? DBNull.Value : (object)motor.MotorFrequency));
                if ((String.IsNullOrWhiteSpace(motor.MotorVibrate.ToString())) || String.IsNullOrEmpty(motor.MotorVibrate.ToString()) || motor.MotorVibrate.ToString() == "null" || (object)motor.MotorVibrate == null)
                {
                    cmd.Parameters.AddWithValue("@MotorVibrate", DBNull.Value);
                }
                else
                {
                    cmd.Parameters.AddWithValue("@MotorVibrate", (object)motor.MotorVibrate);
                }
                cmd.Parameters.AddWithValue("@MotorVibrateArray", (motor.MotorVibrateArray == null ? DBNull.Value : (object)motor.MotorVibrateArray));
                cmd.Parameters.AddWithValue("@Signal", ((object)motor.Signal == null ? DBNull.Value : (object)motor.Signal));
                cmd.Parameters.AddWithValue("@TimeReceived", ((object)motor.TimeReceived == null ? DBNull.Value : String.Format("{0}.000", motor.TimeReceived)));

                cmd.Parameters.Add("@Id", SqlDbType.BigInt).Direction = ParameterDirection.Output;
                var result = cmd.ExecuteNonQuery();
                motor.Id = Convert.ToInt64(cmd.Parameters["@Id"].Value);
                motor.TimeReceived = String.Format("{0}.000", motor.TimeReceived);
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

            try
            {
                MotorSend motorSave = new MotorSend();
                motorSave.Id = motor.Id;
                motorSave.MotorCode = motor.MotorCode;
                motorSave.MotorAI = motor.MotorAI;
                motorSave.MotorTemp = motor.MotorTemp;
                motorSave.MotorI = motor.MotorI;
                motorSave.MotorSpeed = motor.MotorSpeed;
                motorSave.MotorRunningTime = motor.MotorRunningTime;
                motorSave.MotorStopTime = motor.MotorStopTime;
                motorSave.ConveyorSpeed = motor.ConveyorSpeed;
                motorSave.MotorFrequency = motor.MotorFrequency;
                motorSave.MotorVibrate = motor.MotorVibrate;
                motorSave.MotorVibrateArray = motor.MotorVibrateArray;
                motorSave.Signal = motor.Signal;
                motorSave.TimeReceived = motor.TimeReceived;

                //Lưu gói tin mới vào file
                //workingDirectory = E:\Project\GetRangDong
                string workingDirectory = Environment.CurrentDirectory;
                //GetDate
                DateTime dateTime = DateTime.Now;
                string dateString = dateTime.ToString("ddMMyyyy");
                //folderPath = E:\Project\GetRangDong\wwwroot\Motor
                string folderPath = workingDirectory + @"\wwwroot" + @"\Motor";

                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }

                // E:\Project\GetRangDong\wwwroot\Motor\29032022.json
                string pathListMessage = folderPath + @"\Motor_" + dateString + ".json";
                //string pathLastMessage = folderPath + @"\LastMessage.txt";
                FileInfo fileList = new FileInfo(pathListMessage);
                //FileInfo fileLast = new FileInfo(pathLastMessage);
                string payload = JsonConvert.SerializeObject(motorSave);

                //if (System.IO.File.Exists(pathLastMessage))
                //{
                //    if (!IsFileLocked(fileLast))
                //    {
                //        System.IO.File.Delete(pathLastMessage);
                //        string lastMessage = payload;
                //        System.IO.File.WriteAllText(pathLastMessage, lastMessage);
                //    }
                //}
                //else
                //{
                //    string lastMessage = payload;
                //    System.IO.File.WriteAllText(pathLastMessage, lastMessage);
                //}

                // This text is always added, making the file longer over time
                // if it is not deleted.
                BaseServices baseServices = new BaseServices();
                if (System.IO.File.Exists(pathListMessage))
                {
                    if (!baseServices.IsFileLocked(fileList))
                    {
                        string createText = payload + ";" + Environment.NewLine;
                        System.IO.File.AppendAllText(pathListMessage, createText);
                    }
                }
                else
                {
                    string lastMessage = payload + ";" + Environment.NewLine;
                    System.IO.File.WriteAllText(pathListMessage, lastMessage);
                }

                return motorSave;
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
        }
    }
}
