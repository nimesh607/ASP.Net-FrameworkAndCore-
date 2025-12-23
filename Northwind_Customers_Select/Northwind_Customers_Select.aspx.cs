using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Text;
namespace Northwind_Customers_Select
{
    public partial class Northwind_Customers_Select : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            SqlConnection conn = new SqlConnection("Data Source =localhost;Integrated Security=SSPI;TrustServerCertificate=true;Database=Northwind");
            SqlCommand cmd = new SqlCommand("Select CustomerID, CompanyName, ContactName, City, Region,\r\nPostalCode, Country, Phone From Customers", conn);
            conn.Open();
            SqlDataReader  dr = cmd.ExecuteReader();
            StringBuilder sb = new StringBuilder();
            sb.Append("<table border='1' align='center'>");
            sb.Append("<caption>Customer Details </caption>");
            sb.Append("<tr>");
            //Building the header row:
            for (int i =0;i<dr.FieldCount;i++ )
            {
                sb.Append($"<th>{dr.GetName(i)}</th>");
            }
            sb.Append("</tr>");
            while (dr.Read())
            {
                sb.Append("<tr>");
                for (int i = 0; i < dr.FieldCount; i++)
                {
                    sb.Append($"<td>{dr.GetValue(i)}</td>");
                }
            }
            sb.Append("</tr>");
            sb.Append("</table>");
            lblTable.Text=sb.ToString();

        }
    }
}