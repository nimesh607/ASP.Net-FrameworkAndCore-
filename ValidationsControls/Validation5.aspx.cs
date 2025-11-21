using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ValidationsControls
{
    public partial class Validation5 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void cvComments_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if(args.Value.Trim().Length<50)//args.Value contains the value of the Input control being validated
            {
                if(args.Value.Trim().Length<50)//here we are validating le
                {                    
                    args.IsValid = false;//Every ServerValidateEventArgs object has IsValid property
                }
                else
                {
                    args.IsValid = true;
                }
            }
        }

        protected void cvPhoneOrEmail_ServerValidate(object source, ServerValidateEventArgs args)
        {
            if (txtPhone.Text.Trim().Length == 0 && txtEmail.Text.Trim().Length == 0)//Here we are validating two input controls
            {
                args.IsValid = false;//Here IsValid not refers to input control but to the validation control
            }
            else
            {
                args.IsValid = true;
            }
        }
    }
}