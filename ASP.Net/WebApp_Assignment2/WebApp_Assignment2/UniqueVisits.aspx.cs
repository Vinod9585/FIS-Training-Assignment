using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Assignment2
{
    
    public partial class UniqueVisits : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            
            int currentUsers = WebApp_Assignment2.Global.CurrentUsers;

            int totalUsers = WebApp_Assignment2.Global.TotalUsers;

            LblCurrent.Text = "Current Users : " + currentUsers.ToString();

            LblTotal.Text = "Total Users : " + totalUsers.ToString();
        }

    }
}