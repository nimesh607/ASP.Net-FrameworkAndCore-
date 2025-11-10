using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemo
{
    public partial class ButtonDemo1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(IsPostBack)//It is property of Page class that indicates whether the page is being loaded in response to a client postback, or if this is the first time the page is being loaded.observe the output when u refresh the page and when u click any button .First request to a page is called as “Get Request or First Request” and the next requests to a page are called as “Post Request or Postback Request.Currently both buttons perform postback operation.Refer ButtonDemo2.aspx for Cross Page Postback.
            {
                Response.Write("This is a Post Back request <br/>");
            }
            else
            {
                Response.Write("This is the first time the page is being loaded  or get request <br/>");
            }
        }
    }
}