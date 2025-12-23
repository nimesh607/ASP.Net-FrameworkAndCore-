<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Northwind_Customers_GridView_Paging.aspx.cs" Inherits="Northwind_Customers_Select.Northwind_Customers_GridView_Paging" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:GridView ID="gvCustomers" runat="server" Caption="Customer Details" HorizontalAlign="Center" AllowPaging="true" PageSize="7" OnSorting="gvCustomers_Sorting" />
    </form>
</body>
</html>
