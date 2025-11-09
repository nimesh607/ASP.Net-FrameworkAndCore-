using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace FirstWebForm
{
    public partial class Second : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //In C# file write html ("")
            Response.Write("Welcome to Second Page");
            Response.Write("<br/>");
            Response.Write("Server Date:" + DateTime.Now.ToShortDateString());
            Response.Write("<br/>");
            Response.Write("Server Time:" + DateTime.Now.ToShortTimeString());
        }
    }
}