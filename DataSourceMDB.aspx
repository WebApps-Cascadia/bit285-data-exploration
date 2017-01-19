<%@ Page Language="c#" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Data.OleDb" %>
<script runat="server">

    void Page_Load(object sender, EventArgs e)
    {
    
    // Database Connection via a Connection String
        string strConnect =  @"Provider=Microsoft.Jet.OLEDB.4.0;";
        strConnect += @"Data Source=|DataDirectory|/grocertogo.mdb;";
        strConnect += "Persist Security Info=False";
        OleDbConnection objConnection = new OleDbConnection(strConnect);

        // SQL Command
        string strCommand = "SELECT ProductName , UnitPrice  FROM products";
        OleDbDataAdapter objCommand = new OleDbDataAdapter(strCommand, objConnection);

        // Fill the empty DataSet Object with the contents of the command object
        // NOTE: a data set can hold many tables, call this table "Ian"
        DataSet DataSet1 = new DataSet();
        objCommand.Fill(DataSet1, "Ian");

        // Attach the data in the Dataset table to DataGrid
        GridView1.DataSource=DataSet1.Tables["Ian"].DefaultView;
        GridView1.DataBind();
       


         // Database Connection via a Connection String
        string strConnect2 =  @"Provider=Microsoft.Jet.OLEDB.4.0;";
        strConnect2 += @"Data Source=|DataDirectory|/grocertogo.mdb;";
        strConnect2 += "Persist Security Info=False";
        OleDbConnection objConnection2 = new OleDbConnection(strConnect2);

        // SQL Command
        string strCommand2 = "SELECT FirstName, LastName, Address, City, State, CardNumber FROM customers";
        OleDbDataAdapter objCommand2 = new OleDbDataAdapter(strCommand2, objConnection2);

        // Fill the empty DataSet Object with the contents of the command object
        // NOTE: a data set can hold many tables, call this table "Ian"
        DataSet DataSet2 = new DataSet();
        DataSet2.Tables.Add("felix");
        objCommand2.Fill(DataSet2, "Phil");

        // Attach the data in the Dataset table to DataGrid
        GridView2.DataSource=DataSet2.Tables["Phil"].DefaultView;
        GridView2.DataBind();
    }

</script>
<html>
<head>
    <title>Data Grid Control example</title>
</head>
<body>
    <form  id="form1" runat="server">
        <asp:GridView id="GridView1" runat="server"></asp:GridView>
        <asp:GridView id="GridView2" runat="server"></asp:GridView>
    </form>
</body>
</html>