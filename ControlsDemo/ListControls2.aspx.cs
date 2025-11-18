using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace ControlsDemo
{
    public partial class ListControls2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataSet ds = new DataSet();
                string PhysicalPath = Server.MapPath("~/Product.xml");//Getting virtual path of XML file through MapPath method
                ds.ReadXml(PhysicalPath);

                DropDownList1.DataSource = ds;//Setting DataSet as DataSource for DropDownList
                DropDownList1.DataTextField = "Name";//Setting DataTextField to show Name column
                DropDownList1.DataValueField = "Id";//Setting DataValueField to set Price column as value
                DropDownList1.DataBind();//Binding the data to DropDownList
                DropDownList1.Items.Insert(0, "-Select Products-");

                ListBox1.DataSource = ds;
                ListBox1.DataTextField = "Name";
                ListBox1.DataValueField = "Id";
                ListBox1.DataBind();

                RadioButtonList1.DataSource = ds;
                RadioButtonList1.DataTextField = "Name";
                RadioButtonList1.DataValueField = "Id";
                RadioButtonList1.DataBind();

                CheckBoxList1.DataSource = ds;
                CheckBoxList1.DataTextField = "Name";
                CheckBoxList1.DataValueField = "Id";
                CheckBoxList1.DataBind();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (DropDownList1.SelectedIndex > 0)
            {   
                
                ListItem li = DropDownList1.SelectedItem;
                Label1.Text = li.Value + ": " + li.Text;
            }
            else
            {
                Label1.Text = "Please Select a Product";
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Label2.Text = "";
            foreach (int i in ListBox1.GetSelectedIndices())
            {
                ListItem li = ListBox1.Items[i];
                Label2.Text += li.Value + ": " + li.Text + "<br/>";
            }
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            if (RadioButtonList1.SelectedItem != null)
            {
                ListItem li = RadioButtonList1.SelectedItem;
                Label3.Text = li.Value + ": " + li.Text;
            }
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            //In Checkbox we need to iterate all over the items.
            Label4.Text = "";
            foreach (ListItem li in CheckBoxList1.Items)
            {
                if (li.Selected)
                {
                    Label4.Text += li.Value + ": " + li.Text + "<br />";
                }
            }
        }
    }
}