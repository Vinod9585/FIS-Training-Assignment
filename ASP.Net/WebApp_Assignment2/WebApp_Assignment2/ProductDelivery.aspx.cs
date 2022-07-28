using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace WebApp_Assignment2
{
    public partial class ProductDelivery : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BtnSubmit_Click(object sender, EventArgs e)
        {
            //Page.Validate("SubmitGroup");
            
            if (Page.IsValid == true)
            {
                Label1.Text = "Details Saved Successfully";
                Label1.ForeColor = System.Drawing.Color.Green;
            }
            else if (Page.IsValid == false)
            {
                Label1.Text = "Validation Failed... Not Saving";
                Label1.ForeColor = System.Drawing.Color.Red;
            }
        }

        protected void CustomValidator1_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (args.Value == "")
            {
                args.IsValid = false;
            }
            else
            {
                if (args.Value == (DateTime.Now.ToString("dd/MM/yyyy")))
                {
                    args.IsValid = true;
                }
                else
                    args.IsValid = false;
            }
        }

        protected void CustomValidator2_ServerValidate(object source, ServerValidateEventArgs args)
        {
            
            if (DropDownRB1.SelectedValue.Equals("Select Receiver's Name"))
            {
                    args.IsValid = false;
            }
            else
            {
                args.IsValid = true;
            }
                    
            
        }
    }
}