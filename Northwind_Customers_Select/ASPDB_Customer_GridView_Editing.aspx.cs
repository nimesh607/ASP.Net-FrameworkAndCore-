using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;

namespace Northwind_Customers_Select
{
    public partial class ASPDB_Customer_GridView_Editing : System.Web.UI.Page
    {
        SqlCommand cmd; 
        SqlConnection con;
        protected void Page_Load(object sender, EventArgs e)
        {
            con = new SqlConnection(ConfigurationManager.ConnectionStrings["ASPDBCS"].ConnectionString);
            cmd = new SqlCommand();
            cmd.Connection = con;
            if (!IsPostBack)
            {
                LoadData();
            }
        }

        private void LoadData()
        {
            cmd.CommandText = "Select Custid,Name,Balance,City,Status From Customer Where Status=1 Order By Custid ";
            if(con.State==ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter(cmd);
            DataSet ds = new DataSet();
            da.Fill(ds);
            gvCustomers.DataSource = ds;
            gvCustomers.DataBind();
        }

        protected void gvCustomers_RowEditing(object sender, GridViewEditEventArgs e)
        {
            gvCustomers.EditIndex = e.NewEditIndex;
            LoadData();

        }

        protected void gvCustomers_RowCancelingEdit(object sender, GridViewCancelEditEventArgs e)
        {
            gvCustomers.EditIndex = -1;
            LoadData();
        }

        protected void gvCustomers_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            //e.RowIndex will give the index of the row being updated
            //Controls[0] will give the first control in the cell, which is the TextBox in Edit mode
            //Convert the values to appropriate data types using Convert class
            //TextBox used because in Edit mode, the cell contains a TextBox control and not just text 
            //.Text property is used to get the text entered in the TextBox
            try
            {
                int Custid = Convert.ToInt32(gvCustomers.Rows[e.RowIndex].Cells[0].Text);
                string Name = ((TextBox)gvCustomers.Rows[e.RowIndex].Cells[1].Controls[0]).Text;
                decimal Balance = Convert.ToDecimal(((TextBox)gvCustomers.Rows[e.RowIndex].Cells[2].Controls[0]).Text);
                string City = ((TextBox)gvCustomers.Rows[e.RowIndex].Cells[3].Controls[0]).Text;

                cmd.CommandText = $"Update Customer Set Name='{Name}',Balance={Balance},City='{City}' Where Custid={Custid} ";
                con.Open();
                if (cmd.ExecuteNonQuery() > 0)
                {
                    //After successful update, reset the EditIndex property and reload data
                    gvCustomers.EditIndex = -1;
                    LoadData();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message.Replace("'", "") + "')</script>");
            }
            finally
            {
                con.Close();
            }

        }

        protected void gvCustomers_RowDeleting(object sender, GridViewDeleteEventArgs e)
        {
            try
            {
                int Custid = int.Parse(gvCustomers.Rows[e.RowIndex].Cells[0].Text);
                cmd.CommandText = $"Update Customer Set Status=0 Where Custid={Custid}";
                con.Open();
                //Execute the command and reload data if successful.it's already in a read only mode just load data again
                if (cmd.ExecuteNonQuery() > 0)
                {
                    LoadData();
                }
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message.Replace("'", "") + "')</script>");
            }
            finally
            {
                con.Close();
            }
        }

        protected void btnInsert_Click(object sender, EventArgs e)
        {
            try { int Custid = int.Parse(txtCustid.Text);
                string Name = txtName.Text;
                string City = txtCity.Text; 
                decimal Balance = decimal.Parse(txtBalance.Text);
                int Status = Convert.ToInt32(cbStatus.Checked); 
                
                cmd.CommandText = $"Insert Into Customer (Custid, Name, City, Balance, Status) Values({Custid}, '{Name}', '{City}', {Balance}, {Status})";
                con.Open(); 
             
                if (cmd.ExecuteNonQuery() > 0) 
                { 
                    LoadData(); cbStatus.Checked = false; 
                    txtCustid.Text = txtName.Text = txtCity.Text = txtBalance.Text = "";
                } 
            } 
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message.Replace("'", "") + "')</script>");
            } 
            finally 
            { 
                con.Close(); 
            }
        }
    }
}