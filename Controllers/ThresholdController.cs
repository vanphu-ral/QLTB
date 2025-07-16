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
    public class ThresholdController : Controller
    {
        private readonly ILogger<ThresholdController> _logger;
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public ThresholdController(ILogger<ThresholdController> logger, IConfiguration configuration)
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
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Quản lý giá trị ngưỡng cảnh báo các thông số đo" }, ConnectionString);
            return View();
        }

        public IEnumerable<Threshold> Get()
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
                cmd.CommandText = "GetThreshold";
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _thresholdList = new List<Threshold>();
                while (sqlDataReader.Read())
                {
                    var _result = new Threshold();
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    if (!(sqlDataReader["UpperValue"] is DBNull))
                    {
                        _result.UpperValue = decimal.Parse(String.Format("{0}", sqlDataReader["UpperValue"]));
                    }
                    else _result.UpperValue = null;

                    if (!(sqlDataReader["LowerValue"] is DBNull))
                    {
                        _result.LowerValue = decimal.Parse(String.Format("{0}", sqlDataReader["LowerValue"]));
                    }
                    else _result.LowerValue = null;
                    if (!(sqlDataReader["OrangeLowerValue"] is DBNull))
                    {
                        _result.OrangeLowerValue = decimal.Parse(String.Format("{0}", sqlDataReader["OrangeLowerValue"]));
                    }
                    else _result.OrangeLowerValue = null;
                    if (!(sqlDataReader["OrangeUpperValue"] is DBNull))
                    {
                        _result.OrangeUpperValue = decimal.Parse(String.Format("{0}", sqlDataReader["OrangeUpperValue"]));
                    }
                    else _result.OrangeUpperValue = null;
                    if (!(sqlDataReader["RedLowerValue"] is DBNull))
                    {
                        _result.RedLowerValue = decimal.Parse(String.Format("{0}", sqlDataReader["RedLowerValue"]));
                    }
                    else _result.RedLowerValue = null;
                    if (!(sqlDataReader["RedUpperValue"] is DBNull))
                    {
                        _result.RedUpperValue = decimal.Parse(String.Format("{0}", sqlDataReader["RedUpperValue"]));
                    }
                    else _result.RedUpperValue = null;

                    _result.Name = sqlDataReader["Name"].ToString();
                    _result.Code = sqlDataReader["Code"].ToString();
                    _result.ThresholdCodeName = sqlDataReader["ThresholdCodeName"].ToString();
                    _result.Description = sqlDataReader["Description"].ToString();
                    if (!(sqlDataReader["TimeCreated"] is DBNull))
                    {
                        _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                    }
                    if (!(sqlDataReader["TimeModified"] is DBNull))
                    {
                        _result.TimeModified = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeModified"])).ToString("dd/MM/yyyy HH:mm");
                    }

                    _thresholdList.Add(_result);
                }

                return _thresholdList;
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
        public MessageResults Add(Threshold _threshold)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "AddThreshold";

                cmd.Parameters.AddWithValue("@Name", (_threshold.Name == null ? DBNull.Value : (object)_threshold.Name));
                cmd.Parameters.AddWithValue("@Code", (_threshold.Code == null ? DBNull.Value : (object)_threshold.Code));
                cmd.Parameters.AddWithValue("@UpperValue", ((object)_threshold.UpperValue == null ? DBNull.Value : (object)_threshold.UpperValue));
                cmd.Parameters.AddWithValue("@LowerValue", ((object)_threshold.LowerValue == null ? DBNull.Value : (object)_threshold.LowerValue));
                cmd.Parameters.AddWithValue("@OrangeLowerValue", ((object)_threshold.OrangeLowerValue == null ? DBNull.Value : (object)_threshold.OrangeLowerValue));
                cmd.Parameters.AddWithValue("@OrangeUpperValue", ((object)_threshold.OrangeUpperValue == null ? DBNull.Value : (object)_threshold.OrangeUpperValue));
                cmd.Parameters.AddWithValue("@RedLowerValue", ((object)_threshold.RedLowerValue == null ? DBNull.Value : (object)_threshold.RedLowerValue));
                cmd.Parameters.AddWithValue("@RedUpperValue", ((object)_threshold.RedUpperValue == null ? DBNull.Value : (object)_threshold.RedUpperValue));
                cmd.Parameters.AddWithValue("@Description", _threshold.Description == null ? DBNull.Value : (object)_threshold.Description);
                

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
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
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults Edit(Threshold _threshold)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "EditThreshold";
                _Nlog.Info(_threshold.OrangeLowerValue);
                cmd.Parameters.AddWithValue("@Id", _threshold.Id);
                cmd.Parameters.AddWithValue("@Name", (_threshold.Name == null ? DBNull.Value : (object)_threshold.Name));
                cmd.Parameters.AddWithValue("@Code", (_threshold.Code == null ? DBNull.Value : (object)_threshold.Code));
                cmd.Parameters.AddWithValue("@UpperValue", ((object)_threshold.UpperValue == null ? DBNull.Value : (object)_threshold.UpperValue));
                cmd.Parameters.AddWithValue("@LowerValue", ((object)_threshold.LowerValue == null ? DBNull.Value : (object)_threshold.LowerValue));
                cmd.Parameters.AddWithValue("@OrangeLowerValue", ((object)_threshold.OrangeLowerValue == null ? DBNull.Value : (object)_threshold.OrangeLowerValue));
                cmd.Parameters.AddWithValue("@OrangeUpperValue", ((object)_threshold.OrangeUpperValue == null ? DBNull.Value : (object)_threshold.OrangeUpperValue));
                cmd.Parameters.AddWithValue("@RedLowerValue", ((object)_threshold.RedLowerValue == null ? DBNull.Value : (object)_threshold.RedLowerValue));
                cmd.Parameters.AddWithValue("@RedUpperValue", ((object)_threshold.RedUpperValue == null ? DBNull.Value : (object)_threshold.RedUpperValue));
                cmd.Parameters.AddWithValue("@Description", _threshold.Description == null ? DBNull.Value : (object)_threshold.Description);

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
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
        // POST: ThresholdController/Delete/5
        [HttpGet]
        public MessageResults Distroy(int Id, string DelName)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("GetRangDongConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "DeleteThreshold";
                cmd.Parameters.AddWithValue("@Id", Id);

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
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
