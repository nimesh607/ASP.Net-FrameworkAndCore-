using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationsControls
{
    public partial class Validations4 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtName.Focus();
            }

        }

        protected void btnRegister_Click(object sender, EventArgs e)
        {
            if (IsValid)//IsValid is a property of Page class
            {
                lblMsg.ForeColor = System.Drawing.Color.Green;
                lblMsg.Text = "Your company registration is successful.";
            }
            else
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Your company registration failed because of validation errors.";
            }
        }
    }
}