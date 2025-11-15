<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ButtonDemo1.aspx.cs" Inherits="ControlsDemo.ButtonDemo1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            <!-- Demo of Page Submission 
                1)Post Back SUbmission
                2)Cross Page Submission
                
                Page1 => Submitting to Page1 //Postback Submission
                Page1 => Submitting to Page2 //Crosspage Submission
                -->

            <!--Note: By default, Button control submits a page back to itself (Postback) only, and it is also capable of submitting the page to other pages also (Cross Page).Check the code in .cs file--> 
            <!--runat="server" means this control is a server-side control, so the server can access it in code-behind.
                Without runat="server", the control is purely client-side HTML, and the server cannot see or manipulate it.-->
            <asp:Button ID="btnClick1" runat="server" Text="Postback Submission" />
            <asp:LinkButton ID ="btnClick2" runat="server" Text="Crosspage Submission"/>
            <asp:ImageButton ID="ImageButton1" runat="server"  ImageUrl="~/Images/ImageBtn.png" Width="50" Height="100"/>
        </div>
    </form>
</body>
</html>
