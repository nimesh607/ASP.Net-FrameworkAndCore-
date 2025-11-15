<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="LoginForm.aspx.cs" Inherits="ControlsDemo.LoginForm" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align="center">
                <caption>Login Form(PostBack Example)</caption>
                <tr>
                    <td>EnterName:</td>
                    <td><asp:TextBox ID="txtName" runat="server"/></td>
                </tr>
                <tr>
                    <td>Enter Password:</td>
                    <td><asp:TextBox ID="txtPwd" runat="server" TextMode="Password" MaxLength="16"/></td>
                </tr>
                <tr>
                    <td>Enter Email:</td>
                    <td><asp:TextBox ID="txtEmail" runat="server" TextMode="Email"/></td>
                </tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" OnClick="btnSubmit_Click"/>
                    <asp:Button ID="btnReset" runat="server" Text="Reset" OnClick="btnReset_Click" />
                </td>
                <tr>
<td colspan="2">
<asp:Label ID="lblStatus" runat="server" ForeColor="Red" />
</td>
</tr>
            </table>
        </div>
    </form>
</body>
</html>
