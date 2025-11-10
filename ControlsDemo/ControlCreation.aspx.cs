using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemo
{
    public partial class ControlCreation : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //Every Control in ASP.NET is represented by a class that derives from System.Web.UI.Control
            //here is example of creating controls  programmatically/dynamiccally
            Button button3 = new Button();
            button3.ID = "Button3";
            button3.Text = "Button 3";
            form1.Controls.Add(button3);   
            button3.Click += Button3_Click;

        }

        private void Button3_Click(object sender, EventArgs e)
        {
             //Response.Write("Button 3 Clicked");
            //using js alert
            Response.Write("<script>alert('Button 3 Clicked');</script>");

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Response.Write("Button 1 Clicked");
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Write("Button 2 Clicked"); 
        }
    }
}