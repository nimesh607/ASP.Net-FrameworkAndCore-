<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ColorDialogue.aspx.cs" Inherits="ControlsDemo.ColorDialogue" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div runat="server" id="div1">
            <!--we have properties of text mode=color,date,DateTime,Email etc.by default it is singleLine text input-->
            <!--By textbox is not capable to submit the page to server.you can check without button.only through button click you can change the color.So Asp.Net gives one property AutoPostBack which by default is false .if it is true than there is no need f button and can submit through textbox directly.-->
            <br/>Change Color:<asp:TextBox ID="txtColor1" runat="server" TextMode="Color" OnTextChanged="txtColor1_TextChanged" AutoPostBack="true" />
            <br /><br />
        </div>
        <div runat="server" id="div2">
    <!--we have properties of text mode=color,date,DateTime,Email etc.by default it is singleLine text input-->
    <br/>Change Color:<asp:TextBox ID="TextBox1" runat="server" TextMode="Color" OnTextChanged="txtColor1_TextChanged" />
    <br /><br />
</div>
                <div runat="server" >
    <!--we have properties of text mode=color,date,DateTime,Email etc.by default it is singleLine text input-->
    <br/>Change Color:<asp:TextBox ID="TextBox2" runat="server" TextMode="Color" OnTextChanged="txtColor1_TextChanged" />
    <br /><br />
</div>

         
        <asp:Button ID="btn2" runat="server" Text="Button2"/>
        <asp:Button ID="btn3" runat="server" Text="Button3"/>
    </form>
</body>
</html>
