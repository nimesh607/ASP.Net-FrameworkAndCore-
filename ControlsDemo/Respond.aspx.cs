using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
/*
=====================================================================================
   Difference Between GET and POST Methods in HTTP
=====================================================================================

1. Data Transmission:
   - GET: The data sent from the browser to the server is appended to the requested 
           page’s URL as a query string. 
           Example:  https://example.com/Contact.aspx?name=John&email=john@example.com
           This makes the transmitted data visible in the browser’s address bar.
   - POST: The data is transmitted in the body of the HTTP request, using HTTP headers.
           This keeps the transmitted information hidden from the user.

2. Security:
   - GET: Less secure since data is exposed in the URL.
   - POST: More secure as the data is not visible in the browser’s address bar.

3. Data Length:
   - GET: Limited by the maximum URL length (typically around 2048 characters).
   - POST: Can send large amounts of data since it’s sent in the request body.

4. Use Cases:
   - GET: Commonly used for data retrieval or navigation where no sensitive data 
          is transmitted.
   - POST: Used when submitting forms, uploading files, or sending sensitive information.

Note:
   HTTP Headers are metadata elements that allow the client and server to pass 
   additional information along with an HTTP request or response.
=====================================================================================
*/

namespace ControlsDemo
{
    public partial class Respond : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            

            //if the submit method is post than get the form values
           // string Name =Request.Form["txtName"];
           // string Phone = Request.Form["txtPhone"];
           // string Email = Request.Form["txtEmail"];
            
            //if the submit method is get than get the query string values
            //string Name = Request.QueryString["txtName"];
            //string Phone = Request.QueryString["txtPhone"];
            //string Email = Request.QueryString["txtEmail"];

            //if you want to handle both get and post methods
            string Name = Request ["txtName"];
            string Phone = Request ["txtPhone"];
            string Email = Request["txtEmail"];
         




            Response.Write("<h3>Hello " + Name + ", we have received your contact details.</h3>");
            Response.Write("Contact Phone: " + Phone + "<br />");
            Response.Write("Contact Email: " + Email + "<br />");

        }
    }
}