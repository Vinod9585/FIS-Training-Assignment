using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Day2
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Btnlogin_Click(object sender, EventArgs e)
        {
            HttpCookie hc = new HttpCookie("Logincookie");
            hc["c1"] = Textuname.Text;
            hc["c2"] = Textpass.Text;
            Response.Cookies.Add(hc);

            
        }
    }
}