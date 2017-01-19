<%@ Page Language="C#" AutoEventWireup="true" CodeFile="DataSourceBonus.aspx.cs" Inherits="DataSourceBonus" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtNationality" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtMovement" runat="server"></asp:TextBox>
        <br />
        <asp:TextBox ID="txtBirthDate" runat="server"></asp:TextBox>
        <asp:Button ID="Button1" runat="server" Text="Submit" OnClick="Button1_Click" />
        <asp:GridView id="gvArtists" runat="server"></asp:GridView>
    </div>
    </form>
</body>
</html>
