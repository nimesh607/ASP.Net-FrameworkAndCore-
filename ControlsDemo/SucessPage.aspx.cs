using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemo
{
    public partial class SucessPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //string Name = Request.Form["txtName"];
            Page pp = PreviousPage;
             Control ctrl = pp.FindControl("txtName"); 
            TextBox tb = (TextBox)ctrl; 
            string Name = tb.Text ; 
           Response.Write($"Hello {Name}, welcome to the site.");
            //Response.Write($"Hello {Name}, welcome to the site.");
        }
    }
}