<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ASPDB_Customer_GridView_Editing.aspx.cs" Inherits="Northwind_Customers_Select.ASPDB_Customer_GridView_Editing" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
       <asp:GridView ID="gvCustomers" runat="server" Caption="Customer Details" HorizontalAlign="Center" AutoGenerateColumns="false" OnRowCancelingEdit="gvCustomers_RowCancelingEdit" OnRowDeleting="gvCustomers_RowDeleting" OnRowEditing="gvCustomers_RowEditing" OnRowUpdating="gvCustomers_RowUpdating"  >
        <HeaderStyle BackColor="Yellow"  ForeColor ="Red" />
           <RowStyle BackColor="Tan" ForeColor="Teal"  />
           <AlternatingRowStyle BackColor="Teal" ForeColor="Tan" />
           <Columns>
               <asp:BoundField DataField="Custid" HeaderText="Customer ID" ReadOnly="true" itemstyle-horizontalalign="Center" />
                <asp:BoundField DataField="Name" HeaderText="Name"   />
                <asp:BoundField DataField="Balance" HeaderText="Balance" itemstyle-horizontalalign="Right" />
                <asp:BoundField DataField="City" HeaderText="City"   />
                <asp:CheckBoxField DataField="Status" HeaderText="Is-Active" ReadOnly="true" itemstyle-horizontalalign="Center" />
               <asp:TemplateField HeaderText="Actions" ItemStyle-BackColor ="White" ItemStyle-ForeColor="Blue" ItemStyle-HorizontalAlign="Center">
                   <ItemTemplate>
                       <asp:LinkButton ID="btnEdit" runat="server" Text="Edit" CommandName="Edit" />
                       <asp:LinkButton ID="btnDelete" runat="server" Text="Delete" CommandName="Delete" OnClientClick="return confirm('Are you sure of deleting the record?');"/>
                   </ItemTemplate>
                   <EditItemTemplate>
                       <asp:LinkButton ID="btnUpdate" runat="server" Text="Update" CommandName="Update" />
                       <asp:LinkButton ID="btnCancel" runat="server" Text="Cancel" CommandName="Cancel" />
                       </EditItemTemplate>
               </asp:TemplateField>
           </Columns>
           </asp:GridView>
          <table border="1" align="center">
              <tr style="background-color: aqua">
                  <td style="width: 50px">
                      <asp:TextBox ID="txtCustid" runat="server" Width="80" />
                  </td> 
                  <td style="width: 70px">
                      <asp:TextBox ID="txtName" runat="server" Width="80" />
                  </td>
                  <td style="width: 70px">
                      <asp:TextBox ID="txtBalance" runat="server" Width="80" />
                  </td>
                  <td style="width: 70px">
                      <asp:TextBox ID="txtCity" runat="server" Width="80" />
                  </td>
                  <td style="width: 70px" align="center">
                      <asp:CheckBox ID="cbStatus" runat="server" Width="80" Checked="false"/>
                  </td>
                  <td style="width: 70px; background-color: white" align="center">
                      <asp:LinkButton ID="btnInsert" runat="server" Text="Insert" OnClick="btnInsert_Click" />
                  </td> 
              </tr> 
          </table>
    </form>
</body>
</html>
