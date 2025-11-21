<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Validation2.aspx.cs" Inherits="ValidationsControls.Validation2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
    <style type="text/css">
        .auto-style1 {
            width: 100%;
        }
        .auto-style2 {
            height: 23px;
        }
    </style>
</head>
<body>
    <form id="form1" runat="server">
        
        <table align="center">
            <caption>Travel Booking Form</caption>
            <tr>
                <td>Enter Name:</td>
                <td>
                    <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvName" runat="server" ControlToValidate="txtName" Display="Dynamic" ErrorMessage="Name Field Can't be Empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                </td>
            </tr>
            <tr>
                <td>Enter Age:</td>
                <td>
                    <asp:TextBox ID="txtAge" runat="server"  ></asp:TextBox>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvAge" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Age field can't be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="rvAge" runat="server" ControlToValidate="txtAge" Display="Dynamic" ErrorMessage="Travel age should be between 18 to 60" ForeColor="Red" MaximumValue="60" MinimumValue="18" SetFocusOnError="True" Type="Integer"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td>Date of Journey: </td>
                <td>
                    <asp:TextBox ID="txtDate" runat="server" Height="27px"></asp:TextBox>
                    <asp:ImageButton ID="imgDate" runat="server" Height="20px" ImageUrl="~/Images/calendar.png" OnClick="imgDate_Click" style="margin-top: 25px" Width="20px" ValidationGroup="dtgrp" />
                    <asp:Calendar ID="cldDate" runat="server" OnSelectionChanged="cldDate_SelectionChanged" Visible="False"></asp:Calendar>
                </td>
                <td>
                    <asp:RequiredFieldValidator ID="rfvDate" runat="server" ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="Date Field can't be empty" ForeColor="Red" SetFocusOnError="True"></asp:RequiredFieldValidator>
                    <br />
                    <asp:RangeValidator ID="rvDate" runat="server" ControlToValidate="txtDate" Display="Dynamic" ErrorMessage="You can book only with in range of 60 days" ForeColor="Red" SetFocusOnError="True" Type="Date"></asp:RangeValidator>
                </td>
            </tr>
            <tr>
                <td   colspan="2" align="center">
                    <asp:Button ID="btnConfirm" runat="server" Text="Confirm Booking" OnClick="btnConfirm_Click" />
                </td>
                <td class="auto-style2"></td>
            </tr>
            <tr>
                <td colspan="3">
                    <asp:Label ID="lblMsg" runat="server"></asp:Label>
                </td>
            </tr>
        </table>
        
    </form>
</body>
</html>
