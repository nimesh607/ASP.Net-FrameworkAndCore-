<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation3.aspx.cs" Inherits="ValidationsControls.Validation3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <table align="center">
<caption>Registration Form</caption>
<tr>
<td>Enter Name:</td>
<td><asp:TextBox ID="txtName" runat="server" /></td>
<td><asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name field can't be empty" ForeColor="Red" SetFocusOnError="True" /></td>
</tr>
<tr>
<td>Enter Password</td>
<td><asp:TextBox ID="txtPwd" runat="server" TextMode="Password" /></td>
<td><asp:RequiredFieldValidator ID="rfvPwd" runat="server" ControlToValidate="txtPwd" Display="Dynamic" ErrorMessage="Password field can't be empty" ForeColor="Red" SetFocusOnError="True" /></td>
</tr>
<tr>
<td>Confirm Password:</td>
<td><asp:TextBox ID="txtCPwd" runat="server" TextMode="Password" /></td>
<td><asp:RequiredFieldValidator ID="rfvCpwd" runat="server" ControlToValidate="txtCpwd" Display="Dynamic" ErrorMessage="Confirm Password field can't be empty " ForeColor="Red" SetFocusOnError="True" /><br />
<asp:CompareValidator ID="cvCPwd" runat="server" ControlToCompare="txtPwd" ControlToValidate="txtCPwd" Display="Dynamic" ErrorMessage="Confirm Password Should match with password" ForeColor="Red" SetFocusOnError="True" /></td>
</tr>
<tr>
<td>Date of Birth:</td>
<td>
<asp:TextBox ID="txtDate" runat="server" />
<asp:ImageButton ID="imgDate" runat="server"  ImageUrl="~/Images/Calendar.ico" Width="20" Height="20" ImageAlign="AbsMiddle" ValidationGroup="DateGroup" OnClick="imgDate_Click" />
<asp:Calendar ID="cldDate" runat="server" Visible="false" OnSelectionChanged="cldDate_SelectionChanged" />
</td>
<td>
<asp:CompareValidator ID="cvDTC" runat="server" ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Date should be in MM-dd-YYYY format" ForeColor="Red" Operator="DataTypeCheck" SetFocusOnError="True" /><br />
<asp:CompareValidator ID="cvIsMajor" runat="server" ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="you need 18 years of age to register" ForeColor="Red" Operator="LessThanEqual" SetFocusOnError="True" />
</td>
</tr>
<tr>
<td colspan="2" align="center">
<asp:Button ID="btnRegister" runat="server" Text="Register"  OnClick="btnRegister_Click"/>
</td>
<td>&nbsp;</td>
</tr>
<tr>
<td colspan="3"><asp:Label ID="lblMsg" runat="server" /></td>
</tr>
</table>
    </form>
</body>
</html>
