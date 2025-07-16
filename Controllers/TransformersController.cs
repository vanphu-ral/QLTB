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
    public class TransformersController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        private IWebHostEnvironment _env;
        public TransformersController(IConfiguration configuration, IWebHostEnvironment env)
        {
            Configuration = configuration;
            _env = env;
        }
        public IActionResult Index()
        {
            return View();
        }
        public IEnumerable<String> Get()
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
                cmd.CommandText = "GetTransformersList";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var transformersList = new List<String>();
                while (sqlDataReader.Read())
                {
                    var transformers = sqlDataReader["Code"].ToString();
                    transformersList.Add(transformers);
                }
                return transformersList;
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
        public IEnumerable<Transformers> GetIndexTransformer()
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
                cmd.CommandText = "GetIndexTransformer";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();

                var transformersList = new List<Transformers>();
                while (sqlDataReader.Read())
                {
                    var transformers = new Transformers();
                    for (int i = 0; i < sqlDataReader.FieldCount; i++)
                    {
                        //lấy tên cột dữ liệu đang đọc
                        var colName = sqlDataReader.GetName(i);
                        //Lấy giá trị cell đang đọc
                        var value = sqlDataReader.GetValue(i);
                        //Lấy ra property giống với tên cột được khai báo ở trên
                        var property = transformers.GetType().GetProperty(colName);
                        if (property != null && value != DBNull.Value)
                        {
                            if (colName == "TimeReceived")
                                property.SetValue(transformers, DateTime.Parse(value.ToString()).ToString("dd/MM/yyyy HH:mm:ss"));
                            else
                                property.SetValue(transformers, value);
                        }
                    }
                    transformersList.Add(transformers);
                }
                return transformersList;
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
        public int GetCountTransformer()
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
                cmd.CommandText = "GetCountTransformer";
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
        public TransformerSend Add([FromBody] Transformers transformers)
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
                cmd.CommandText = "AddTransformers";

                cmd.Parameters.AddWithValue("@TransformerCode", (transformers.TransformerCode == null ? DBNull.Value : (object)transformers.TransformerCode));
                cmd.Parameters.AddWithValue("@TempBa1", ((object)transformers.TempBa1 == null ? DBNull.Value : (object)transformers.TempBa1));
                cmd.Parameters.AddWithValue("@TempBa2", ((object)transformers.TempBa2 == null ? DBNull.Value : (object)transformers.TempBa2));
                cmd.Parameters.AddWithValue("@TempBa3", ((object)transformers.TempBa3 == null ? DBNull.Value : (object)transformers.TempBa3));
                cmd.Parameters.AddWithValue("@TempBa4", ((object)transformers.TempBa4 == null ? DBNull.Value : (object)transformers.TempBa4));
                cmd.Parameters.AddWithValue("@TempArea1", ((object)transformers.TempArea1 == null ? DBNull.Value : (object)transformers.TempArea1));
                cmd.Parameters.AddWithValue("@TempArea2", ((object)transformers.TempArea2 == null ? DBNull.Value : (object)transformers.TempArea2));
                cmd.Parameters.AddWithValue("@TempArea3", ((object)transformers.TempArea3 == null ? DBNull.Value : (object)transformers.TempArea3));
                cmd.Parameters.AddWithValue("@TempArea4", ((object)transformers.TempArea4 == null ? DBNull.Value : (object)transformers.TempArea4));
                cmd.Parameters.AddWithValue("@MachineIBa1", ((object)transformers.MachineIBa1 == null ? DBNull.Value : (object)transformers.MachineIBa1));
                cmd.Parameters.AddWithValue("@MachineUBa1", ((object)transformers.MachineUBa1 == null ? DBNull.Value : (object)transformers.MachineUBa1));
                cmd.Parameters.AddWithValue("@MachineIBa2", ((object)transformers.MachineIBa2 == null ? DBNull.Value : (object)transformers.MachineIBa2));
                cmd.Parameters.AddWithValue("@MachineUBa2", ((object)transformers.MachineUBa2 == null ? DBNull.Value : (object)transformers.MachineUBa2));
                cmd.Parameters.AddWithValue("@MachineIBa3", ((object)transformers.MachineIBa3 == null ? DBNull.Value : (object)transformers.MachineIBa3));
                cmd.Parameters.AddWithValue("@MachineUBa3", ((object)transformers.MachineUBa3 == null ? DBNull.Value : (object)transformers.MachineUBa3));
                cmd.Parameters.AddWithValue("@MachineIBa4", ((object)transformers.MachineIBa4 == null ? DBNull.Value : (object)transformers.MachineIBa4));
                cmd.Parameters.AddWithValue("@MachineUBa4", ((object)transformers.MachineUBa4 == null ? DBNull.Value : (object)transformers.MachineUBa4));
                cmd.Parameters.AddWithValue("@MachineRunningTime", ((object)transformers.MachineRunningTime == null ? DBNull.Value : (object)transformers.MachineRunningTime));
                cmd.Parameters.AddWithValue("@MachineStopTime", ((object)transformers.MachineStopTime == null ? DBNull.Value : (object)transformers.MachineStopTime));
                cmd.Parameters.AddWithValue("@TimeReceived", ((object)transformers.TimeReceived == null ? DBNull.Value : String.Format("{0}.000", transformers.TimeReceived)));
                cmd.Parameters.AddWithValue("@Signal", ((object)transformers.Signal == null ? DBNull.Value : (object)transformers.Signal));
                cmd.Parameters.Add("@Id", SqlDbType.BigInt).Direction = ParameterDirection.Output;

                var result = cmd.ExecuteNonQuery();
                transformers.Id = Convert.ToInt64(cmd.Parameters["@Id"].Value);
                transformers.TimeReceived = String.Format("{0}.000", transformers.TimeReceived);
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
                TransformerSend _TransformerSave = new TransformerSend();
                _TransformerSave.Id = transformers.Id;
                _TransformerSave.TransformerCode = transformers.TransformerCode;
                _TransformerSave.TempBa1 = transformers.TempBa1;
                _TransformerSave.TempBa2 = transformers.TempBa2;
                _TransformerSave.TempBa3 = transformers.TempBa3;
                _TransformerSave.TempArea1 = transformers.TempArea1;
                _TransformerSave.TempArea2 = transformers.TempArea2;
                _TransformerSave.TempArea3 = transformers.TempArea3;
                _TransformerSave.MachineIBa1 = transformers.MachineIBa1;
                _TransformerSave.MachineUBa1 = transformers.MachineUBa1;
                _TransformerSave.MachineIBa2 = transformers.MachineIBa2;
                _TransformerSave.MachineUBa2 = transformers.MachineUBa2;
                _TransformerSave.MachineIBa3 = transformers.MachineIBa3;
                _TransformerSave.MachineUBa3 = transformers.MachineUBa3;
                _TransformerSave.MachineIBa4 = transformers.MachineIBa4;
                _TransformerSave.MachineUBa4 = transformers.MachineUBa4;
                _TransformerSave.MachineRunningTime = transformers.MachineRunningTime;
                _TransformerSave.MachineStopTime = transformers.MachineStopTime;
                _TransformerSave.Signal = transformers.Signal;
                _TransformerSave.TimeReceived = transformers.TimeReceived;

                //Lưu gói tin mới vào file
                //workingDirectory = E:\Project\MQTT Web\DanhGiaPhuHop3
                string workingDirectory = Environment.CurrentDirectory;
                //GetDate
                DateTime dateTime = DateTime.Now;
                string dateString = dateTime.ToString("ddMMyyyy");
                //folderPath = E:\Project\GetRangDong\wwwroot\Motor
                string folderPath = workingDirectory + @"\wwwroot" + @"\Transformers";

                if (!Directory.Exists(folderPath))
                {
                    Directory.CreateDirectory(folderPath);
                }

                // E:\Project\GetRangDong\wwwroot\Transformers\29032022.json
                string pathListMessage = folderPath + @"\ML_" + dateString + ".json";

                //string pathLastMessage = folderPath + @"\LastMessage.txt";
                FileInfo fileList = new FileInfo(pathListMessage);
                //FileInfo fileLast = new FileInfo(pathLastMessage);
                string payload = JsonConvert.SerializeObject(_TransformerSave);

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

                return _TransformerSave;
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
