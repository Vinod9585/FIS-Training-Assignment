using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Day3_
{
    public partial class ValidationForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnRegister_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                Response.Redirect("Valid.html");
            }
            else
            {
                Response.Write("Invalid Information");
            }
        }

        protected void BtnLogin_Click(object sender, EventArgs e)
        {

        }
    }
}