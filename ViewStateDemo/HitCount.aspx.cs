using System;
using System.Collections.Generic;
using System.Diagnostics;
using System.EnterpriseServices.CompensatingResourceManager;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ViewStateDemo
{
    public partial class HitCount : System.Web.UI.Page
    {
        //This is Demo for view state .
        // In a Web Form, every time the user clicks the button, a new instance of the page class is created.
        // This means the variable "Count" is reinitialized to 0 on every button click.

        // When the button is clicked:
        // 1. The server creates a fresh page object.
        // 2. "Count" starts again from 0.
        // 3. The click event adds 1, so Count becomes 1.
        // 4. The page is sent back to the browser.
        // 5. The page object is destroyed.

        // Because this cycle repeats on every postback, the value of "Count" always shows as 1.
        // This behavior is called the *stateless* nature of HTTP, meaning it does not remember data automatically.

        // To preserve values between postbacks (to remember data), we use ViewState.
        // ViewState stores data in a hidden field on the page so it can be restored when the page reloads.
        //Syntax of storing a value into ViewState:   
        //ViewState[string name] = value (Object);
        //Syntax of retrieving a value from ViewState:
        //Object value = ViewState[string name];

        int Count = 0;
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnCount_Click(object sender, EventArgs e)
        {
            if (ViewState["Counter"] == null)
            {
                Count = 1;
            }
            else
            {
                Count = (int)ViewState["Counter"] + 1;
            }
            ViewState["Counter"] = Count;
            lblCount.Text = "Hit Count: " + Count;
        }
    }
}