<%@ Page Language="C#" AutoEventWireup="true" CodeFile="Customers.aspx.cs" Inherits="DataControl1" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.OleDb" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data Grid Control</title>
    <script runat="server">
            void Page_Load(object sender, EventArgs e)
            {
            // Database Connection via a Connection String
            string strConn = @"Provider=Microsoft.Jet.OLEDB.4.0;";
            strConn += @"Data Source=|DataDirectory|/grocertogo.mdb;";
        strConn += "Persist Security Info=False";
        OleDbConnection objConn = new OleDbConnection(strConn);

            // SQL Command
            string strComm = "SELECT FirstName, LastName, City FROM customers ORDER BY City";
            OleDbDataAdapter objComm = new OleDbDataAdapter(strComm, objConn);

            // Fill the empty DataSet Object with the contents of the command object
            // NOTE: a data set can hold many tables, call this table "Ian"
            DataSet D = new DataSet();
            objComm.Fill(D, "Phil");

        // Attach the data in the Dataset table to DataGrid
        GridView1.DataSource=D.Tables["Phil"].DefaultView;
        GridView1.DataBind();
            }
    </script>
</head>
    
<body>
    <form id="form1" runat="server">
    <div>
    <asp:GridView ID="GridView1" runat="server"></asp:GridView>

        <asp:DropDownList ID="DropDownList1" runat="server" DataSourceID="SqlDataSource1" DataTextField="FirstName" DataValueField="FirstName">
        </asp:DropDownList>
        <asp:SqlDataSource ID="SqlDataSource1" runat="server" ConnectionString="<%$ ConnectionStrings:ConnectionString %>" ProviderName="<%$ ConnectionStrings:ConnectionString.ProviderName %>" SelectCommand="SELECT [FirstName], [LastName], [City] FROM [Customers] ORDER BY [City]"></asp:SqlDataSource>

    </div>
    </form>
</body>
</html>
