using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.Security;
using System.Web.SessionState;

namespace WebApp_Assignment2
{
    public class Global : System.Web.HttpApplication
    {
        private static int totalUsers = 0;

        private static int currentUsers = 0;

        protected void Application_Start(object sender, EventArgs e)
        {
            totalUsers = 0;
        }

        protected void Session_Start(object sender, EventArgs e)
        {
            totalUsers += 1;

            currentUsers += 1;
        }

        protected void Application_BeginRequest(object sender, EventArgs e)
        {

        }

        protected void Application_AuthenticateRequest(object sender, EventArgs e)
        {

        }

        protected void Application_Error(object sender, EventArgs e)
        {

        }

        protected void Session_End(object sender, EventArgs e)
        {
            currentUsers -= 1;
        }

        protected void Application_End(object sender, EventArgs e)
        {

        }
        public static int TotalUsers { get { return totalUsers; } }

        public static int CurrentUsers { get { return currentUsers; } }
    }
}