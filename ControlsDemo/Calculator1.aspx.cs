using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemo
{
    public partial class Calculator1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
            {
                txtNum1.Focus();
            }
        }

        protected void Buttons_Click(object sender, EventArgs e)
        {
            int Num1 = int.Parse(txtNum1.Text);
            int Num2 = int.Parse(txtNum2.Text);
            int result = 0;
            Button b = sender as Button;
            if (b.ID == "btnAdd")
                result = Num1 + Num2;
            else if (b.ID == "btnSub")
                result = Num1 - Num2;
            else if (b.ID == "btnMul")
                result = Num1 * Num2;
            else if (b.ID == "btnDiv")
                result = Num1 / Num2;
            else if (b.ID == "btnMod")
                result = Num1 % Num2;
            txtResult.Text = result.ToString();
        }
    }
}