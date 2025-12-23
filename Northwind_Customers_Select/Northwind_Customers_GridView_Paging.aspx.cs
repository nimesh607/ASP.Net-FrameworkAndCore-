using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Security.Policy;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Northwind_Customers_Select
{
    public partial class Northwind_Customers_GridView_Paging : System.Web.UI.Page
    {
        string ConStr = ConfigurationManager.ConnectionStrings["NorthwindCS"].ConnectionString;
        DataSet ds;

        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection(ConStr);
            SqlDataAdapter da = new SqlDataAdapter("Select CustomerID, CompanyName, ContactName, City, Country,PostalCode, Phone From Customers",ConStr);
            ds = new DataSet();
            da.Fill(ds, "Customers");
            gvCustomers.DataSource = ds.Tables["Customers"];// Default view
            gvCustomers.DataBind();// Bind the data to GridView
        }

        protected void gvCustomers_Sorting(object sender, GridViewSortEventArgs e)
        {
            string[] sarr = Session["SortOrder"].ToString().Split(' ');
            if (sarr[0] == e.SortExpression)
            {
                if (sarr[1] == "Asc")
                {
                    Session["SortOrder"] = e.SortExpression + " Desc";
                }
                else
                {
                    Session["SortOrder"] = e.SortExpression + " Asc";
                }
            }
            else
                Session["SortOrder"] = e.SortExpression + " Asc";
            DataView dv = ds.Tables["Employees"].DefaultView;
            dv.Sort = Session["SortOrder"].ToString();
            gvCustomers.DataSource = dv;
            gvCustomers.DataBind();
        }
    }
}