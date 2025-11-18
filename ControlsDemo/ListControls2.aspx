<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ListControls2.aspx.cs" Inherits="ControlsDemo.ListControls2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center" border="1">
                <caption>Product Catalog</caption>
                <tr>
                    <td align="center">
                        <asp:DropDownList ID="DropDownList1" runat="server" /></td>
                    <td align="center">
                        <asp:ListBox ID="ListBox1" runat="server" SelectionMode="Multiple" AutoPostBack="false" /></td>
                    <td align="center">
                        <asp:RadioButtonList ID="RadioButtonList1" runat="server" /></td>
                    <td align="center">
                        <asp:CheckBoxList ID="CheckBoxList1" runat="server" /></td>
                </tr>
                
                <tr>
                    <td align="center">
                        <asp:Button ID="Button1" runat="server" Text="Show Selected Product" OnClick="Button1_Click" /></td>
                    <td align="center">
                        <asp:Button ID="Button2" runat="server" Text="Show Selected Products" OnClick="Button2_Click" /></td>
                    <td align="center">
                        <asp:Button ID="Button3" runat="server" Text="Show Selected Product" OnClick="Button3_Click" /></td>
                    <td align="center">
                        <asp:Button ID="Button4" runat="server" Text="Show Selected Products" OnClick="Button4_Click" /></td>
                </tr>
                <tr>
                    <td>
                        <asp:Label ID="Label1" runat="server" ForeColor="Red" /></td>
                    <td>
                        <asp:Label ID="Label2" runat="server" ForeColor="Red" /></td>
                    <td>
                        <asp:Label ID="Label3" runat="server" ForeColor="Red" /></td>
                    <td>
                        <asp:Label ID="Label4" runat="server" ForeColor="Red" /></td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
