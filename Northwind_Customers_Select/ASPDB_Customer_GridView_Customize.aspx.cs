using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Configuration;
namespace Northwind_Customers_Select
{
    public partial class ASPDB_Customer_GridView_Customize : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["ASPDBCS"].ConnectionString);
            SqlCommand cmd = new SqlCommand("Select Custid,Name,Balance,City,Status From Customer Order By Custid",con);
            con.Open();
            SqlDataReader dr = cmd.ExecuteReader();
            gvCustomers.DataSource = dr;
            gvCustomers.DataBind();
            con.Close();


        }
    }
}