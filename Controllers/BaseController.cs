using DocumentFormat.OpenXml.Presentation;
using DocumentFormat.OpenXml.Spreadsheet;
using Microsoft.AspNetCore.Identity;
using Microsoft.AspNetCore.Mvc;
using Microsoft.CodeAnalysis.Operations;
using Microsoft.Data.SqlClient;
using Microsoft.Extensions.Configuration;
using MledNew2023.MVC.Models;
using System;
using System.Collections.Generic;
using System.Data;
using System.Numerics;
using System.Reflection;
using System.Security.Claims;
using static MledNew2023.MVC.Constants.Permissions;

namespace MledNew2023.MVC.Controllers
{
    public class BaseController : Controller
    {
        private static readonly NLog.Logger _Nlog = NLog.LogManager.GetCurrentClassLogger();
        public IConfiguration Configuration { get; }
        private readonly RoleManager<IdentityRole> _roleManager;
        private string currentUserID;
        public BaseController(RoleManager<IdentityRole> roleManager, IConfiguration configuration)
        {
            _roleManager = roleManager;
            Configuration = configuration;
        }
        [HttpGet]
        public IEnumerable<DataSelectOption> GetDataSelect(string tableName, string val, string text, string F2, string k1, string k2, string kval1, string kval2)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            var opList = new List<DataSelectOption>();
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetDataSelect";
                cmd.Parameters.AddWithValue("@tableName", ((object)tableName == null ? DBNull.Value : (object)tableName));
                cmd.Parameters.AddWithValue("@opWhere1", ((object)k1 == null ? DBNull.Value : (object)k1));
                cmd.Parameters.AddWithValue("@opWhere2", ((object)k2 == null ? DBNull.Value : (object)k2));
                cmd.Parameters.AddWithValue("@kval1", ((object)kval1 == null ? DBNull.Value : (object)kval1));
                cmd.Parameters.AddWithValue("@kval2", ((object)kval2 == null ? DBNull.Value : (object)kval2));
                cmd.Parameters.AddWithValue("@FValue", ((object)val == null ? DBNull.Value : (object)val));
                cmd.Parameters.AddWithValue("@FText", ((object)text == null ? DBNull.Value : (object)text));
                cmd.Parameters.AddWithValue("@F2", ((object)F2 == null ? DBNull.Value : (object)F2));

                SqlDataReader sqlDataReader = cmd.ExecuteReader();                
                while (sqlDataReader.Read())
                {
                    var _result = new DataSelectOption();
                    _result.opValue = sqlDataReader["opValue"].ToString();
                    _result.opText = sqlDataReader["opText"].ToString();
                    opList.Add(_result);
                }
                return opList;
            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return opList;
            }
            finally
            {
                sqlConnection.Close();
            }
        }
        [HttpGet]
        public IEnumerable<DataSelectOption> GetDataSelectIN(string tableName, string kD, string kF, string kT, string kL, string kB, string kP)
        {
            string ConnectionString = String.Format("{0}", Configuration.GetConnectionString("DefaultConnection"));
            SqlConnection sqlConnection = new SqlConnection(ConnectionString);
            var opList = new List<DataSelectOption>();
            try
            {
                if (sqlConnection.State == ConnectionState.Closed)
                {
                    sqlConnection.Open();
                }

                SqlCommand cmd = sqlConnection.CreateCommand();
                cmd.CommandType = CommandType.StoredProcedure;
                cmd.CommandText = "GetDataSelectIN";
                ClaimsPrincipal currentUser = this.User;
                currentUserID = currentUser.FindFirst(ClaimTypes.NameIdentifier).Value;
                cmd.Parameters.AddWithValue("@tableName", ((object)tableName == null ? DBNull.Value : (object)tableName));
                cmd.Parameters.AddWithValue("@UserId", currentUserID);
                cmd.Parameters.AddWithValue("@SDeviceId", ((object)kD == null ? DBNull.Value : (object)kD));
                cmd.Parameters.AddWithValue("@SFactoryId", ((object)kF == null ? DBNull.Value : (object)kF));
                cmd.Parameters.AddWithValue("@STeamId", ((object)kT == null ? DBNull.Value : (object)kT));
                cmd.Parameters.AddWithValue("@SBranchID", ((object)kB == null ? DBNull.Value : (object)kB));
                cmd.Parameters.AddWithValue("@SLineId", ((object)kL == null ? DBNull.Value : (object)kL));
                cmd.Parameters.AddWithValue("@SPlanId", ((object)kP == null ? DBNull.Value : (object)kP));
                SqlDataReader sqlDataReader = cmd.ExecuteReader();                
                while (sqlDataReader.Read())
                {
                    var _result = new DataSelectOption();
                    _result.opValue = sqlDataReader["opValue"].ToString();
                    _result.opText = sqlDataReader["opText"].ToString();
                    opList.Add(_result);
                }
                return opList;
            }
            catch (Exception ex)
            {
                _Nlog.Error("\r\nMethod Name={0}\r\nMessage={1}\r\nStackTrace={2}\r\nInnerException={3}\r\nInnerException.Message={4}",
                    MethodBase.GetCurrentMethod()?.Name,
                    ex.Message,
                    ex.StackTrace,
                    ex.InnerException,
                    (ex.InnerException == null ? string.Empty : ex.InnerException.Message));
                return opList;
            }
            finally
            {
                sqlConnection.Close();
            }
        }


        [HttpGet]
        public MessageResults GetNameDonvi(int BranchId)
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
                cmd.CommandText = "GetNameDonvi";
                cmd.Parameters.AddWithValue("@BranchId", ((object)BranchId == null ? DBNull.Value : (object)BranchId));

                SqlDataReader sqlDataReader = cmd.ExecuteReader();
                while (sqlDataReader.Read())
                {
                    MessageResults result = new MessageResults();
                    result.message = sqlDataReader["NameVal"].ToString();
                    return result;
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
    }
}
