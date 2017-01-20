<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="Customers" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
    </div>
        <asp:GridView ID="GridView1" runat="server" AutoGenerateColumns="False" DataSourceID="GrocerCustomers">
            <Columns>
                <asp:BoundField DataField="CategoryID" HeaderText="CategoryID" SortExpression="CategoryID" />
                <asp:BoundField DataField="CategoryName" HeaderText="CategoryName" SortExpression="CategoryName" />
            </Columns>
        </asp:GridView>
        <asp:SqlDataSource ID="GrocerCustomers" runat="server" ConnectionString="<%$ ConnectionStrings:GrocerCustomers %>" ProviderName="<%$ ConnectionStrings:GrocerCustomers.ProviderName %>" SelectCommand="SELECT * FROM [Categories]"></asp:SqlDataSource>
    </form>
</body>
</html>
