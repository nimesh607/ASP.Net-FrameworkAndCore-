<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ASPDB_Customer_GridView_Customize.aspx.cs" Inherits="Northwind_Customers_Select.ASPDB_Customer_GridView_Customize" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <asp:GridView ID="gvCustomers" runat="server" Caption="Customer Details" HorizontalAlign="Center" AutoGenerateColumns="false" >
             <HeaderStyle BackColor="Navy" ForeColor="White" Font-Bold="True" />
             <Columns>
                 <asp:BoundField DataField="Custid" HeaderText="Cust-ID" ItemStyle-HorizontalAlign="Center" />
                 <asp:BoundField DataField="Name" HeaderText="Name" />
                 <asp:BoundField DataField="Balance" HeaderText="Balance" ItemStyle-HorizontalAlign="Right"  />
                 <asp:BoundField DataField="City" HeaderText="City" />
                 <%--<asp:CheckBoxField DataField="Status" HeaderText="Is-Active" ItemStyle-HorizontalAlign="Center" />--%>
                <asp:TemplateField HeaderText="Is-Active" ItemStyle-HorizontalAlign="Center">
                     <ItemTemplate>
                         <asp:RadioButton ID="rbStatus" runat="server" Enabled="false" Checked='<%# Eval("Status") %>' />
                     </ItemTemplate>
                 </asp:TemplateField>
             </Columns>
             </asp:GridView>
    </form>
</body>
</html>
