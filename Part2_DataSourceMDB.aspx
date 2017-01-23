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

        // Create a DataSet to represent the database as a collection of DataTables
        DataSet Grocer = new DataSet();

        // OLE Database Adapter connects to Microsoft Access Databases
        string strCommand = "SELECT ProductName , UnitPrice  FROM Products";
        OleDbDataAdapter odbProductsAdapter = new OleDbDataAdapter(strCommand, objConnection);

        // Fill the empty DataSet Object with the contents of the command object
        // NOTE: a data set can hold many tables, call this table "Products"
        odbProductsAdapter.Fill(Grocer, "Products");

        // Attach the data in the Dataset table to DataGrid
        gvProducts.DataSource=Grocer.Tables["Products"].DefaultView;
        gvProducts.DataBind();

        //Add a new GridView called gvCustomers to the ASPX
        //Create a new Command object with SQL to select all columns from the Customers Table

        //Fill the Grocer DataSet with a new Customers table. 

        //Attach new Customers Table to your gvCustomers as its Datasource and bind it

    }

</script>
<html>
<head>
    <title>Data Grid Control example</title>
</head>
<body>
    <form  id="form1" runat="server">
        <asp:GridView id="gvProducts" runat="server"></asp:GridView>

    </form>
</body>
</html>