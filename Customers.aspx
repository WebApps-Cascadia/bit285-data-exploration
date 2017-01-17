<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="GrocerCustomers">
            <Columns>
                <asp:BoundField DataField="FirstName" HeaderText="FirstName" SortExpression="FirstName" />
                <asp:BoundField DataField="LastName" HeaderText="LastName" SortExpression="LastName" />
                <asp:BoundField DataField="City" HeaderText="City" SortExpression="City" />
            </Columns>
        </asp:GridView>
        <asp:AccessDataSource ID="GrocerCustomers" runat="server" DataFile="~/App_Data/grocertogo.mdb" SelectCommand="SELECT [FirstName], [LastName], [City] FROM [Customers] ORDER BY [City]"></asp:AccessDataSource>
    <div>
    
    </div>
    </form>
</body>
</html>
