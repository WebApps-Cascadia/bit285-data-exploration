<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Default.aspx.cs" Inherits="_Default" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="ddlCategories" runat="server" DataSourceID="Categories" DataTextField="CategoryName" DataValueField="CategoryID">
        </asp:DropDownList>
    
        <asp:AccessDataSource ID="Categories" runat="server" DataFile="~/App_Data/grocertogo.mdb" SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
