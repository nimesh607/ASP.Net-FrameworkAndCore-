<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Calculator2.aspx.cs" Inherits="ControlsDemo.Calculator2" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <table align ="center">
                <caption>Calculator</caption>
                <tr>
                    <td>Enter 1 <sup>st</sup> Number:</td>
                    <td>
                        <asp:TextBox ID="txtNum1" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Enter 2 <sup>nd</sup> Number:</td>
                    <td>
                        <asp:TextBox ID="txtNum2" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td>Results Obtained:</td>
                    <td>
                        <asp:TextBox ID="txtResult" runat="server"></asp:TextBox>
                    </td>
                </tr>
                <tr>
                    <td colspan="2" align="center">
                        <asp:Button ID="btnAdd" runat="server" Text="Add" OnCommand="Buttons_Command" CommandName="+"/>
                        <asp:Button ID="btnSub" runat="server" Text="Sub" OnCommand="Buttons_Command" CommandName="-"/>
                        <asp:Button ID="btnMul" runat="server" Text="Mul" OnCommand="Buttons_Command" CommandName="*" />
                        <asp:Button ID="btnDiv" runat="server" Text="Div" OnCommand="Buttons_Command" CommandName="/" />
                        <asp:Button ID="btnMod" runat="server" Text="Mod" OnCommand="Buttons_Command" CommandName="%" />
                    </td>
                </tr>
            </table>
        </div>
    </form>
</body>
</html>
