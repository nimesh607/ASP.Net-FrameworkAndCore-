<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="First.aspx.cs" Inherits="FirstWebForm.First" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
               <%Response.Write(DateTime.Now.ToShortDateString());  %>
       <br />
     <% Response.Write(DateTime.Now.ToLongTimeString()); %>
        </div>
    </form>
</body>
</html>
