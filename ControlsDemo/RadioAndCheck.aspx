<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="RadioAndCheck.aspx.cs" Inherits="ControlsDemo.RadioAndCheck" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            Name:<asp:TextBox ID="txtName" runat="server" />
            <br/>
            Gender:
            <!-- In-case of Radio Button control we need to explicitly tell from how many Radio Button’s 1 value should be selected and to do that we need to use “Group Name” attribute and group the Radio Button’s so that 1 Radio Button can be selected from each group.-->

            <asp:RadioButton GroupName="Gender" ID="rbMale" runat="server" Text="Male" />
            <asp:RadioButton GroupName="Gender" ID="rbFemale" runat="server" Text="Female" />
            <asp:RadioButton GroupName="Gender" ID="rbTrans" runat="server" Text="Transgender" />
            <br />
            Eating Habbit:
            <asp:RadioButton GroupName="Habbit" ID="rbVeg" runat="server" Text="Vegetarian" />
            <asp:RadioButton GroupName="Habbit" ID="rbNonVeg" runat="server" Text="Non Vegetarian" />
            <asp:RadioButton GroupName="Habbit" ID="rbVegan" runat="server" Text="Vegan" />
            <br />
            Hobbies:
            <asp:CheckBox ID="cbReading" runat="server" Text="Reading Books" />
            <asp:CheckBox ID="cbPlaying" runat="server" Text="Playing Games" />
            <asp:CheckBox ID="cbWatching" runat="server" Text="Watching Movies" />
            <asp:CheckBox ID="cbPainting" runat="server" Text="Drawing & Painting" />
            <br />
            <asp:Button ID="btnSubmit" runat="server" Text="Submit Values" OnClick="btnSubmit_Click" />
            <br />
            <asp:Label ID="lblMsg" runat="server" ForeColor="Red" />
        </div>
    </form>
</body>
</html>
