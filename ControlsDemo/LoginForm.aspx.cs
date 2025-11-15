using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemo
{
    public partial class LoginForm : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                txtName.Focus();    
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "admin" && txtPwd.Text == "admin123" && txtEmail.Text == "admin@gmail.com") 
            {
                lblStatus.Text = "Login Succesfull";
            }
            else {
                lblStatus.Text = "Login Failed";
            }
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtEmail.Text = txtPwd.Text = txtName.Text = "";    
            txtName.Focus();
        }
    }
}