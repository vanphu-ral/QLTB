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
using System.Numerics;
using System.Reflection;
using System.Security.Claims;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    public class PlanController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public PlanController(IConfiguration configuration)
        {
            Configuration = configuration;
        }
        private string currentUserID;
        private string IpAddress;
        public IActionResult Index()
        {
            ClaimsPrincipal currentUser = this.User;
            currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
            IpAddress = String.Format("{0}", HttpContext.Connection.RemoteIpAddress);
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Lập kế hoạch" }, ConnectionString);
            return View();
        }
        [HttpGet]
        public IEnumerable<PlanList> GetPlanList(string stype, int syear, int BranchId, int PlanId)
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
                cmd.CommandText = "GetPlanList";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@PlanTable", (object)stype != null ? stype : (object)"");
                cmd.Parameters.AddWithValue("@PlanId", (object)PlanId != null ? PlanId : 0);
                cmd.Parameters.AddWithValue("@PlanYear", (object)syear != null ? syear : (object)"");
                cmd.Parameters.AddWithValue("@BranchId", (object)BranchId != null ? BranchId : 0);
                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var departmentList = new List<PlanList>();
                while (sqlDataReader.Read())
                {
                    var _result = new PlanList();
                    if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    if (!(sqlDataReader["PlanYear"] is DBNull)) _result.PlanYear = int.Parse(String.Format("{0}", sqlDataReader["PlanYear"]));
                    if (!(sqlDataReader["FactoryId"] is DBNull)) _result.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                    if (!(sqlDataReader["BranchId"] is DBNull)) _result.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                    if (!(sqlDataReader["PlanMonth"] is DBNull)) _result.PlanMonth = int.Parse(String.Format("{0}", sqlDataReader["PlanMonth"]));
                    if (!(sqlDataReader["DeviceId"] is DBNull)) _result.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                    if (!(sqlDataReader["LineId"] is DBNull)) _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
                    if (!(sqlDataReader["TeamId"] is DBNull)) _result.TeamId = int.Parse(String.Format("{0}", sqlDataReader["TeamId"]));
                    if (!(sqlDataReader["PlanReportNumber"] is DBNull)) _result.PlanReportNumber = int.Parse(String.Format("{0}", sqlDataReader["PlanReportNumber"]));
                    _result.ColValue01 = sqlDataReader["ColValue01"].ToString();
                    _result.ColValue02 = sqlDataReader["ColValue02"].ToString();
                    _result.ColValue03 = sqlDataReader["ColValue03"].ToString();
                    _result.ColValue04 = sqlDataReader["ColValue04"].ToString();
                    _result.ColValue05 = sqlDataReader["ColValue05"].ToString();
                    _result.ColValue06 = sqlDataReader["ColValue06"].ToString();
                    _result.ColValue07 = sqlDataReader["ColValue07"].ToString();
                    _result.ColValue08 = sqlDataReader["ColValue08"].ToString();
                    _result.ColValue09 = sqlDataReader["ColValue09"].ToString();
                    _result.ColValue10 = sqlDataReader["ColValue10"].ToString();
                    _result.ColValue11 = sqlDataReader["ColValue11"].ToString();
                    _result.ColValue12 = sqlDataReader["ColValue12"].ToString();
                    _result.ColValue13 = sqlDataReader["ColValue13"].ToString();
                    _result.ColValue14 = sqlDataReader["ColValue14"].ToString();
                    _result.ColValue15 = sqlDataReader["ColValue15"].ToString();
                    _result.FileScan = sqlDataReader["FileScan"].ToString();
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
        public IEnumerable<PlanSignature> GetPlanSignature(string PlanTable, Int64 PlanId)
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
                cmd.CommandText = "GetPlanSignature";
                cmd.Parameters.AddWithValue("@PlanTable", (object)PlanTable != null ? PlanTable : (object)"");
                cmd.Parameters.AddWithValue("@PlanId", (object)PlanId != null ? PlanId : 0);

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                var _result = new List<PlanSignature>();
                while (sqlDataReader.Read())
                {
                    var item = new PlanSignature();
                    if (!(sqlDataReader["STT"] is DBNull)) item.STT = int.Parse(String.Format("{0}", sqlDataReader["STT"]));
                    item.ApproveStaus = sqlDataReader["ApproveStaus"].ToString();
                    item.UserId = sqlDataReader["UserId"].ToString();
                    item.TableName = sqlDataReader["TableName"].ToString();
                    item.FieldName = sqlDataReader["FieldName"].ToString();
                    item.DatePlan = sqlDataReader["DatePlan"].ToString();
                    item.UserName = sqlDataReader["UserName"].ToString();
                    item.Signature = sqlDataReader["UserSignature"].ToString();
                    item.UserNote = sqlDataReader["UserNote"].ToString();
                    _result.Add(item);
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
        ///PlanChangeActive <summary>
        /// </summary>
        /// <param name="_user"></param>
        /// <returns></returns>
        public MessageResults PlanChangeActive(string stype, int Id, int ActValue)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "PlanChangeActive";
                cmd.Parameters.AddWithValue("@PlanTable", (stype == null ? DBNull.Value : (object)stype));
                cmd.Parameters.AddWithValue("@PlanId", ((object)Id == null ? DBNull.Value : (object)Id));
                cmd.Parameters.AddWithValue("@ActValue", ((object)ActValue == null ? DBNull.Value : (object)ActValue));
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
        public MessageResults UpdatePlanDailyFileScan(int Id, IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "UpdatePlanDailyFileScan";
                if (fileUpload == null || fileUpload.Length == 0)
                {  //Không có file được chọn
                    _result.success = false; _result.Id = 0;
                    _result.message = "Không có file được chọn";
                    return _result;
                }
                else
                {
                    string sDir = String.Format("/wwwroot/uploads/FileScan/").Replace("/", "\\");
                    var rootFolder = Directory.GetCurrentDirectory();
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("fileScan_{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
                    var newFilePath = String.Format("{0}{1}", sDir, newFileName);
                    var filePathFull = Path.Combine(rootFolder + newFilePath);
                    FileInfo fileInfo = new FileInfo(filePathFull);

                    if (!System.IO.File.Exists(filePathFull))
                        if (!System.IO.Directory.Exists(fileInfo.Directory?.FullName))
                        {
                            Directory.CreateDirectory(String.Format("{0}", fileInfo.Directory?.FullName));
                        }
                    using (var inputStream = fileInfo.Create())
                    {
                        fileUpload.CopyTo(inputStream);
                        ////Xóa File cũ
                        //if (department.FilePath != "")
                        //{
                        //    var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", sDir, department.FilePath).Replace("/", "\\"));
                        //    if (System.IO.File.Exists(filePathOld))
                        //    {
                        //        System.IO.File.Delete(filePathOld);
                        //    }
                        //}
                    }
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Parameters.AddWithValue("@FIleScan", newFileName);
                }

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                BaseService.AddUserActive(currentUserID, IpAddress, _result, ConnectionString);
                return _result;
            }
            catch (Exception ex)
            {
                _result.success = false; _result.Id = 0;
                _result.message = "Thêm file không thành công";
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
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults UpdatePlanOverFileScan(int Id, IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "UpdatePlanOverFileScan";
                if (fileUpload == null || fileUpload.Length == 0)
                {  //Không có file được chọn
                    _result.success = false; _result.Id = 0;
                    _result.message = "Không có file được chọn";
                    return _result;
                }
                else
                {
                    string sDir = String.Format("/wwwroot/uploads/FileScan/").Replace("/", "\\");
                    var rootFolder = Directory.GetCurrentDirectory();
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("fileScan_{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
                    var newFilePath = String.Format("{0}{1}", sDir, newFileName);
                    var filePathFull = Path.Combine(rootFolder + newFilePath);
                    FileInfo fileInfo = new FileInfo(filePathFull);

                    if (!System.IO.File.Exists(filePathFull))
                        if (!System.IO.Directory.Exists(fileInfo.Directory?.FullName))
                        {
                            Directory.CreateDirectory(String.Format("{0}", fileInfo.Directory?.FullName));
                        }
                    using (var inputStream = fileInfo.Create())
                    {
                        fileUpload.CopyTo(inputStream);
                        ////Xóa File cũ
                        //if (department.FilePath != "")
                        //{
                        //    var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", sDir, department.FilePath).Replace("/", "\\"));
                        //    if (System.IO.File.Exists(filePathOld))
                        //    {
                        //        System.IO.File.Delete(filePathOld);
                        //    }
                        //}
                    }
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Parameters.AddWithValue("@FIleScan", newFileName);
                }

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                BaseService.AddUserActive(currentUserID, IpAddress, _result, ConnectionString);
                return _result;
            }
            catch (Exception ex)
            {
                _result.success = false; _result.Id = 0;
                _result.message = "Thêm file không thành công";
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
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults UpdatePlanPeriodicFileScan(int Id, IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "UpdatePlanPeriodicFileScan";
                if (fileUpload == null || fileUpload.Length == 0)
                {  //Không có file được chọn
                    _result.success = false; _result.Id = 0;
                    _result.message = "Không có file được chọn";
                    return _result;
                }
                else
                {
                    string sDir = String.Format("/wwwroot/uploads/FileScan/").Replace("/", "\\");
                    var rootFolder = Directory.GetCurrentDirectory();
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("fileScan_{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
                    var newFilePath = String.Format("{0}{1}", sDir, newFileName);
                    var filePathFull = Path.Combine(rootFolder + newFilePath);
                    FileInfo fileInfo = new FileInfo(filePathFull);

                    if (!System.IO.File.Exists(filePathFull))
                        if (!System.IO.Directory.Exists(fileInfo.Directory?.FullName))
                        {
                            Directory.CreateDirectory(String.Format("{0}", fileInfo.Directory?.FullName));
                        }
                    using (var inputStream = fileInfo.Create())
                    {
                        fileUpload.CopyTo(inputStream);
                        ////Xóa File cũ
                        //if (department.FilePath != "")
                        //{
                        //    var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", sDir, department.FilePath).Replace("/", "\\"));
                        //    if (System.IO.File.Exists(filePathOld))
                        //    {
                        //        System.IO.File.Delete(filePathOld);
                        //    }
                        //}
                    }
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Parameters.AddWithValue("@FIleScan", newFileName);
                }

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                BaseService.AddUserActive(currentUserID, IpAddress, _result, ConnectionString);
                return _result;
            }
            catch (Exception ex)
            {
                _result.success = false; _result.Id = 0;
                _result.message = "Thêm file không thành công";
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
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults UpdatePlanSupplieFileScan(int Id, IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "UpdatePlanSupplieFileScan";
                if (fileUpload == null || fileUpload.Length == 0)
                {  //Không có file được chọn
                    _result.success = false; _result.Id = 0;
                    _result.message = "Không có file được chọn";
                    return _result;
                }
                else
                {
                    string sDir = String.Format("/wwwroot/uploads/FileScan/").Replace("/", "\\");
                    var rootFolder = Directory.GetCurrentDirectory();
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("fileScan_{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
                    var newFilePath = String.Format("{0}{1}", sDir, newFileName);
                    var filePathFull = Path.Combine(rootFolder + newFilePath);
                    FileInfo fileInfo = new FileInfo(filePathFull);

                    if (!System.IO.File.Exists(filePathFull))
                        if (!System.IO.Directory.Exists(fileInfo.Directory?.FullName))
                        {
                            Directory.CreateDirectory(String.Format("{0}", fileInfo.Directory?.FullName));
                        }
                    using (var inputStream = fileInfo.Create())
                    {
                        fileUpload.CopyTo(inputStream);
                        ////Xóa File cũ
                        //if (department.FilePath != "")
                        //{
                        //    var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", sDir, department.FilePath).Replace("/", "\\"));
                        //    if (System.IO.File.Exists(filePathOld))
                        //    {
                        //        System.IO.File.Delete(filePathOld);
                        //    }
                        //}
                    }
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Parameters.AddWithValue("@FIleScan", newFileName);
                }

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                BaseService.AddUserActive(currentUserID, IpAddress, _result, ConnectionString);
                return _result;
            }
            catch (Exception ex)
            {
                _result.success = false; _result.Id = 0;
                _result.message = "Thêm file không thành công";
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
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults UpdatePlanTargetFileScan(int Id, IFormFile fileUpload)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "UpdatePlanTargetFileScan";
                if (fileUpload == null || fileUpload.Length == 0)
                {  //Không có file được chọn
                    _result.success = false; _result.Id = 0;
                    _result.message = "Không có file được chọn";
                    return _result;
                }
                else
                {
                    string sDir = String.Format("/wwwroot/uploads/FileScan/").Replace("/", "\\");
                    var rootFolder = Directory.GetCurrentDirectory();
                    var fileExtension = Path.GetExtension(fileUpload.FileName);
                    var newFileName = String.Format("fileScan_{0}{1}", DateTime.Now.ToString("yyyyMMdd_HHmmss"), fileExtension);
                    var newFilePath = String.Format("{0}{1}", sDir, newFileName);
                    var filePathFull = Path.Combine(rootFolder + newFilePath);
                    FileInfo fileInfo = new FileInfo(filePathFull);

                    if (!System.IO.File.Exists(filePathFull))
                        if (!System.IO.Directory.Exists(fileInfo.Directory?.FullName))
                        {
                            Directory.CreateDirectory(String.Format("{0}", fileInfo.Directory?.FullName));
                        }
                    using (var inputStream = fileInfo.Create())
                    {
                        fileUpload.CopyTo(inputStream);
                        ////Xóa File cũ
                        //if (department.FilePath != "")
                        //{
                        //    var filePathOld = Path.Combine(rootFolder + String.Format("{0}{1}", sDir, department.FilePath).Replace("/", "\\"));
                        //    if (System.IO.File.Exists(filePathOld))
                        //    {
                        //        System.IO.File.Delete(filePathOld);
                        //    }
                        //}
                    }
                    cmd.Parameters.AddWithValue("@Id", Id);
                    cmd.Parameters.AddWithValue("@FIleScan", newFileName);
                }

                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                BaseService.AddUserActive(currentUserID, IpAddress, _result, ConnectionString);
                return _result;
            }
            catch (Exception ex)
            {
                _result.success = false; _result.Id = 0;
                _result.message = "Thêm file không thành công";
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
        [HttpPost]
        //[ValidateAntiForgeryToken]
        public MessageResults UpdateContentPlanById(int Id, string PlanTable, string UpdateContent01, string UpdateContent02, string UpdateContent03)
        {
            MessageResults _result = new MessageResults();
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "UpdateContentPlanById";
                cmd.Parameters.AddWithValue("@PlanTable", (PlanTable == null ? DBNull.Value : (object)PlanTable));
                cmd.Parameters.AddWithValue("@UpdateContent01", (UpdateContent01 == null ? DBNull.Value : (object)UpdateContent01));
                cmd.Parameters.AddWithValue("@UpdateContent03", (UpdateContent03 == null ? DBNull.Value : (object)UpdateContent03));
                cmd.Parameters.AddWithValue("@UpdateContent02", (UpdateContent02 == null ? DBNull.Value : (object)UpdateContent02));
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@UserId", currentUserID);                
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
                _result.success = false; _result.Id = 0;
                _result.message = "Cập nhật không thành công";
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
