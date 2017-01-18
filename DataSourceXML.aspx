<%@ Page Language="c#" %>

<%@ Import Namespace="System.Data" %>
<%@ Import Namespace="System.Xml" %>
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

    private void CreateNewRow()
    {
        DataTable nArtists = new DataTable();
        
        
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        DataRow newRow = Artists.Tables[0].NewRow();

        newRow["name"] = "Nas";
        newRow["nationality"] = "African American";
        newRow["movement"] = "Hip-Hop";
        newRow["birthdate"] = "Unknown";
        Artists.Tables[0].Rows.Add(newRow);
        gvArtists.DataBind();
    }
</script>
<html>
<head>
    <title>Data Grid Control - XML Example</title>
</head>
<body>
    <form id="form1" runat="server">
        <asp:GridView ID="gvArtists" runat="server"></asp:GridView>
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
