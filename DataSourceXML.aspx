<%@ Page Language="c#" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Xml" %>
<script runat="server">

    /**
     *	An XML data-driven page using a DataSource Object
     */
    DataSet Artists; // a 

    void Page_Load()
    {
        String xmlFilename = Server.MapPath("~/App_Data/artists.xml");
        Artists = new DataSet();
        Artists.ReadXml(xmlFilename);

        gvArtists.DataSource = Artists;
        gvArtists.DataBind();
    }
    /*Artists.Tables[0].Rows[2]["birthday"]  This gets the birthdate in the third row of the first table in the Artists Dataset*/
    /*|Dataset.|*/
    /*|--Data Table---|*/
    /*|-------Data Row---------|*/

    /*DataTable myTable = Artist.Table[0];*/
    /*DataRow myRow = myTable.Rows[2];*/
    /*myRow["birthday"];*/


    protected void Button1_Click1(object sender, EventArgs e)
    {
        DataTable myTable = Artists.Tables[0];
        DataRow myRow = myTable.NewRow();
        
        myRow["name"] = txtName.Text;
        myRow["nationality"] = txtNationality.Text;
        myRow["movement"] = txtMovement.Text;
        myRow["birthdate"] = txtBD.Text;

        myTable.Rows.Add(myRow);
        gvArtists.DataBind(); /*Need to bind the data to the GridView Controller after adding information to the xml in order to view it on the html*/
        
    }

</script>
<html>
<head>
    <title>Data Grid Control - XML Example</title>
</head>
<body>
    <form  id="form1" runat="server">
        <asp:GridView id="gvArtists" runat="server"></asp:GridView>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click1" Text="Button" />
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtNationality" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtBD" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtMovement" runat="server"></asp:TextBox>
    </form>
</body>
</html>
