using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
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
    public class PlanApproveController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public PlanApproveController(IConfiguration configuration)
        {
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
                new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Quản lý phê duyệt kế hoạch" }, ConnectionString);
            return View();
        }

        public IEnumerable<PlanApprove> Get()
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
                cmd.CommandText = "GetPlanApprove";
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var departmentList = new List<PlanApprove>();
                while (sqlDataReader.Read())
                {
                    var _result = new PlanApprove();
                    if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    _result.PlanTable = sqlDataReader["PlanTable"].ToString();
                    _result.FieldName = sqlDataReader["FieldName"].ToString();
                    _result.UserSignalture = sqlDataReader["UserSignalture"].ToString();
                    _result.PlanApproveName = sqlDataReader["PlanApproveName"].ToString();
                    _result.PlanStatusInfor = sqlDataReader["PlanStatusInfor"].ToString();
                    _result.AvatarUserCreate = sqlDataReader["AvatarUserCreate"].ToString();
                    _result.AvatarUserView = sqlDataReader["AvatarUserView"].ToString();
                    _result.PlanNumber = sqlDataReader["PlanNumber"].ToString();
                    _result.NumberAju = sqlDataReader["NumberAju"].ToString();
                    _result.PlanYear = sqlDataReader["PlanYear"].ToString();
                    _result.PlanMonth = sqlDataReader["PlanMonth"].ToString();
                    _result.BranchId = sqlDataReader["BranchId"].ToString();
                    _result.IsMark = int.Parse(String.Format("{0}", sqlDataReader["IsMark"]));
                    _result.UserPlanName = currentUserID;
                    if (!(sqlDataReader["DatePlan"] is DBNull))
                    {
                        _result.DatePlan = DateTime.Parse(String.Format("{0}", sqlDataReader["DatePlan"])).ToString("MMM dd, yyyy, HH:mm tt");

                    }
                    _result.TimeToolTip = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("MMM dd, yyyy, HH:mm tt");
                    _result.TimeView = _result.TimeToolTip.Split(",")[0];

                    departmentList.Add(_result);
                }
                return departmentList;
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
        public MessageResults UpdatePlanMark(Int64 PlanId,string PlanTable,string FieldName,int isMark)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            var _sre = new MessageResults();
            _sre.success = false;
            _sre.message = "Thực hiện không thành công";
            _sre.Id = isMark;
            try
            {
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PlanApproveMarkUpdate";
                cmd.Parameters.AddWithValue("@PlanId", PlanId);
                cmd.Parameters.AddWithValue("@PlanTable", PlanTable);
                cmd.Parameters.AddWithValue("@FieldName", FieldName);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@isMark", isMark);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                int cmdresult = cmd.ExecuteNonQuery();
                if (cmdresult > 0)
                {
                    _sre.success = true;
                    _sre.message = (isMark == 0) ? "Đánh dấu thành công" : "Hủy đánh dấu thành công";
                    _sre.Id = (isMark == 0) ? 1 : 0;
                }
                return _sre;
            }
            catch (Exception ex)
            {
                _sre.success = false;
                _sre.message = "Thực hiện không thành công";
                _sre.Id = isMark;
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
        public MessageResults UpdatePlanStatus(Int64 PlanApproveStatusId, Int64 PlanId, string PlanTable, string FieldName, string Note, int StatusNew)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            MessageResults _result = new MessageResults();
            _result.success = false;
            _result.message = "Thực hiện không thành công";
            _result.Id = 0;
            try
            {
                ClaimsPrincipal currentUser = this.User;
                var currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PlanApproveStatusUpdate";
                cmd.Parameters.AddWithValue("@PlanApproveStatusId", PlanId);
                cmd.Parameters.AddWithValue("@PlanId", PlanId);
                cmd.Parameters.AddWithValue("@PlanTable", PlanTable);
                cmd.Parameters.AddWithValue("@FieldName", FieldName);
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@IsAccept", StatusNew);
                cmd.Parameters.AddWithValue("@Note", Note);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                SqlDataReader _reader = cmd.ExecuteReader();
                _result = BaseService.GetMessageResults(_reader);
                BaseService.AddUserActive(currentUserID, IpAddress, _result, ConnectionString);
            }
            catch (Exception ex)
            {
                _result.success = false; _result.Id = 0;
                _result.message = "Thực hiện không thành công";
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
            }
            finally
            {
                sqlConnection.Close();
            }
            return _result;
        }
    }
}
