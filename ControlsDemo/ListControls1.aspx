<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListControls1.aspx.cs" Inherits="ControlsDemo.ListControls1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:DropDownList ID="DropDownList1" runat="server">
                <asp:ListItem Value="C1">India</asp:ListItem>
                <asp:ListItem Value="C2">Japan</asp:ListItem>
                <asp:ListItem Value="C3">United States</asp:ListItem>
                <asp:ListItem Value="C4">Canada</asp:ListItem>
                <asp:ListItem Value="C5">Germany</asp:ListItem>

            </asp:DropDownList>
            <br />
            <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple">
                <asp:ListItem Text="Kerala" Value="S1" />
                <asp:ListItem Text="Tamilnadu" Value="S2" />
                <asp:ListItem Text="Karnataka" Value="S3" />
                <asp:ListItem Text="Telangana" Value="S4" />
                <asp:ListItem Text="Maharastra" Value="S5" />
                <asp:ListItem Text="Andhra Pradesh" Value="S6" />
            </asp:ListBox>
            <br />
            <asp:RadioButtonList ID="RadioButtonList1" runat="server" BorderStyle="None" RepeatColumns="2" RepeatDirection="Horizontal"></asp:RadioButtonList>
            <br />
            <asp:CheckBoxList ID="CheckBoxList1" runat="server" RepeatColumns="3" RepeatDirection="Horizontal" RepeatLayout="Flow"></asp:CheckBoxList>
        </div>
    </form>
</body>
</html>
