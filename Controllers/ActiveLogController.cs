using Microsoft.AspNetCore.Authorization;
using Microsoft.AspNetCore.Hosting;
using Microsoft.AspNetCore.Mvc;
using Microsoft.Extensions.Configuration;
using MledNew2023.MVC.Helpers;
using MledNew2023.MVC.Models;
using System;
using System.Collections.Generic;
using System.IO;
using System.Reflection;
using System.Security.Claims;

namespace MledNew2023.MVC.Controllers
{
    [Authorize]
    [System.Obsolete("This type is obsolete and will be removed in a future version. The recommended alternative is Microsoft.AspNetCore.Hosting.IWebHostEnvironment.", false)]
    public class ActiveLogController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        public ActiveLogController(Microsoft.AspNetCore.Hosting.IHostingEnvironment hostingEnvironment, IConfiguration configuration)
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
            BaseService.AddUserActive(currentUserID, IpAddress, new MessageResults { Id = -1, message = "Xem chức năng", Tittle = "Nhật ký lỗi hệ thống" }, ConnectionString);
            return View();
        }

        public IEnumerable<FolderModel> Get()
        {
            try
            {
                var logList = new List<FolderModel>();
                var rootFolder = Directory.GetCurrentDirectory();
                string logPath = String.Format("{0}\\wwwroot\\Log", rootFolder);
                string[] subfolders = Directory.GetDirectories(logPath);
                Array.Reverse(subfolders); //sắp xếp nhỏ dần
                foreach (string _name in subfolders)
                {
                    FolderModel _folder = new FolderModel();
                    string[] listFolder = _name.Split("\\");
                    if (listFolder.Length > 0)
                    {
                        _folder.Name = listFolder[listFolder.Length - 1];
                        _folder.DateCreated = BaseService.GetFolderNameByName(listFolder[listFolder.Length - 1]);
                    }
                    else
                    {
                        _folder.Name = _name;
                        _folder.DateCreated = _name;
                    }
                    logList.Add(_folder);
                }
                return logList;
            }
            catch (Exception ex)
            {

                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                   MethodBase.GetCurrentMethod()?.Name,
                   ex.Message,
                   ex.StackTrace,
                   ex.InnerException,
                   (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return new List<FolderModel>();
            }
        }

        [HttpGet]
        //[ValidateAntiForgeryToken]
        public List<FileModel> GetContent(string pathfile)
        {
            var logList = new List<FileModel>();
            try
            {
                var rootFolder = Directory.GetCurrentDirectory();
                string spath = String.Format("{0}\\wwwroot\\Log\\{1}\\Info.log", rootFolder, pathfile).Replace("\\", "/");
                BaseService.NLogInfor(spath);
                if (System.IO.File.Exists(spath))
                {
                    string[] lines = System.IO.File.ReadAllLines(spath);
                    string _content = "";
                    int index = 0;
                    FileModel _s = new FileModel();
                    foreach (string _line in lines)
                    {
                        if (_line.IndexOf("|") == -1)
                        {
                            _content += _line + "<br/>";
                        }
                        else
                        {
                            string[] linenames = _line.Split("|");
                            if (linenames.Length >= 2)
                            {
                                _s.DateCreated = linenames[0];
                                _s.Name = String.Format("{0}|{1}", linenames[1], linenames[2]);
                            }
                            if (index != 0)
                            {
                                _s.Content = _content;
                                logList.Add(_s);
                            }
                        }
                        if (index == (lines.Length - 1))
                        {
                            _s.Content = _content;
                            logList.Add(_s);
                        }
                        index++;
                    }
                }
                else
                {
                    FileModel _s = new FileModel();
                    _s.DateCreated = DateTime.Now.ToString("dd/MM/yyyy HH:mm");
                    _s.Name = "Không tìm thấy file ghi nhật ký";
                    _s.Content = String.Format("{0}/Info.log: {1}", pathfile, "Không tìm thấy file ghi nhật ký ").Replace("\\", " /").Replace(" /", "/");
                    logList.Add(_s);
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
            return logList;
        }

    }
}
