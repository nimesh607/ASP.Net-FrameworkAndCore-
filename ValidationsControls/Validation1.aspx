<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation1.aspx.cs" Inherits="ValidationsControls.ValidationControls1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
           Enter Name: <asp:TextBox ID="txtName" runat="server" />
<asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" ForeColor="Red"
ErrorMessage="Can't leave the field empty." Display="Dynamic" SetFocusOnError="true" />
          
            <br />
            Select Country:
            <asp:DropDownList ID="ddlCountries" runat="server">
                <asp:ListItem Text="-Select Country-" Value="NS" />
                <asp:ListItem Text="India" Value="Country1" />
                <asp:ListItem Text="Japan" Value="Country2" />
                <asp:ListItem Text="China" Value="Country3" />
                <asp:ListItem Text="England" Value="Country4" />
                <asp:ListItem Text="America" Value="Country5" />
                <asp:ListItem Text="Australia" Value="Country6" />
            </asp:DropDownList>
            <asp:RequiredFieldValidator ID="rfvCountry" runat="server" ControlToValidate="ddlCountries" ForeColor="Red"
                ErrorMessage="Please select a country." InitialValue="NS" Display="Dynamic" SetFocusOnError="true" />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Data" OnClick="btnSubmit_Click" />
            <br />
            <asp:Label ID="lblMsg" runat="server" />
        </div>
    </form>
</body>
</html>
