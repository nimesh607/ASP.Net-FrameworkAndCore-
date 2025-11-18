using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace ControlsDemo
{
    public partial class ListControls1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            RadioButtonList1.Items.Add("Delhi");
            RadioButtonList1.Items.Add("Kolkata");
            RadioButtonList1.Items.Add("Mumbai");
            RadioButtonList1.Items.Add(new ListItem("Chennai", "City4"));
            RadioButtonList1.Items.Add(new ListItem("Bengaluru", "City5"));
            RadioButtonList1.Items.Add(new ListItem("Hyderabad", "City6"));

            /* ListItem color1 = new ListItem("Red", "Color1");
             ListItem color2 = new ListItem("Blue", "Color2");
             ListItem color3 = new ListItem("White", "Color3");
             ListItem color4 = new ListItem("Green", "Color4");
             ListItem color5 = new ListItem("Purple", "Color5");
             ListItem color6 = new ListItem("Magenta", "Color6");
             ListItem[] colors = new ListItem[] { color1, color2, color3, color4, color5, color6 };
             CheckBoxList1.Items.AddRange(colors);*/
            
            //OR

          /*  ListItem[] colors = new ListItem[]
            {
                new ListItem("Red", "Color1"),
                new ListItem("Blue", "Color2"),
                new ListItem("White", "Color3"),
                new ListItem("Green", "Color4"),
                new ListItem("Purple", "Color5"),
                new ListItem("Magenta", "Color6")
            };
            CheckBoxList1.Items.AddRange(colors);*/

            //OR

            CheckBoxList1.Items.AddRange(new ListItem[] {
            new ListItem("Red", "Color1"),
            new ListItem("Blue", "Color2"),
            new ListItem("White", "Color3"),
            new ListItem("Green", "Color4"),
            new ListItem("Purple", "Color5"),
            new ListItem("Magenta", "Color6")
            });
        }
    }
}