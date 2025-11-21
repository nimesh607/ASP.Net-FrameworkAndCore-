using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationsControls
{
    public partial class ValidationControls1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Since ASP.NET 4.5, unobtrusive validation is enabled by default i.e Jquery.by using this line we're telling ASP.NET to disable it.This is [age level setting.if you want app level setting go to Global.asax.cs and add the same line in Application_Start method .third option is add it into web.config file.
            //this.UnobtrusiveValidationMode = UnobtrusiveValidationMode.None;
            if(!IsPostBack)
            {
                txtName.Focus();
            }

        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            if (IsValid)
            {
                lblMsg.ForeColor = System.Drawing.Color.Green;
                lblMsg.Text = "Hello user the name you have entered is: " + txtName.Text + " and your selected country is: " +
                ddlCountries.SelectedItem.Text;
            }
            else
            {
                lblMsg.ForeColor = System.Drawing.Color.Red;
                lblMsg.Text = "Data validations failed.";
            }
        }
    }
}