<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validations4.aspx.cs" Inherits="ValidationsControls.Validations4" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center">
            <caption>Company Registration Form</caption>
            <tr>
                <td>Company Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Company Name Field can't be empty" ForeColor="Red" SetFocusOnError="True" /></td>
            </tr>
            <tr>
                <td>Contact No:</td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" /></td>
                <td>
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Phone No. can be either a landline or mobile" ForeColor="Red" SetFocusOnError="True" ValidationExpression="^\d{6,8}$|^[6-9]\d{9}$" /></td>
            </tr>
            <tr>
                <td>Email Id:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" /></td>
                <td>
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Invalid Email Id format" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /></td>
            </tr>
            <tr>
                <td>Website Url:</td>
                <td>
                    <asp:TextBox ID="txtUrl" runat="server" /></td>
                <td>
                    <asp:RegularExpressionValidator ID="revUrl" runat="server" ControlToValidate="txtUrl" Display="Dynamic" ErrorMessage="Invalid Internet Url" ForeColor="Red" SetFocusOnError="True" ValidationExpression="http(s)?://([\w-]+\.)+[\w-]+(/[\w- ./?%&amp;=]*)?" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnRegister" runat="server" Text="Register" OnClick="btnRegister_Click" /></td>
                <td>&nbsp;</td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblMsg" runat="server" /></td>
            </tr>
        </table>
    </form>
</body>
</html>
