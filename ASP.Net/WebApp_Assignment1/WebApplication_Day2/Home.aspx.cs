using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Day2
{
    public partial class Home : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(PreviousPage!=null && PreviousPage.IsCrossPagePostBack)
            {
                HttpCookie rc = Request.Cookies["Logincookie"];

                Label1.Text = "Username : " + rc["c1"];
                Label2.Text = "Password : " + rc["c2"];

                TextBox name = (TextBox)PreviousPage.FindControl("Textuname");
                Label3.Text = "Welcome " + name.Text;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }
        }

        protected void Btnlogout_Click(object sender, EventArgs e)
        {

            HttpCookie rc1 = Request.Cookies["Logincookie"];
            rc1.Expires = DateTime.Now.AddDays(-1);
            //Response.Cookies.Remove("Logincookie");
            Response.Cookies.Add(rc1);


            Response.Redirect("Login.aspx");
        }
    }
}