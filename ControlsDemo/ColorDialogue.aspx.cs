using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemo
{
    public partial class ColorDialogue : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void txtColor1_TextChanged(object sender, EventArgs e)
        {
            div1.Attributes.Add("style","background-color:"+ txtColor1.Text);
        }
    }
}