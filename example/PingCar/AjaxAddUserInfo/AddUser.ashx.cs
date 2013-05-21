using System;
using System.Collections.Generic;
using System.Linq;
using System.Threading;
using System.Web;
using System.Web.Services;
using System.Configuration;
using System.Data;
namespace AjaxAddUserInfo
{
    /// <summary>
    /// $codebehindclassname$ 的摘要说明
    /// </summary>
    [WebService(Namespace = "http://tempuri.org/")]
    [WebServiceBinding(ConformsTo = WsiProfiles.BasicProfile1_1)]
    public class AddUser : IHttpHandler
    {

        public void ProcessRequest(HttpContext context)
        {
            //为了防止Ajax跨站攻击
            if (context.Request.UserHostName.Equals("127.0.0.1"))
            {
                try
                {
                    string AccessConnString = ConfigurationManager.AppSettings["AccessString"];
                    string UserName = context.Request["txtUserName"];
                    string PassWord = context.Request["txtPassWord"];
                    string Email = context.Request["txtEmail"];
                    string InsertUserSql = 
                        string.Format("Insert into PingCar_User(PingCar_User_Name,PingCar_User_PassWord,PingCar_User_Email) Values('{0}','{1}','{2}')",
                        UserName,PassWord,Email);
                    int returnValue=AccessHelper.ExecuteNonQuery(AccessConnString, CommandType.Text,InsertUserSql);
                    if (returnValue>0)
                    {
                        context.Response.Write("OK");
                    }
                    else
                    {
                        context.Response.Write("error");
                    }
                }
                catch (Exception)
                {
                    context.Response.Redirect("/Error/Error.aspx");
                }
            }
            else
            {
                context.Server.Transfer("Error/ErrorPage.aspx");
            }

        }

        public bool IsReusable
        {
            get
            {
                return false;
            }
        }
    }
}
