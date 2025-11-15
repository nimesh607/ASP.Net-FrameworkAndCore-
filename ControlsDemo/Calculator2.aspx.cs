using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemo
{
    public partial class Calculator2 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                txtNum1.Focus();
            }
        }

        protected void Buttons_Command(object sender, CommandEventArgs e)
        {
            int Num1 = int.Parse(txtNum1.Text);
            int Num2 = int.Parse(txtNum2.Text);
            int Num3 = 0;
            switch (e.CommandName)
            {
                case "+":
                    Num3 = Num1 + Num2;
                    break;
                case "-":
                    Num3 = Num1 - Num2;
                    break;
                case "*":
                    Num3 = Num1 * Num2;
                    break;
                case "/":
                    Num3 = Num1 / Num2;
                    break;
                case "%":
                    Num3 = Num1 % Num2;
                    break;
            }
            txtResult.Text = Num3.ToString();
        }
    }
}