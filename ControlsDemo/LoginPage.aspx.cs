using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemo
{
    /*
=====================================================================================
Difference Between Server.Transfer and Response.Redirect in ASP.NET
=====================================================================================

Server.Transfer:
- In this case, the transfer between the source and target pages occurs entirely 
 within the server.
- Example: When valid credentials are entered and the user clicks the Login button, 
 the request first reaches "LoginPage" (a postback occurs). From there, 
 Server.Transfer transfers control directly to "SuccessPage" on the server 
 without involving the client browser.

Response.Redirect:
- In this case, the transfer between the source and target pages is performed 
 through the browser.
- Example: When invalid credentials are entered and the user clicks the Login button, 
 the request first reaches "LoginPage" (a postback occurs). From there, 
 Response.Redirect sends an HTTP 302 (Found) status code to the browser, 
 instructing it to make a new request to "FailurePage". 
 The browser then requests "FailurePage" from the server and displays the response.

-------------------------------------------------------------------------------------
Key Differences Between Server.Transfer and Response.Redirect:
-------------------------------------------------------------------------------------

1. Location of Execution:
- Server.Transfer: The transfer occurs entirely on the web server.
- Response.Redirect: The transfer occurs through the browser.

2. Performance:
- Server.Transfer: Faster, as it avoids an extra round trip between the browser 
 and the server.
- Response.Redirect: Slower, due to additional browser–server communication.

3. URL Behavior:
- Server.Transfer: The URL in the browser’s address bar does not change, 
 so the new page cannot be bookmarked.
- Response.Redirect: The URL updates to the new page’s address, allowing bookmarking.

4. Scope:
- Server.Transfer: Can transfer only between pages within the same application.
- Response.Redirect: Can redirect to pages in the same site, other sites, 
 or even other servers.

=====================================================================================
*/
    public partial class LoginPage : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtName.Focus();
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (txtName.Text == "admin" && txtPwd.Text == "admin")
                Server.Transfer("SucessPage.aspx");
            else
                Response.Redirect("FailurePage.aspx?Name="+txtName.Text );
        }

        protected void btnReset_Click(object sender, EventArgs e)
        {
            txtName.Text = txtPwd.Text = "";
            txtName.Focus();
        }
    }
}