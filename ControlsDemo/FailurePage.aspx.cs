using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemo
{
    public partial class FailurePage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Fetching value from QueryString or Form or both using Request property
            string name = Request["Name"];
            Response.Write($"Sorry {name}, your login attempt was unsuccessful. Please try again.");
           }
    }
}