using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationsControls
{
    public partial class Validation2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //These two properties we need dynamically set so we are writing the code here.These properties cannot be set at design time.
            rvDate.MinimumValue = DateTime.Now.ToShortDateString();
            rvDate.MaximumValue = DateTime.Now.AddDays(60).ToShortDateString();
            if(!IsPostBack)
            {
                txtName.Focus();
            }
        }

        protected void imgDate_Click(object sender, ImageClickEventArgs e)
        {
            if(cldDate.Visible)
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

        protected void btnConfirm_Click(object sender, EventArgs e)
        {
            if(IsValid)
            {
                lblMsg.ForeColor= System.Drawing.Color.Green;
                lblMsg.Text = "All the details are valid. Form is submitted successfully.";
            }
            else
            {
                lblMsg.ForeColor= System.Drawing.Color.Red; 
                lblMsg.Text = "There are some validation errors. Please correct them and submit again.";

            }
        }
    }
}