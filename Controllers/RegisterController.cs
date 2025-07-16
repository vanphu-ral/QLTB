using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Http;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.AspNetCore.Cors;
using Microsoft.Data.SqlClient;
using Microsoft.EntityFrameworkCore;
using Microsoft.Extensions.Configuration;
using System;
using System.Collections.Generic;
using System.Data;
using System.Diagnostics;
using System.Globalization;
using System.Reflection;
using System.Threading.Tasks;
using System.Linq;
using System.IO;
using MledNew2023.MVC.Helpers;
using MledNew2023.MVC.Models;

namespace MledNew2023.MVC.Controllers
{
    [AllowAnonymous]
    public class RegisterController : Controller
    {
        private readonly UserManager<IdentityUser> _userManager;
        public IConfiguration Configuration { get; }
        public RegisterController(UserManager<IdentityUser> userManager, IConfiguration configuration)
        {
            _userManager = userManager;
            Configuration = configuration;
        }
        [AllowAnonymous]
        public IActionResult Index()
        {
            return View();
        }

        [ResponseCache(Duration = 0, Location = ResponseCacheLocation.None, NoStore = true)]
        public IActionResult Error()
        {
            return View(new ErrorViewModel { RequestId = Activity.Current?.Id ?? HttpContext.TraceIdentifier });
        }

        public async Task<MessageResults> Register(RegisterDTO dto)
        {
            MessageResults _result = new();
            try
            {

                if (dto != null)
                {
                    var existed = await checkReisterExisted(dto.Email, dto.UserName);
                    if (existed.error)
                    {
                        return new MessageResults
                        {
                            success = false,
                            message = existed.message
                        };
                    }
                    else
                    {

                        var user = new IdentityUser();
                        user.UserName = dto.Email; 
                        user.Email = dto.Email;
                        user.PhoneNumber = dto.PhoneNumber;
                        //user.TimeCreated = DateTime.Now.ToString();
                        //user.TimeModified = DateTime.Now.ToString();
                        //user.FullName = dto.FullName;
                        //user.Address = dto.Address;
                        var createUserResult = await _userManager.CreateAsync(user, dto.Password);
                        if (!createUserResult.Succeeded)
                        {
                            _result.success = false; _result.Id = 0;
                            _result.message = "Lỗi: " + getErrorMessage(createUserResult.Errors);
                        }
                        else
                        {
                            _result.success = true;
                            _result.message = String.Format("Tạo tài khoản {0} thành công", dto.UserName);
                        }
                  //      if (_result.success)
                  //      {
                  //          var emailInfor = BaseService.ConfigSystemService.GetConfigSystemByKey("email", Configuration.GetConnectionString("DefaultConnection"));
                  //          string body = $"<h1>Bạn vừa  thành công tài khoản <a href='localhost:7000'>{dto.UserName}</a> tại trang web </h1>";


                  //          BaseService.SendEmailService.sSendEmail(new Constants.EmailSetting
                  //          {
                  //              EmailAddress = emailInfor.Find(ei => ei.ConfigCode == "EmailAddress").ConfigValue,
                  //              //  "quy.doanduy@gmail.com",
                  //              EmailPassword = emailInfor.Find(ei => ei.ConfigCode == "EmailPassword").ConfigValue,
                  //              //  "miqgxhvkoiblfalf",
                  //              EmailPort = int.Parse(emailInfor.Find(ei => ei.ConfigCode == "EmailPort").ConfigValue),
                  //              EmailSmtp = emailInfor.Find(ei => ei.ConfigCode == "EmailSmtp").ConfigValue,
                  //              EmailUser = emailInfor.Find(ei => ei.ConfigCode == "EmailUser").ConfigValue,
                  //              // "quy.doanduy@gmail.com",
                  //          }
                  //, dto.Email, "Tạo Tài khoản thành công", body, true);
                  //      }
                    }
                }

                return _result;

            }
            catch (Exception ex)
            {
                _result.success = false; _result.Id = 0;
                _result.message = "Lỗi: " + ex.Message;
                return _result;
            }

        }

        public void sendTestEmail(string email)
        {
            var emailInfor = BaseService.ConfigSystemService.GetConfigSystemByKey("email", Configuration.GetConnectionString("DefaultConnection"));
            string body = string.Empty;
            //using streamreader for reading my htmltemplate   
            var rootFolder = Directory.GetCurrentDirectory();
            var templateFilePath = Path.Combine(rootFolder + "/wwwroot/emailTemplate/registered.html");

            using (StreamReader reader = new StreamReader(templateFilePath))

            {

                body = reader.ReadToEnd();

            }

            body = body.Replace("{Ten_Tai_Khoan}", email);
            BaseService.SendEmailService.sSendEmail(new Constants.EmailSetting
            {
                EmailAddress = emailInfor.Find(ei => ei.ConfigCode == "EmailAddress").ConfigValue,
                EmailPassword = emailInfor.Find(ei => ei.ConfigCode == "EmailPassword").ConfigValue,
                EmailPort = int.Parse(emailInfor.Find(ei => ei.ConfigCode == "EmailPort").ConfigValue),
                EmailSmtp = emailInfor.Find(ei => ei.ConfigCode == "EmailSmtp").ConfigValue,
                EmailUser = emailInfor.Find(ei => ei.ConfigCode == "EmailUser").ConfigValue,
            }
  , email, "Tạo Tài khoản thành công", body, true);
        }
        private string getErrorMessage(IEnumerable<IdentityError> errors)
        {

            string _result = "";
            foreach (var item in errors)
            {
                _result += item.Code switch
                {
                    "DuplicateUserName" => " Tài khoản đã tồn tại,",
                    "PasswordRequiresNonAlphanumeric" => " Mật khẩu phải có ít nhất 1 ký tự đặc biệt,",
                    "PasswordRequiresUpper" => " Mật khẩu phải có ít nhất 1 chữ viết hoa,",
                    _ => " Lỗi hệ thống,",
                };
            }
            return _result.Substring(0, _result.Length - 1);

        }
        private class ExistedModel
        {
            public bool error { get; set; }
            public string message { get; set; }
        }
        private async Task<ExistedModel> checkReisterExisted(string email, string userName)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            try
            {
                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "CheckRegisterExisted"; // String.Format("{0}", MethodBase.GetCurrentMethod()?.Name);
                cmd.Parameters.AddWithValue("@Email", String.IsNullOrEmpty(email) ? DBNull.Value : (object)email);
                cmd.Parameters.AddWithValue("@UserName", String.IsNullOrEmpty(userName) ? DBNull.Value : (object)userName);
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }
                var sqlDataReader = await cmd.ExecuteReaderAsync();
                ExistedModel _result = new();
                while (sqlDataReader.Read())
                {
                    if (sqlDataReader["Error"] is not DBNull)
                    {
                        _result.error = int.Parse(String.Format("{0}", sqlDataReader["Error"])) == 1;
                        _result.message = sqlDataReader["Message"].ToString();
                    }

                }
                return _result;
            }
            catch (Exception ex)
            {
                BaseService.NLogError(String.Format("{0}", MethodBase.GetCurrentMethod()?.Name), "", ex);

                return new ExistedModel();
            }
            finally
            {
                sqlConnection.Close();
            }
        }

    }
}