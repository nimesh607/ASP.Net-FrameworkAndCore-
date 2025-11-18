using System;
using System.Collections.Generic;
using System.Linq;
using System.Text;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemo
{
    public partial class RadioAndCheck : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtName.Focus();
            }
        }

        protected void btnSubmit_Click(object sender, EventArgs e)
        {
            StringBuilder sb = new StringBuilder();
            string str = "";
            if (txtName.Text.Trim().Length > 0)
                sb.Append($"Name: {txtName.Text}<br />");
            if (rbMale.Checked)
                sb.Append($"Gender: Male<br />");
            else if (rbFemale.Checked)
                sb.Append($"Gender: Female<br />");
            else if (rbTrans.Checked)
                sb.Append($"Gender: Transgender<br />");
            if (rbVeg.Checked)
                sb.Append($"Eating Habbit: Vegetarian<br />");
            else if (rbNonVeg.Checked)
                sb.Append($"Eating Habbit: Non-Vegetarian<br />");
            else if (rbVegan.Checked)
                sb.Append($"Eating Habbit: Vegan<br />");
            List<string> list = new List<string>();
            if (cbPlaying.Checked)
                list.Add("Playing Games");
            if (cbReading.Checked)
                list.Add("Reading Books");
            if (cbWatching.Checked)
                list.Add("Watching Movies");
            if (cbPainting.Checked)
                list.Add("Drawing & Painting");
            if (list.Count > 0)
                sb.Append($"Hobbies: {String.Join(", ", list)}");
            lblMsg.Text = sb.ToString();
        }
    }
}