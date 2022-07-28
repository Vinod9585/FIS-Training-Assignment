using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApplication_Day2
{
    public partial class Day2_Assignment1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                string[] str = new string[] { "Select Mobile", "OPPO", "VIVO", "IPHONE", "SAMSUNG", "ONEPLUS" };
                for (int i = 0; i < str.Length;i++)
                {
                    DropDownList1.Items.Add(str[i]);
                }
            }

            
        }

        protected void DropDownList1_SelectedIndexChanged(object sender, EventArgs e)
        {
            string str = DropDownList1.Text;
            Image1.ImageUrl = "~/Images/" + str + ".jpg";
        }

        
        protected void Button1_Click(object sender, EventArgs e)
        {
            Label1.Text = DropDownList1.SelectedIndex.ToString();

            if(DropDownList1.Text=="OPPO")
            {
                Label1.Text = "Rs. 25000";
            }
            else if (DropDownList1.Text == "VIVO")
            {
                Label1.Text = "Rs. 15000";
            }
            else if (DropDownList1.Text == "IPHONE")
            {
                Label1.Text = "Rs. 70000";
            }
            else if (DropDownList1.Text == "SAMSUNG")
            {
                Label1.Text = "Rs. 30000";
            }
            else if (DropDownList1.Text == "ONEPLUS")
            {
                Label1.Text = "Rs. 35000";
            }
            else
            {
                Label1.Text = "";
            }
        }
    }
}