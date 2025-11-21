using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationsControls
{
    public partial class Validation3 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            cvIsMajor.ValueToCompare= DateTime.Now.AddYears(-18).ToShortDateString();
           
        }

        protected void imgDate_Click(object sender, ImageClickEventArgs e)
        {
            if (cldDate.Visible)
            {
                cldDate.Visible = false;
            }
            else
            {
                cldDate.Visible = true;
            }
        }

        protected void cldDate_SelectionChanged(object sender, EventArgs e)
        {
            txtDate.Text = cldDate.SelectedDate.ToShortDateString();
            cldDate.Visible = false;
        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if(Page.IsValid)
            {
                lblMsg.ForeColor = System.Drawing.Color.Green;
                lblMsg.Text="Validation Successful. You are registered!";
            }
            else
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Validation Failed. Please correct the errors and try again.";
            }

        }
    }
}