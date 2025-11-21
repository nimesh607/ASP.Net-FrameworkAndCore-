<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation5.aspx.cs" Inherits="ValidationsControls.Validation5" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <script>
        function Check50Chars(source, args) {
            if (args.Value.trim().length < 50) {
                args.IsValid = false;
            }
            else {
                args.IsValid = true;
            }
        }

        function PhoneOrEmail(source, args) {
            if (txtPhone.value.trim().length == 0 && txtEmail.value.trim().length == 0) {
                args.IsValid = false;
            }
            else {
                args.IsValid = true;
            }
        }
    </script>
</head>
<body>
    <form id="form1" runat="server">
        <table align="center">
            <caption>Feedback Form</caption>
            <tr>
                <td>Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name field can't be left empty" ForeColor="Red" SetFocusOnError="True" /></td>
            </tr>
            <tr>
                <td>Phone No:</td>
                <td>
                    <asp:TextBox ID="txtPhone" runat="server" /></td>
                <td rowspan="2">
                    <asp:RegularExpressionValidator ID="revPhone" runat="server" ControlToValidate="txtPhone" Display="Dynamic" ErrorMessage="Invalid Mobile No Format" ForeColor="Red" SetFocusOnError="True" ValidationExpression="[6-9]\d{9}" /><br />
                    <asp:CustomValidator ID="cvPhoneOrEmail" runat="server" Display="Dynamic" ForeColor="Red" SetFocusOnError="True" ErrorMessage="You need to either enter phone number or email id " OnServerValidate="cvPhoneOrEmail_ServerValidate" ClientValidationFunction="PhoneOrEmail" /><br />
                    <asp:RegularExpressionValidator ID="revEmail" runat="server" ControlToValidate="txtEmail" Display="Dynamic" ErrorMessage="Invalid Email Id Format" ForeColor="Red" SetFocusOnError="True" ValidationExpression="\w+([-+.']\w+)*@\w+([-.]\w+)*\.\w+([-.]\w+)*" /></td>
            </tr>
            <tr>
                <td>Email Id:</td>
                <td>
                    <asp:TextBox ID="txtEmail" runat="server" /></td>
            </tr>
            <tr>
                <td>Comments:</td>
                <td>
                    <asp:TextBox ID="txtComments" runat="server" Rows="3" TextMode="MultiLine" /></td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvComments" runat="server" ControlToValidate="txtComments" Display="Dynamic" ErrorMessage="Comments can't be left empty" ForeColor="Red" SetFocusOnError="True" /><br />
                    <asp:CustomValidator ID="cvComments" runat="server" ControlToValidate="txtComments" Display="Dynamic" ErrorMessage="Comments should be minimum 50 characters" ForeColor="Red" OnServerValidate="cvComments_ServerValidate" SetFocusOnError="True" ClientValidationFunction="Check50Chars" /></td>
            </tr>
            <tr>
                <td colspan="2" align="center">
                    <asp:Button ID="btnSubmit" runat="server" Text="Submit" /></td>
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
