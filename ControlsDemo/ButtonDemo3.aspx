<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonDemo3.aspx.cs" Inherits="ControlsDemo.ButtonDemo3" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
    <script>
function Confirmation() {
var Result = confirm("Are you sure of submitting the page to server?");
return Result;
}
    </script>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" OnClientClick="return Confirmation()" />
            <asp:Label ID="Label1" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
