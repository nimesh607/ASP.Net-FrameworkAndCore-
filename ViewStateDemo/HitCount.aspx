<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="HitCount.aspx.cs" Inherits="ViewStateDemo.HitCount" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <asp:Button ID="btnCount" runat="server" Text="Hit Count" OnClick="btnCount_Click" />
            <br />
            <asp:Label ID="lblCount" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
