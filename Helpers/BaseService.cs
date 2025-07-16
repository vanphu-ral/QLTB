using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using MledNew2023.MVC.Constants;
using MledNew2023.MVC.Models;
using Newtonsoft.Json;
using NPOI.SS.UserModel;
using System;
using System.Collections.Generic;
using System.ComponentModel;
using System.Configuration;
using System.Data;
using System.IO;
using System.Net;
using System.Net.Mail;
using System.Reflection;
using System.Security.Claims;
using System.Text.RegularExpressions;
using System.Threading.Tasks;

namespace MledNew2023.MVC.Helpers
{
    [AllowAnonymous]
    public class BaseService
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        private DatabaseParameter DatabaseParameter = new DatabaseParameter();
        public SystemParameter SystemParameter = new SystemParameter();
        private IConfiguration _iConfiguration;
        private IWebHostEnvironment _webHostEnvironment;
        private readonly SignInManager<IdentityUser> _signInManager;
        private readonly UserManager<IdentityUser> _userManager;
        private readonly RoleManager<IdentityRole> _roleManager;
        public BaseService(IConfiguration iConfiguration, IWebHostEnvironment webHostEnvironment, UserManager<IdentityUser> userManager, SignInManager<IdentityUser> signInManager, RoleManager<IdentityRole> roleManager)
        {
            try
            {
                _iConfiguration = iConfiguration;
                _webHostEnvironment = webHostEnvironment;
                SystemParameter.WebRootPath = _webHostEnvironment.WebRootPath;//wwwroot
                SystemParameter.ContentRootPath = _webHostEnvironment.ContentRootPath;

                _userManager = userManager;
                _signInManager = signInManager;
                _roleManager = roleManager;

                //DatabaseParameter.ConnectionString = iConfiguration.GetValue<string>("DatabaseParameter:ConnectionString");
                //SystemParameter.HomePage = iConfiguration.GetValue<string>("SystemParameter:HomePage");
                //SystemParameter.AdminPage = iConfiguration.GetValue<string>("SystemParameter:AdminPage");
                //SystemParameter.MaxUploadFileSize = iConfiguration.GetValue<int>("SystemParameter:MaxUploadFileSize");//int.Parse(iConfiguration["SystemParameter:MaxUploadFileSize"]);
                //SystemParameter.UploadExcelDirectory = iConfiguration["SystemParameter:UploadExcelDirectory"];
                //SystemParameter.UploadUserImage = iConfiguration["SystemParameter:UploadUserImage"];
                //SystemParameter.UploadProductImage = iConfiguration["SystemParameter:UploadProductImage"];
                //SystemParameter.UploadCategoryImage = iConfiguration["SystemParameter:UploadCategoryImage"];
                //SystemParameter.UploadSearchTrendImage = iConfiguration["SystemParameter:UploadSearchTrendImage"];
                //SystemParameter.UploadForm = iConfiguration["SystemParameter:UploadForm"];
                //SystemParameter.CultureInfo = iConfiguration["SystemParameter:CultureInfo"];
                //SystemParameter.EmailAddress = iConfiguration["SystemParameter:EmailAddress"];
                //SystemParameter.EmailSmtp = iConfiguration["SystemParameter:EmailSmtp"];
                //SystemParameter.EmailPort = iConfiguration.GetValue<int>("SystemParameter:EmailPort");
                //SystemParameter.EmailUser = iConfiguration["SystemParameter:EmailUser"];
                //SystemParameter.EmailPassword = iConfiguration["SystemParameter:EmailPassword"];
                //SystemParameter.UseSqlServer = iConfiguration.GetValue<int>("SystemParameter:UseSqlServer");                
            }
            catch (Exception ex)
            {
                LogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), ex);
            }
        }
        protected void LogError(string methodName, Exception ex)
        {
            _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
        }
        [AllowAnonymous]
        public static void NLogError(string methodName, string Ip, Exception ex)
        {
            _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                  methodName,
                  ex.Message,
                  ex.StackTrace,
                  ex.InnerException,
                  (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
        }
        [AllowAnonymous]
        public static void NLogInfor(string mess)
        {
            _Nlog.Info(mess);
        }
        protected void LogInfor(string mess, Exception ex)
        {
            //Get a StackTrace object for the exception
            System.Diagnostics.StackTrace st = new System.Diagnostics.StackTrace(ex, true);
            //Get the last/first stack frame
            System.Diagnostics.StackFrame frame = st.GetFrame(st.FrameCount - 1);
            //_logger.LogError("\r\nMethod={0}\r\nMessage={1}\r\nFileName={2}\r\nLine={3}\r\nStackTrace={4}\r\nInnerException={5}\r\nInnerException.Message={6}\r\n--------------------------------------------------\r\n",
            _Nlog.Info(mess);
        }
        public class ConfigSystemService
        {
            public static List<ConfigSystem> GetConfigSystemByKey(string sCode, string ConnectionString)
            {
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "GetConfigSystemByKey";
                    cmd.Parameters.AddWithValue("@ConfigKey", ((object)sCode == null ? DBNull.Value : (object)sCode));
                    SqlDataReader sqlDataReader = cmd.ExecuteReader();
                    var _ConfigSystemList = new List<ConfigSystem>();
                    while (sqlDataReader.Read())
                    {
                        var _result = new ConfigSystem();
                        if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        _result.OrderView = sqlDataReader["OrderView"].ToString();
                        _result.ConfigName = sqlDataReader["ConfigName"].ToString();
                        _result.ConfigValue = sqlDataReader["ConfigValue"].ToString();
                        _result.ConfigCode = sqlDataReader["ConfigCode"].ToString();
                        _ConfigSystemList.Add(_result);
                    }

                    return _ConfigSystemList;
                }
                catch (Exception ex)
                {
                    BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);
                    return null;
                }
                finally
                {
                    sqlConnection.Close();
                }
            }
            public static List<ConfigSystem> GetConfigSystemByKeyNew(string sCode, string ConnectionString, string IpAddress)
            {
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "GetConfigSystemByKey";
                    cmd.Parameters.AddWithValue("@ConfigKey", ((object)sCode == null ? DBNull.Value : (object)sCode));
                    cmd.Parameters.AddWithValue("@IpAddress", ((object)IpAddress == null ? DBNull.Value : (object)IpAddress));
                    SqlDataReader sqlDataReader = cmd.ExecuteReader();
                    var _ConfigSystemList = new List<ConfigSystem>();
                    while (sqlDataReader.Read())
                    {
                        var _result = new ConfigSystem();
                        if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        _result.OrderView = sqlDataReader["OrderView"].ToString();
                        _result.ConfigName = sqlDataReader["ConfigName"].ToString();
                        _result.ConfigValue = sqlDataReader["ConfigValue"].ToString();
                        _result.ConfigCode = sqlDataReader["ConfigCode"].ToString();
                        _ConfigSystemList.Add(_result);
                    }

                    return _ConfigSystemList;
                }
                catch (Exception ex)
                {
                    BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);
                    return null;
                }
                finally
                {
                    sqlConnection.Close();
                }
            }
        }

        public class SendEmailService
        {
            public static EmailSetting GetSettingValueByEmail(Int64 PlanArticleId, string ConnectionString)
            {
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "GetSettingValueByEmail";
                    SqlDataReader sqlDataReader = cmd.ExecuteReader();
                    var _EmailSetting = new EmailSetting();
                    while (sqlDataReader.Read())
                    {
                        _EmailSetting.EmailAddress = sqlDataReader["EmailAddress"].ToString();
                        if (!(sqlDataReader["EmailPort"] is DBNull))
                            _EmailSetting.EmailPort = long.Parse(String.Format("{0}", sqlDataReader["EmailPort"]));
                        _EmailSetting.EmailSmtp = sqlDataReader["EmailSmtp"].ToString();
                        _EmailSetting.EmailUser = sqlDataReader["EmailUser"].ToString();
                        _EmailSetting.EmailPassword = sqlDataReader["EmailPassword"].ToString();
                    }
                    return _EmailSetting;
                }
                catch (Exception ex)
                {
                    BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);
                    return null;
                }
                finally
                {
                    sqlConnection.Close();
                }
            }
            public static void SendCompletedCallback(object sender, AsyncCompletedEventArgs args)
            {
                try
                {
                    string token = String.Format("{0}", args.UserState);
                    if (args.Cancelled)
                    {
                        _Nlog.Info("Gửi email {0} đã bị hủy bỏ.", token);
                    }
                    if (args.Error != null)
                    {
                        _Nlog.Info("Gửi email {0} gặp lỗi {1}", token, args.Error.ToString());
                    }
                    else
                    {
                        _Nlog.Info("Gửi email {0} thành công.", token);
                    }
                }
                catch (Exception ex)
                {
                    BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);
                }
            }

            public static void sSendEmail(EmailSetting SystemParameter, string sendTo, string subject, string body, bool isBodyHtml)
            {
                try
                {
                    bool errorFlag = false;
                    if (string.IsNullOrEmpty(SystemParameter.EmailAddress))
                    {
                        errorFlag = true;
                        _Nlog.Info("Địa chỉ email người gửi {0} không được để trống.", SystemParameter.EmailAddress);
                    }
                    //Regex regex = new Regex(@"\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*");
                    Regex regex = new Regex(@"^\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*$");
                    bool resultEmailAddress = regex.IsMatch(String.Format("{0}", SystemParameter.EmailAddress));
                    if (resultEmailAddress == false)
                    {
                        errorFlag = true;
                        _Nlog.Info("Địa chỉ email người gửi {0} không hợp lệ.", SystemParameter.EmailAddress);
                    }
                    bool resultSendTo = regex.IsMatch(sendTo);
                    if (resultSendTo == false)
                    {
                        errorFlag = true;
                        _Nlog.Info("Địa chỉ email người nhận {0} không hợp lệ.", sendTo);
                    }
                    if (65535 < SystemParameter.EmailPort || SystemParameter.EmailPort < 0)
                    {
                        errorFlag = true;
                        _Nlog.Info("Cổng email {0} không hợp lệ.", SystemParameter.EmailPort);
                    }
                    if (string.IsNullOrEmpty(SystemParameter.EmailSmtp))
                    {
                        errorFlag = true;
                        _Nlog.Info("Máy chủ email {0} không được để trống.", SystemParameter.EmailSmtp);
                    }
                    if (string.IsNullOrEmpty(SystemParameter.EmailUser))
                    {
                        errorFlag = true;
                        _Nlog.Info("Tài khoản email {0} không được để trống.", SystemParameter.EmailUser);
                    }
                    if (string.IsNullOrEmpty(SystemParameter.EmailPassword))
                    {
                        errorFlag = true;
                        _Nlog.Info("Mật khẩu email {0} không được để trống.", SystemParameter.EmailPassword);
                    }
                    if (errorFlag == false)
                    {
                        SmtpClient client = new SmtpClient(SystemParameter.EmailSmtp, (int)SystemParameter.EmailPort)
                        {
                            EnableSsl = true,
                            // UseDefaultCredentials = true
                        };
                        MailAddress from = new MailAddress(String.Format("{0}", SystemParameter.EmailAddress), string.Empty);
                        MailAddress to = new MailAddress(sendTo, string.Empty);
                        MailMessage message = new MailMessage(from, to)
                        {
                            IsBodyHtml = isBodyHtml,
                            Body = body,
                            Subject = subject
                        };
                        NetworkCredential myCreds = new NetworkCredential(SystemParameter.EmailUser, SystemParameter.EmailPassword, string.Empty);
                        client.Credentials = myCreds;
                        try
                        {
                            client.SendCompleted += SendCompletedCallback;
                            //Guid currentGuid = Guid.NewGuid();
                            //client.SendAsync(message, currentGuid.ToString());
                            string token = string.Format("từ {0} tới {1}", SystemParameter.EmailAddress, sendTo);
                            client.SendAsync(message, token);
                        }
                        catch (Exception ex)
                        {
                            client.SendCompleted -= SendCompletedCallback;
                            BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);
                        }
                    }
                }
                catch (Exception ex)
                {
                    BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);
                    _Nlog.Info("Gửi mail không thành công. sendTo={0} subject={1} body={2} isBodyHtml={3}", sendTo, subject, body, isBodyHtml);
                }
            }
        }
        public static MessageResults GetMessageResults(SqlDataReader sqlDataReader)
        {
            MessageResults _result = new MessageResults();
            try
            {
                while (sqlDataReader.Read())
                {
                    if (!(sqlDataReader["Id"] is DBNull))
                    {
                        _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                    }
                    _result.message = sqlDataReader["message"].ToString();
                    _result.Tittle = sqlDataReader["Tittle"].ToString();
                    if (_result.Id == 0) _result.success = false;
                    else _result.success = true;
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
            }
            return _result;
        }
        [AllowAnonymous]
        public static string GetModuleName(string _key)
        {
            string sreturn = "";
            switch (_key)
            {
                case "Lists": sreturn = "Danh mục chung (Danh mục tỉnh thành, quận, huyện, xưởng, ngành...)"; break;
                case "Device": sreturn = "Danh mục nhóm thiết bị, thiết bị máy móc (TBMM)"; break;
                case "Supplie": sreturn = "Danh mục nhóm vật tư, vật tư"; break;
                case "User": sreturn = "Quản lý người dùng"; break;
                case "Role": sreturn = "Quản lý nhóm quyền, phân quyền"; break;
                case "UserLogin": sreturn = "Nhật ký đăng nhập"; break;
                case "UserActive": sreturn = sreturn = "Nhật ký hoạt động"; break;
                case "Config": sreturn = sreturn = "Cấu hình hệ thống"; break;
                case "PlanDaily": sreturn = "Kế hoạch hàng ngày hàng tuần"; break;
                case "PlanPeriodic": sreturn = "Kế hoạch bảo dưỡng thiết bị định kỳ theo năm"; break;
                case "PlanOver": sreturn = "Kế hoạch sửa chữa lớn, Đại tu, Cải tạo thiết bị"; break;
                case "PlanSupplie": sreturn = "Kế hoạch Vật tư sửa chữa -Thay thế"; break;
                case "Target": sreturn = "Ké hoạch - Thực hiện mục tiêu thiết bị"; break;
                case "Form": sreturn = "Biểu mẫu, Hướng dẫn SCBD"; break;
                case "ErorrLog": sreturn = sreturn = "Nhật ký lỗi"; break;
                case "Report1": sreturn = "Báo cáo thống kê"; break;
                case "Threshold": sreturn = "Thiết lập giá trị ngưỡng cảnh báo"; break;
                case "PlanApprove": sreturn = "Phê duyệt văn bản"; break;
                case "PlanSummary": sreturn = "Tổng hợp hồ sơ"; break;

                default: return "";
            }
            return sreturn;
        }
        public static void UpdateUserActiveLog(string UserName, string Ip, MessageResults res)
        {
            if (res.Id != 0)
                _Nlog.Info(String.Format("{0}, {1}, {2}, {3}, {4}", UserName, Ip, res.Tittle, res.Id, res.message));
        }
        public static MessageResults AddUserActive(string userID, string IpAddress, MessageResults res, string ConnectionString)
        {
            var _result = new MessageResults();
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;

                cmd.Parameters.AddWithValue("@UserID", (object)userID);
                cmd.Parameters.AddWithValue("@IpAddress", (object)IpAddress);
                cmd.Parameters.AddWithValue("@LogContent", String.Format("{0}: [{1}] - {2}", res.Tittle, res.Id, res.message));
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
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
        public static string GetFolderNameByName(string fName)
        {
            string year = fName.Substring(0, 4);
            string month = fName.Substring(4, 2);
            string day = fName.Substring(6,2);
            return String.Format("{0}/{1}/{2}", day, month, year);
        }

        public static MessageResults AddUserLogin(string userID, string IpAddress, string ConnectionString)
        {
            var _result = new MessageResults();
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;

                cmd.Parameters.AddWithValue("@Email", userID);
                cmd.Parameters.AddWithValue("@IpAddress", (object)IpAddress);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                BaseService.UpdateUserActiveLog(userID, IpAddress, _result);
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
        public static string ConvertStringToDateSave(object iValue)
        {
            //DD/MM/YYYY HH:mm:ss => To //2022-04-21 15:49:30.017
            if (String.IsNullOrEmpty(iValue.ToString())) return "";
            string srult = "";
            string DateTimeValue = String.Format("{0}", iValue);
            string sDate = DateTimeValue.Substring(0, 10);
            string sTime = DateTimeValue.Substring(10, DateTimeValue.Length - 10);
            string[] arDate = sDate.Split("/");
            srult = String.Format("{0}-{1}-{2}{3}.017", arDate[2], arDate[1], arDate[0], sTime);
            return srult;
        }
        //public static string GetUserId(string _email, string ConnectionString)
        //{
        //    string userId = "";
        //    SqlConnection sqlConnection = new SqlConnection(ConnectionString);
        //    try
        //    {
        //        if (sqlConnection.State == ConnectionState.Closed)
        //        {
        //            sqlConnection.Open();
        //        }

        //        SqlCommand cmd = sqlConnection.CreateCommand();
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.CommandText = "GetUserByEmail";
        //        cmd.Parameters.AddWithValue("@email", String.IsNullOrEmpty(_email) ? DBNull.Value : (object)_email);

        //        SqlDataReader sqlDataReader = cmd.ExecuteReader();
        //        while (sqlDataReader.Read())
        //        {
        //            userId = sqlDataReader["Id"].ToString();
        //        }
        //        return userId;
        //    }
        //    catch (Exception ex)
        //    {
        //        return ex.Message;
        //    }
        //    finally
        //    {
        //        sqlConnection.Close();
        //    }

        //}
        //public static string GetUserName()
        //{
        //    var identity = (System.Security.Claims.ClaimsPrincipal)System.Threading.Thread.CurrentPrincipal;
        //    var principal = System.Threading.Thread.CurrentPrincipal as System.Security.Claims.ClaimsPrincipal;
        //    var name = identity.Claims.Where(c => c.Type == System.Security.Claims.ClaimTypes.Name).Select(c => c.Value).SingleOrDefault();
        //    return name;
        //}
        //public static string GetUserMail()
        //{
        //    var identity = (System.Security.Claims.ClaimsPrincipal)System.Threading.Thread.CurrentPrincipal;
        //    var principal = System.Threading.Thread.CurrentPrincipal as System.Security.Claims.ClaimsPrincipal;
        //    var mail = identity.Claims.Where(c => c.Type == System.Security.Claims.ClaimTypes.Email).Select(c => c.Value).SingleOrDefault();
        //    return mail;
        //}
        //public static string GetIp(HttpContext context)
        //{
        //    string IpAddress = context.Connection.RemoteIpAddress.ToString();
        //    return IpAddress;
        //}
        public string? UploadFile(HttpRequest request)
        {
            try
            {
                if (request.Form.Files.Count == 0)
                {
                    return "";
                }
                var filePath = Path.Combine(_webHostEnvironment.WebRootPath + SystemParameter.UploadForm, DateTime.Now.ToString("HHmm_yyyyMMdd") + ".");// Path.GetTempFileName();
                foreach (var formFile in request.Form.Files)
                {
                    if (formFile.Length > 0)
                    {
                        var fileExtension = Path.GetExtension(formFile.FileName);
                        using (var inputStream = new FileStream(String.Format("{0}.{1}", filePath, fileExtension), FileMode.Create))
                        {
                            // read file to stream
                            //formFile.CopyToAsync(inputStream);
                            formFile.CopyTo(inputStream);
                            //// stream to byte array
                            //byte[] array = new byte[inputStream.Length];
                            //inputStream.Seek(0, SeekOrigin.Begin);
                            //inputStream.Read(array, 0, array.Length);
                            //// get file name
                            //string fName = formFile.FileName;
                        }
                        return formFile.FileName;
                    }
                }
            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                  MethodBase.GetCurrentMethod()?.Name,
                  ex.Message,
                  ex.StackTrace,
                  ex.InnerException,
                  (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
            }
            return "";
        }
        //public static string GetRoleNameByID(string ID)
        //{
        //    string ConnectionString = DatabaseParameter.ConnectionString;
        //    SqlConnection sqlConnection = new SqlConnection(ConnectionString);
        //    try
        //    {
        //        if (sqlConnection.State == ConnectionState.Closed)
        //        {
        //            sqlConnection.Open();
        //        }

        //        SqlCommand cmd = sqlConnection.CreateCommand();
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
        //        cmd.Parameters.AddWithValue("@ID", ID);

        //        SqlDataReader sqlDataReader = cmd.ExecuteReader();
        //        while (sqlDataReader.Read())
        //        {
        //            return sqlDataReader["Name"].ToString();
        //        }
        //        return "";
        //    }
        //    catch (Exception ex)
        //    {
        //        _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
        //           MethodBase.GetCurrentMethod()?.Name,
        //           ex.Message,
        //           ex.StackTrace,
        //           ex.InnerException,
        //           (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
        //        return "";
        //    }
        //    finally
        //    {
        //        sqlConnection.Close();
        //    }
        //}
        //public static string GetUserNameByID(string ID)
        //{
        //    string ConnectionString = DatabaseParameter.ConnectionString;
        //    SqlConnection sqlConnection = new SqlConnection(ConnectionString);
        //    try
        //    {
        //        if (sqlConnection.State == ConnectionState.Closed)
        //        {
        //            sqlConnection.Open();
        //        }
        //        SqlCommand cmd = sqlConnection.CreateCommand();
        //        cmd.CommandType = CommandType.StoredProcedure;
        //        cmd.CommandText = MethodBase.GetCurrentMethod()?.Name;
        //        cmd.Parameters.AddWithValue("@ID", ID);
        //        SqlDataReader sqlDataReader = cmd.ExecuteReader();
        //        while (sqlDataReader.Read())
        //        {
        //            return sqlDataReader["FullName"].ToString();
        //        }
        //        return "";
        //    }
        //    catch (Exception ex)
        //    {
        //        _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
        //           MethodBase.GetCurrentMethod()?.Name,
        //           ex.Message,
        //           ex.StackTrace,
        //           ex.InnerException,
        //           (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
        //        return "";
        //    }
        //    finally
        //    {
        //        sqlConnection.Close();
        //    }
        //}
        public class PlanPeriodicService
        {
            public static List<PlanPeriodicDetail> GetPlanPeriodicDetailList(Int64 PlanDeviceId, string ConnectionString)
            {
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "GetPlanPeriodicDetail";
                    cmd.Parameters.AddWithValue("@PlanDeviceId", (object)PlanDeviceId != null ? PlanDeviceId : 0);
                    SqlDataReader sqlDataReader = cmd.ExecuteReader();
                    var PlanningList = new List<PlanPeriodicDetail>();
                    while (sqlDataReader.Read())
                    {
                        var _result = new PlanPeriodicDetail();
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        if (!(sqlDataReader["FormId"] is DBNull))
                        {
                            _result.FormId = int.Parse(String.Format("{0}", sqlDataReader["FormId"]));
                        }
                        _result.WorkContent = sqlDataReader["WorkContent"].ToString();
                        _result.DepartmentAct = sqlDataReader["DepartmentAct"].ToString();
                        _result.Note = sqlDataReader["Note"].ToString();
                        _result.FormName = sqlDataReader["FormName"].ToString();
                        _result.FilePath = sqlDataReader["FilePath"].ToString();
                        _result.Month01 = sqlDataReader["Month01"].ToString();
                        _result.Month02 = sqlDataReader["Month02"].ToString();
                        _result.Month03 = sqlDataReader["Month03"].ToString();
                        _result.Month04 = sqlDataReader["Month04"].ToString();
                        _result.Month05 = sqlDataReader["Month05"].ToString();
                        _result.Month06 = sqlDataReader["Month06"].ToString();
                        _result.Month07 = sqlDataReader["Month07"].ToString();
                        _result.Month08 = sqlDataReader["Month08"].ToString();
                        _result.Month09 = sqlDataReader["Month09"].ToString();
                        _result.Month10 = sqlDataReader["Month10"].ToString();
                        _result.Month11 = sqlDataReader["Month11"].ToString();
                        _result.Month12 = sqlDataReader["Month12"].ToString();
                        if (!(sqlDataReader["MonthAct"] is DBNull)) _result.MonthAct = int.Parse(String.Format("{0}", sqlDataReader["MonthAct"]));
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
                    return new List<PlanPeriodicDetail>();
                }
                finally
                {
                    sqlConnection.Close();
                }
            }
        }
        public class DeviceService
        {
            public static List<DeviceHistory> GetDeviceHistory(string ConnectionString, int UserId)
            {
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
                    SqlDataReader sqlDataReader = cmd.ExecuteReader();
                    var _objectInputList = new List<DeviceHistory>();
                    while (sqlDataReader.Read())
                    {
                        var _result = new DeviceHistory();
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        if (!(sqlDataReader["BranchID"] is DBNull)) _result.BranchID = int.Parse(String.Format("{0}", sqlDataReader["BranchID"]));
                        if (!(sqlDataReader["TeamId"] is DBNull)) _result.TeamId = int.Parse(String.Format("{0}", sqlDataReader["TeamId"]));
                        if (!(sqlDataReader["LineId"] is DBNull)) _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
                        if (!(sqlDataReader["DeviceId"] is DBNull)) _result.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                        _result.Desc = sqlDataReader["Desc"].ToString();
                        _result.BranchName = sqlDataReader["BranchName"].ToString();
                        _result.TeamName = sqlDataReader["TeamName"].ToString();
                        _result.LineName = sqlDataReader["LineName"].ToString();
                        _result.DeviceName = sqlDataReader["DeviceName"].ToString();

                        if (!(sqlDataReader["TimeCreated"] is DBNull))
                        {
                            _result.TimeCreated = DateTime.Parse(String.Format("{0}", sqlDataReader["TimeCreated"])).ToString("dd/MM/yyyy HH:mm");
                        }

                        _objectInputList.Add(_result);
                    }
                    return _objectInputList;
                }
                catch (Exception ex)
                {
                    _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                        MethodBase.GetCurrentMethod()?.Name,
                        ex.Message,
                        ex.StackTrace,
                        ex.InnerException,
                        (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                    return new List<DeviceHistory>();
                }
                finally
                {
                    sqlConnection.Close();
                }
            }
        }
        public class PlanOverService
        {
            public static List<PlanOverDevice> GetPlanOverDeviceList(Int64 PlanId, string ConnectionString)
            {
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "GetPlanOverDetail";
                    cmd.Parameters.AddWithValue("@PlanId", (object)PlanId != null ? PlanId : 0);
                    SqlDataReader sqlDataReader = cmd.ExecuteReader();
                    var PlanningList = new List<PlanOverDevice>();
                    while (sqlDataReader.Read())
                    {
                        var _result = new PlanOverDevice();
                        if (!(sqlDataReader["Id"] is DBNull))
                        {
                            _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        }
                        if (!(sqlDataReader["Id"] is DBNull)) _result.Id = int.Parse(String.Format("{0}", sqlDataReader["Id"]));
                        if (!(sqlDataReader["DeviceId"] is DBNull)) _result.DeviceId = int.Parse(String.Format("{0}", sqlDataReader["DeviceId"]));
                        if (!(sqlDataReader["LineId"] is DBNull)) _result.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
                        _result.DeviceName = sqlDataReader["DeviceName"].ToString();
                        _result.LineName = sqlDataReader["LineName"].ToString();
                        _result.CurrentStatus = sqlDataReader["CurrentStatus"].ToString();
                        _result.RepairContent = sqlDataReader["RepairContent"].ToString();
                        _result.Targets = sqlDataReader["Targets"].ToString();
                        _result.Progress = sqlDataReader["Progress"].ToString();
                        _result.UserChair = sqlDataReader["UserChair"].ToString();
                        _result.UserAct = sqlDataReader["UserAct"].ToString();
                        _result.Note = sqlDataReader["Note"].ToString();
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
                    return new List<PlanOverDevice>();
                }
                finally
                {
                    sqlConnection.Close();
                }
            }
        }
        public class PlanSupplieService
        {

        }
        public class DefaultSetting
        {
            public static CurentSetting GetSettingValueByLineID(Int64 PlanDeviceId, string ConnectionString)
            {
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }

                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "GetSettingValueByLineID";
                    SqlDataReader sqlDataReader = cmd.ExecuteReader();
                    var _CurentSetting = new CurentSetting();
                    while (sqlDataReader.Read())
                    {
                        if (!(sqlDataReader["FactoryId"] is DBNull))
                            _CurentSetting.FactoryId = int.Parse(String.Format("{0}", sqlDataReader["FactoryId"]));
                        if (!(sqlDataReader["BranchId"] is DBNull))
                            _CurentSetting.BranchId = int.Parse(String.Format("{0}", sqlDataReader["BranchId"]));
                        if (!(sqlDataReader["TeamId"] is DBNull))
                            _CurentSetting.TeamId = int.Parse(String.Format("{0}", sqlDataReader["TeamId"]));
                        if (!(sqlDataReader["LineId"] is DBNull))
                            _CurentSetting.LineId = int.Parse(String.Format("{0}", sqlDataReader["LineId"]));
                        _CurentSetting.FactoryName = sqlDataReader["FactoryName"].ToString();
                        _CurentSetting.BranchName = sqlDataReader["BranchName"].ToString();
                        _CurentSetting.TeamName = sqlDataReader["TeamName"].ToString();
                        _CurentSetting.LineName = sqlDataReader["LineName"].ToString();
                    }
                    return _CurentSetting;
                }
                catch (Exception ex)
                {
                    _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                    return new CurentSetting();
                }
                finally
                {
                    sqlConnection.Close();
                }
            }
        }
        public async Task<bool> IsSupperAdmin(ClaimsPrincipal cl_user)
        {
            try
            {
                var currentUserID = cl_user.FindFirst(String.Format("{0}", ClaimTypes.NameIdentifier)).Value;
                var user = await _userManager.FindByIdAsync(currentUserID);
                var roles = await _userManager.GetRolesAsync(user);
                foreach (var role in roles)
                {
                    if (role == "SuperAdmin") return true;
                    else if (role == "SystemAdmin") return true;
                }
                return false;
            }
            catch (Exception ex)
            {

                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return false;
            }
        }

        public class ImportService
        {
            public static string GetListName(string ListType)
            {
                switch (ListType)
                {
                    case "":
                        break;
                    case "Department": return "Danh mục phòng ban/đơn vị";

                    case "Factory": return "Danh mục xưởng";

                    case "Branch": return "Danh mục ban ngành";

                    case "Team": return "Danh mục tổ đội sản xuất";

                    case "Line": return "Danh mục dây chuyền sản xuất";

                    case "DeviceGroup": return "Danh mục nhóm thiết bị";

                    case "Device": return "Danh mục thiết bị";

                    case "SupplieGroup": return "Danh mục nhóm vật tư, phụ tùng";

                    case "Supplie": return "Danh mục vật tư, phụ tùng";

                    case "Role": return "Danh mục nhóm người dùng";

                    case "User": return "Danh mục người dùng";

                    case "Shift": return "Danh mục ca sản xuất";

                    case "Position": return "Danh mục chức vụ";

                    case "Threshold": return "Danh mục giá trị ngưỡng cảnh báo";

                    default: return ""; 
                }
                return "";
            }
            public static ImportResult ActImportDataFromRow(string ListType, IRow rowSed, string ConnectionString)
            {
                switch (ListType)
                {
                    case "":
                        break;
                    case "Department":
                        {
                            Department objectInput = new Department();
                            for (int j = rowSed.FirstCellNum + 1; j < rowSed.LastCellNum; j++)
                            {
                                if (j == 1 && rowSed.GetCell(j) != null) objectInput.Name = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 2 && rowSed.GetCell(j) != null) objectInput.Code = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 3 && rowSed.GetCell(j) != null)
                                {
                                    objectInput.Description = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                    break;
                                }
                            }
                            return ImportService.ImportIntoDepartment(objectInput, ConnectionString);
                        }

                    case "Factory":
                        {
                            Factory objectInput = new Factory();
                            for (int j = rowSed.FirstCellNum + 1; j < rowSed.LastCellNum; j++)
                            {
                                if (j == 1 && rowSed.GetCell(j) != null) objectInput.Code = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 2 && rowSed.GetCell(j) != null) objectInput.Name = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 3 && rowSed.GetCell(j) != null)
                                {
                                    objectInput.Description = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                    break;
                                }
                            }
                            return ImportService.ImportIntoFactory(objectInput, ConnectionString);
                        }

                    case "Branch":
                        {
                            Branch objectInput = new Branch();
                            for (int j = rowSed.FirstCellNum + 1; j < rowSed.LastCellNum; j++)
                            {
                                if (j == 1 && rowSed.GetCell(j) != null) objectInput.FactoryCodeName = String.Format("{0}", rowSed.GetCell(j)).Trim(); ///Tên xưởng: LED, Điện tử & TB
                                if (j == 2 && rowSed.GetCell(j) != null) objectInput.Code = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 3 && rowSed.GetCell(j) != null) objectInput.Name = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 4 && rowSed.GetCell(j) != null)
                                {
                                    objectInput.Description = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                    break;
                                }
                            }
                            return ImportService.ImportIntoBranch(objectInput, ConnectionString);
                        }

                    case "Team":
                        {
                            Team objectInput = new Team();
                            for (int j = rowSed.FirstCellNum + 1; j < rowSed.LastCellNum; j++)
                            {
                                if (j == 1 && rowSed.GetCell(j) != null) objectInput.BranchCodeName = String.Format("{0}", rowSed.GetCell(j)).Trim(); ///Tên ngành ban: CNPT, Ngành Công nghệ phụ trợ
                                if (j == 2 && rowSed.GetCell(j) != null) objectInput.Code = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 3 && rowSed.GetCell(j) != null) objectInput.Name = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 4 && rowSed.GetCell(j) != null)
                                {
                                    objectInput.Description = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                    break;
                                }
                            }
                            return ImportService.ImportIntoTeam(objectInput, ConnectionString);
                        }

                    case "Line":
                        {
                            Line objectInput = new Line();
                            for (int j = rowSed.FirstCellNum + 1; j < rowSed.LastCellNum; j++)
                            {
                                if (j == 1 && rowSed.GetCell(j) != null) objectInput.BranchCodeName = String.Format("{0}", rowSed.GetCell(j)).Trim(); ///Tên ngành ban: CNPT, Ngành Công nghệ phụ trợ
                                if (j == 2 && rowSed.GetCell(j) != null) objectInput.TeamCodeName = String.Format("{0}", rowSed.GetCell(j)).Trim(); ///Tên tổ, dội sx: BTP1.CNPT, Tổ bán thành phẩm 1
                                if (j == 3 && rowSed.GetCell(j) != null) objectInput.Code = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 4 && rowSed.GetCell(j) != null) objectInput.Name = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 5 && rowSed.GetCell(j) != null)
                                {
                                    objectInput.Description = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                    break;
                                }
                            }
                            return ImportService.ImportIntoLine(objectInput, ConnectionString);
                        }

                    case "DeviceGroup":
                        {
                            DeviceGroup objectInput = new DeviceGroup();
                            for (int j = rowSed.FirstCellNum + 1; j < rowSed.LastCellNum; j++)
                            {
                                if (j == 1 && rowSed.GetCell(j) != null) objectInput.Code = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 2 && rowSed.GetCell(j) != null) objectInput.Name = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 3 && rowSed.GetCell(j) != null)
                                {
                                    objectInput.Description = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                    break;
                                }
                            }
                            return ImportService.ImportIntoDeviceGroup(objectInput, ConnectionString);
                        }

                    case "Device":
                        {
                            Device objectInput = new Device();
                            for (int j = rowSed.FirstCellNum + 1; j < rowSed.LastCellNum; j++)
                            {
                                try
                                {
                                    if (j == 1 && rowSed.GetCell(j) != null) objectInput.GroupCodeName = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                    if (j == 2 && rowSed.GetCell(j) != null) objectInput.Name = String.Format("{0}", rowSed.GetCell(j)).Trim();//Tên thiết bị
                                    if (j == 3 && rowSed.GetCell(j) != null) objectInput.Code = String.Format("{0}", rowSed.GetCell(j)).Trim();//Mã số/Tên viết tắt
                                    if (j == 4 && rowSed.GetCell(j) != null) objectInput.Origin = String.Format("{0}", rowSed.GetCell(j)).Trim();//Xuất xứ
                                    if (j == 5 && rowSed.GetCell(j) != null) objectInput.TimeUse = String.Format("{0}", rowSed.GetCell(j)).Trim();//Năm sử dụng
                                    if (j == 6 && rowSed.GetCell(j) != null) objectInput.LineCode = String.Format("{0}", rowSed.GetCell(j)).Trim();//Dây chuyền Nơi/Vị trí lắp đặt
                                    if (j == 7 && rowSed.GetCell(j) != null) objectInput.LineName = String.Format("{0}", rowSed.GetCell(j)).Trim();//Tên Dây chuyền
                                    if (j == 8 && rowSed.GetCell(j) != null)
                                        objectInput.StringMaintenanceCycle = String.Format("{0}", rowSed.GetCell(j)).Trim();//Chu kỳ bảo dưỡng

                                    //string _strMaintenanceCycle = objectInput.StringMaintenanceCycle.ToLower();
                                    //if (_strMaintenanceCycle.IndexOf("ngày") > 0) objectInput.MaintenanceCycle = 1;
                                    //else if (_strMaintenanceCycle.IndexOf("tuần") > 0) objectInput.MaintenanceCycle = 2;
                                    //else if(_strMaintenanceCycle.IndexOf("tháng") > 0) objectInput.MaintenanceCycle = 3;
                                    //else if (_strMaintenanceCycle.IndexOf("quý") > 0) objectInput.MaintenanceCycle = 4;
                                    //else if (_strMaintenanceCycle.IndexOf("năm") > 0) objectInput.MaintenanceCycle = 5;
                                    if (j == 9 && rowSed.GetCell(j) != null) objectInput.TimeReceived = String.Format("{0}", rowSed.GetCell(j)).Trim();//Thời gian tiếp nhận
                                    if (j == 10 && rowSed.GetCell(j) != null) //Ghi chú
                                    {
                                        objectInput.Description = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                        if (objectInput.Description.IndexOf("*") > 0) objectInput.IsImportant = 1; else objectInput.IsImportant = 0; //Thiết bị trọng yếu
                                        break;
                                    }
                                }
                                catch (Exception ex)
                                {
                                    _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                                        MethodBase.GetCurrentMethod()?.Name,
                                        ex.Message, j.ToString(),
                                        String.Format("{0}", rowSed.GetCell(j)).Trim(),
                                        (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                                }
                            }
                            return ImportService.ImportIntoDevice(objectInput, ConnectionString);
                        }

                    case "SupplieGroup":
                        {
                            SupplieGroup objectInput = new SupplieGroup(); objectInput.Name = ""; objectInput.Description = "";
                            for (int j = rowSed.FirstCellNum + 1; j < rowSed.LastCellNum; j++)
                            {
                                if (j == 1 && rowSed.GetCell(j) != null) objectInput.Name = String.Format("{0}", rowSed.GetCell(j)).Trim();//TênobjectInput
                                if (j == 2 && rowSed.GetCell(j) != null)
                                {
                                    objectInput.Description = String.Format("{0}", rowSed.GetCell(j)).Trim();//TênobjectInput
                                    break;
                                }
                            }
                            return ImportService.ImportIntoSupplieGroup(objectInput, ConnectionString);
                        }
                    case "Supplie":
                        {
                            Supplie objectInput = new Supplie();
                            for (int j = rowSed.FirstCellNum + 1; j < rowSed.LastCellNum; j++)
                            {
                                if (j == 1 && rowSed.GetCell(j) != null) objectInput.GroupName = (String.Format("{0}", rowSed.GetCell(j)).Trim()).Split(',')[0];
                                if (j == 2 && rowSed.GetCell(j) != null) objectInput.Name = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 3 && rowSed.GetCell(j) != null) objectInput.Code = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 4 && rowSed.GetCell(j) != null) objectInput.Origin = String.Format("{0}", rowSed.GetCell(j)).Trim();//Xuất xứ
                                if (j == 5 && rowSed.GetCell(j) != null) objectInput.Unit = String.Format("{0}", rowSed.GetCell(j)).Trim(); //Đơn vị
                                if (j == 6 && rowSed.GetCell(j) != null)//Ghi chú
                                {
                                    objectInput.Description = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                    break;
                                }
                            }
                            return ImportService.ImportIntoSupplie(objectInput, ConnectionString);
                        }

                    case "Role":
                        {
                            AspNetRole objectInput = new AspNetRole();
                            return ImportService.ImportIntoRole(objectInput, ConnectionString);
                        }

                    case "User":
                        {
                            AspNetUsers objectInput = new AspNetUsers();
                            return ImportService.ImportIntoUser(objectInput, ConnectionString);
                        }
                    case "Shift":
                        {
                            Shift objectInput = new Shift();
                            for (int j = rowSed.FirstCellNum + 1; j < rowSed.LastCellNum; j++)
                            {
                                if (j == 1 && rowSed.GetCell(j) != null) objectInput.Name = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 2 && rowSed.GetCell(j) != null)
                                {
                                    objectInput.Description = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                    break;
                                }
                            }
                            return ImportService.ImportIntoShift(objectInput, ConnectionString);
                        }

                    case "Position":
                        {
                            Position objectInput = new Position();
                            for (int j = rowSed.FirstCellNum + 1; j < rowSed.LastCellNum; j++)
                            {
                                if (j == 1 && rowSed.GetCell(j) != null) objectInput.Name = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 2 && rowSed.GetCell(j) != null)
                                {
                                    objectInput.Description = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                    break;
                                }
                            }
                            return ImportService.ImportIntoPosition(objectInput, ConnectionString);
                        }

                    case "Threshold":
                        {
                            Threshold objectInput = new Threshold();
                            for (int j = rowSed.FirstCellNum + 1; j < rowSed.LastCellNum; j++)
                            {
                                if (j == 1 && rowSed.GetCell(j) != null) objectInput.Name = (String.Format("{0}", rowSed.GetCell(j)).Trim()).Split(',')[0]; ///Tên xưởng: LED, Điện tử & TB
                                if (j == 2 && rowSed.GetCell(j) != null) objectInput.Code = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 3 && rowSed.GetCell(j) != null) objectInput.GreenRange = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 4 && rowSed.GetCell(j) != null) objectInput.OrangeRange = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 5 && rowSed.GetCell(j) != null) objectInput.RedRange = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                if (j == 6 && rowSed.GetCell(j) != null)
                                {
                                    objectInput.Description = String.Format("{0}", rowSed.GetCell(j)).Trim();
                                    break;
                                }
                            }
                            return ImportService.ImportIntoThreshold(objectInput, ConnectionString);
                        }
                    default: return new ImportResult(); 
                }
                return new ImportResult();
            }
            ///"Department": return "Danh mục phòng ban/đơn vị"; break;
            public static ImportResult ImportIntoDepartment(Department _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportDepartment";

                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Code", (_objectInput.Code == null ? DBNull.Value : (object)_objectInput.Code));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id;
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertDepartmentToImportResult(_objectInput);
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            ///"Factory": return "Danh mục xưởng"; break;
            public static ImportResult ImportIntoFactory(Factory _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportFactory";

                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Code", (_objectInput.Code == null ? DBNull.Value : (object)_objectInput.Code));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id;
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertFactoryToImportResult(_objectInput); ;
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            ///"Branch": return "Danh mục ban ngành"; break;
            public static ImportResult ImportIntoBranch(Branch _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportBranch";

                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Code", (_objectInput.Code == null ? DBNull.Value : (object)_objectInput.Code));
                    cmd.Parameters.AddWithValue("@FactoryCodeName", (_objectInput.FactoryCodeName == null ? DBNull.Value : (object)_objectInput.FactoryCodeName));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);

                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id;
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertBranchToImportResult(_objectInput); ;
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            ///"Team": return "Quản lý tổ đội sản xuất "; break;
            public static ImportResult ImportIntoTeam(Team _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportTeam";

                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Code", (_objectInput.Code == null ? DBNull.Value : (object)_objectInput.Code));
                    cmd.Parameters.AddWithValue("@BranchCodeName", (_objectInput.BranchCodeName == null ? DBNull.Value : (object)_objectInput.BranchCodeName));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);


                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id;
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertTeamToImportResult(_objectInput); ;
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            ///"Line": return "Quản lý dây chuyền sản xuất "; break;
            public static ImportResult ImportIntoLine(Line _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportLine";

                    cmd.Parameters.AddWithValue("@BranchCodeName", (_objectInput.BranchCodeName == null ? DBNull.Value : (object)_objectInput.BranchCodeName));
                    cmd.Parameters.AddWithValue("@TeamCodeName", (_objectInput.TeamCodeName == null ? DBNull.Value : (object)_objectInput.TeamCodeName));
                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Code", (_objectInput.Code == null ? DBNull.Value : (object)_objectInput.Code));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id;
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertLineToImportResult(_objectInput); ;
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            ///"DeviceGroup": return "Danh mục nhóm thiết bị"; break;
            public static ImportResult ImportIntoDeviceGroup(DeviceGroup _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportDeviceGroup";

                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Code", (_objectInput.Code == null ? DBNull.Value : (object)_objectInput.Code));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);


                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id;
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertDeviceGroupToImportResult(_objectInput); ;
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            ///"Device": return "Danh mục thiết bị"; break;
            public static ImportResult ImportIntoDevice(Device _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportDevice";
                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);
                    cmd.Parameters.AddWithValue("@GroupCodeName", _objectInput.GroupCodeName == null ? DBNull.Value : (object)_objectInput.GroupCodeName);
                    cmd.Parameters.AddWithValue("@BranchName", _objectInput.BranchName == null ? DBNull.Value : (object)_objectInput.BranchName);
                    cmd.Parameters.AddWithValue("@TeamName", _objectInput.TeamName == null ? DBNull.Value : (object)_objectInput.TeamName);
                    cmd.Parameters.AddWithValue("@LineCode", _objectInput.LineCode == null ? DBNull.Value : (object)_objectInput.LineCode);
                    cmd.Parameters.AddWithValue("@Status", (object)_objectInput.Status == null ? DBNull.Value : (object)_objectInput.Status);
                    cmd.Parameters.AddWithValue("@Code", (_objectInput.Code == null ? DBNull.Value : (object)_objectInput.Code));
                    cmd.Parameters.AddWithValue("@Origin", _objectInput.Origin == null ? DBNull.Value : (object)_objectInput.Origin);
                    cmd.Parameters.AddWithValue("@YearOfUse", (object)_objectInput.YearOfUse == null ? DBNull.Value : (object)_objectInput.YearOfUse);
                    cmd.Parameters.AddWithValue("@InstallationPlace", _objectInput.InstallationPlace == null ? DBNull.Value : (object)_objectInput.InstallationPlace);
                    cmd.Parameters.AddWithValue("@MaintenanceCycle", (object)_objectInput.MaintenanceCycle == null ? DBNull.Value : (object)_objectInput.MaintenanceCycle);
                    cmd.Parameters.AddWithValue("@StringMaintenanceCycle", _objectInput.StringMaintenanceCycle == null ? DBNull.Value : (object)_objectInput.StringMaintenanceCycle);
                    cmd.Parameters.AddWithValue("@YearOfManufacture", (object)_objectInput.YearOfManufacture == null ? DBNull.Value : (object)_objectInput.YearOfManufacture);
                    cmd.Parameters.AddWithValue("@Description2", _objectInput.Description2 == null ? DBNull.Value : (object)_objectInput.Description2);
                    cmd.Parameters.AddWithValue("@Properties", (object)_objectInput.Properties == null ? DBNull.Value : (object)_objectInput.Properties);
                    cmd.Parameters.AddWithValue("@GetRangDong", (object)_objectInput.GetRangDong == null ? DBNull.Value : (object)_objectInput.GetRangDong);
                    cmd.Parameters.AddWithValue("@MonthofUse", (object)_objectInput.MonthofUse == null ? DBNull.Value : (object)_objectInput.MonthofUse);
                    cmd.Parameters.AddWithValue("@TimeReceived", _objectInput.TimeReceived == null ? DBNull.Value : (object)_objectInput.TimeReceived);
                    cmd.Parameters.AddWithValue("@TimeUse", _objectInput.TimeUse == null ? DBNull.Value : (object)_objectInput.TimeUse);
                    cmd.Parameters.AddWithValue("@IsImportant", (object)_objectInput.IsImportant == null ? DBNull.Value : (object)_objectInput.IsImportant);
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id;
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertDeviceToImportResult(_objectInput); ;
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            ///"SupplieGroup": return "Danh mục nhóm vật tư, phụ tùng"; break;
            public static ImportResult ImportIntoSupplieGroup(SupplieGroup _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportSupplieGroup";

                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);

                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id;
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertSupplieGroupToImportResult(_objectInput);
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            ///"Shift": return "Danh mục nhóm vật tư, phụ tùng"; break;
            public static ImportResult ImportIntoShift(Shift _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportShift";

                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);

                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id;
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertShiftToImportResult(_objectInput);
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            ///"Position": return "Danh mục nhóm vật tư, phụ tùng"; break;
            public static ImportResult ImportIntoPosition(Position _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportPosition";

                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);

                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id;
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertPositionToImportResult(_objectInput);
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            ///"Threshold": return "Danh mục nhóm vật tư, phụ tùng"; break;
            public static ImportResult ImportIntoThreshold(Threshold _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportThreshold";

                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Code", (_objectInput.Code == null ? DBNull.Value : (object)_objectInput.Code));
                    cmd.Parameters.AddWithValue("@GreenRange", (_objectInput.UpperValue == null ? DBNull.Value : (object)_objectInput.UpperValue));
                    cmd.Parameters.AddWithValue("@OrangeRange", (_objectInput.LowerValue == null ? DBNull.Value : (object)_objectInput.LowerValue));
                    cmd.Parameters.AddWithValue("@RedRange", (_objectInput.OrangeLowerValue == null ? DBNull.Value : (object)_objectInput.OrangeLowerValue));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);

                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id;
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertThresholdToImportResult(_objectInput);
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            ///"Supplie": return "Danh mục vật tư, phụ tùng"; break;
            public static ImportResult ImportIntoSupplie(Supplie _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportSupplie";

                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);
                    cmd.Parameters.AddWithValue("@GroupName", (String.IsNullOrEmpty(String.Format("{0}", _objectInput.GroupName)) ? DBNull.Value : _objectInput.GroupName));
                    cmd.Parameters.AddWithValue("@LineId", (String.IsNullOrEmpty(_objectInput.LineId.ToString()) ? DBNull.Value : (object)_objectInput.LineId));
                    cmd.Parameters.AddWithValue("@Status", (String.IsNullOrEmpty(_objectInput.Status.ToString()) ? DBNull.Value : (object)_objectInput.Status));
                    cmd.Parameters.AddWithValue("@Code", (_objectInput.Code == null ? DBNull.Value : (object)_objectInput.Code));
                    cmd.Parameters.AddWithValue("@Unit", (_objectInput.Unit == null ? DBNull.Value : (object)_objectInput.Unit));
                    cmd.Parameters.AddWithValue("@Origin", _objectInput.Origin == null ? DBNull.Value : (object)_objectInput.Origin);
                    cmd.Parameters.AddWithValue("@YearOfUse", (String.IsNullOrEmpty(_objectInput.YearOfUse.ToString()) ? DBNull.Value : (object)_objectInput.YearOfUse));
                    cmd.Parameters.AddWithValue("@InstallationPlace", _objectInput.InstallationPlace == null ? DBNull.Value : (object)_objectInput.InstallationPlace);
                    cmd.Parameters.AddWithValue("@MaintenanceCycle", (String.IsNullOrEmpty(_objectInput.MaintenanceCycle.ToString()) ? DBNull.Value : (object)_objectInput.MaintenanceCycle));
                    cmd.Parameters.AddWithValue("@YearOfManufacture", (String.IsNullOrEmpty(_objectInput.YearOfManufacture.ToString()) ? DBNull.Value : (object)_objectInput.YearOfManufacture));
                    cmd.Parameters.AddWithValue("@NumberTotal", (String.IsNullOrEmpty(_objectInput.NumberTotal.ToString()) ? DBNull.Value : (object)_objectInput.NumberTotal));
                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id;
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertSupplieToImportResult(_objectInput); ;
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            ///"Role": return "Quản lý nhóm người dùng"; break;
            public static ImportResult ImportIntoRole(AspNetRole _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportAspNetRole";

                    cmd.Parameters.AddWithValue("@Name", (_objectInput.Name == null ? DBNull.Value : (object)_objectInput.Name));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);

                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id.ToString();
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertAspNetRoleToImportResult(_objectInput); ;
                }
                catch (Exception ex)
                {
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
                return  new ImportResult();
            }
            ///"User": return "Quản lý người dùng"; break;  
            public static ImportResult ImportIntoUser(AspNetUsers _objectInput, string ConnectionString)
            {
                MessageResults _result = new MessageResults();
                SqlConnection sqlConnection = new SqlConnection(ConnectionString);
                try
                {
                    SqlCommand cmd = sqlConnection.CreateCommand();
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.CommandText = "ImportAspNetUsers";

                    cmd.Parameters.AddWithValue("@Name", (_objectInput.FullName == null ? DBNull.Value : (object)_objectInput.FullName));
                    cmd.Parameters.AddWithValue("@Description", _objectInput.Description == null ? DBNull.Value : (object)_objectInput.Description);

                    if (sqlConnection.State == ConnectionState.Closed)
                    {
                        sqlConnection.Open();
                    }
                    _result = BaseService.GetMessageResults(cmd.ExecuteReader());
                    _objectInput.Id = _result.Id.ToString();
                    if (_result.Id == 0)
                    {
                        _objectInput.TimeCreated = _result.message;
                        _objectInput.TimeCreated = _result.message;
                    }
                    else
                    {
                        _objectInput.TimeCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                        _objectInput.TimeModified = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    }
                    return ConvertAspNetUsersToImportResult(_objectInput); ;
                }
                catch (Exception ex)
                {
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
                return new ImportResult();
            }
            /// <summary>
            /// Convert về ImportResult đồng nhất để hiển thị kết quả
            /// </summary>
            /// <param name="ival"></param>
            /// <returns></returns>
            public static ImportResult ConvertDepartmentToImportResult(Department ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id.ToString();
                item.ColResult1 = ival.Name;
                item.ColResult2 = ival.Code;
                item.ColResult3 = ival.Description;
                item.ColResult4 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertFactoryToImportResult(Factory ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id.ToString();
                item.ColResult1 = ival.Code;
                item.ColResult2 = ival.Name;
                item.ColResult3 = ival.Description;
                item.ColResult4 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertBranchToImportResult(Branch ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id.ToString();
                item.ColResult1 = ival.FactoryCodeName;
                item.ColResult2 = ival.Code;
                item.ColResult3 = ival.Name;
                item.ColResult4 = ival.Description;
                item.ColResult5 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertTeamToImportResult(Team ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id.ToString();
                item.ColResult1 = ival.BranchCodeName;
                item.ColResult2 = ival.Code;
                item.ColResult3 = ival.Name;
                item.ColResult4 = ival.Description;
                item.ColResult5 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertLineToImportResult(Line ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult1 = ival.BranchCodeName;
                item.ColResult2 = ival.TeamCodeName;
                item.ColResult3 = ival.Code;
                item.ColResult4 = ival.Name;
                item.ColResult5 = ival.Description;
                item.ColResult6 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertDeviceGroupToImportResult(DeviceGroup ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id.ToString();
                item.ColResult1 = ival.Code;
                item.ColResult2 = ival.Name;
                item.ColResult3 = ival.Description;
                item.ColResult4 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertDeviceToImportResult(Device ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id.ToString();
                item.ColResult1 = ival.GroupName;
                item.ColResult2 = ival.Name;
                item.ColResult3 = ival.Code;
                item.ColResult4 = ival.Origin;
                item.ColResult5 = ival.TimeUse;
                item.ColResult6 = ival.TeamName;
                item.ColResult7 = ival.LineName;
                item.ColResult8 = ival.MaintenanceCycle.ToString();
                item.ColResult9 = ival.TimeReceived;
                item.ColResult10 = ival.Description;
                item.ColResult11 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertSupplieGroupToImportResult(SupplieGroup ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id.ToString();
                item.ColResult1 = ival.Name;
                item.ColResult2 = ival.Description;
                item.ColResult3 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertSupplieToImportResult(Supplie ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id.ToString();
                item.ColResult1 = ival.GroupName;
                item.ColResult2 = ival.Name;
                item.ColResult3 = ival.Code;
                item.ColResult4 = ival.Origin;
                item.ColResult5 = ival.Unit;
                item.ColResult6 = ival.Description;
                item.ColResult7 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertAspNetRoleToImportResult(AspNetRole ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id;
                item.ColResult1 = ival.Name;
                item.ColResult2 = ival.Description;
                item.ColResult3 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertAspNetUsersToImportResult(AspNetUsers ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id;
                item.ColResult1 = ival.FullName;
                item.ColResult2 = ival.Description;
                item.ColResult3 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertShiftToImportResult(Shift ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id.ToString();
                item.ColResult1 = ival.Name;
                item.ColResult2 = ival.Description;
                item.ColResult3 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertPositionToImportResult(Position ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id.ToString();
                item.ColResult1 = ival.Name;
                item.ColResult2 = ival.Description;
                item.ColResult3 = ival.TimeCreated;
                return item;
            }
            public static ImportResult ConvertThresholdToImportResult(Threshold ival)
            {
                if (ival is null) return new ImportResult();
                ImportResult item = new ImportResult();
                item.ColResult0 = ival.Id.ToString();
                item.ColResult1 = ival.Name;
                item.ColResult2 = ival.Code;
                item.ColResult3 = ival.GreenRange;
                item.ColResult4 = ival.OrangeRange;
                item.ColResult5 = ival.RedRange;
                item.ColResult9 = ival.Description;
                item.ColResult10 = ival.TimeCreated;
                return item;
            }
            public static int convertMaintenanceCycleToInt(string sVal)
            {
                int res = 0;
                if (sVal.LastIndexOf("Ngày") > 0) return 1;
                if (sVal.LastIndexOf("Tuần") > 0) return 2;
                if (sVal.LastIndexOf("Tháng") > 0) return 3;
                if (sVal.LastIndexOf("Quý") > 0) return 4;
                if (sVal.LastIndexOf("Năm") > 0) return 5;
                if (sVal.LastIndexOf("Khác") > 0) return 6;
                return res;
            }
        }
    }
    [AllowAnonymous]
    public static class SessionHelper
    {
        public static void SetObjectAsJson(this ISession session, string key, object value)
        {
            session.SetString(key, JsonConvert.SerializeObject(value));
        }

        public static T GetObjectFromJson<T>(this ISession session, string key)
        {
            var value = session.GetString(key);
            if (value is null)
                return default(T);
            return JsonConvert.DeserializeObject<T>(value);
        }
    }
}
