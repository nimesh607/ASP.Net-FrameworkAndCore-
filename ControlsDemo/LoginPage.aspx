<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginPage.aspx.cs" Inherits="ControlsDemo.LoginPage" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
<caption>Login Page</caption>
<tr>
<td>User Name:</td>
<td><asp:TextBox ID="txtName" runat="server" /></td>
</tr>
<tr>
<td>Password:</td>
<td><asp:TextBox ID="txtPwd" runat="server" TextMode="Password" /></td>
</tr>
<tr>
<td colspan="2" align="center">
<asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
<asp:Button ID="btnLogin" runat="server" Text="Login" OnClick="btnLogin_Click" />
</td>
</tr>
</table>
        </div>
    </form>
</body>
</html>
