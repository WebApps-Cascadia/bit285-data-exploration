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

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable table;
        table = Artists.Tables[0];

        DataRow row;
        row = table.NewRow();

        row["name"] = "Banksy";
        row["nationality"] = "English";
        row["movement"] = "Street Art";
        row["birthdate"] = "unknown";
        table.Rows.Add(row);

        gvArtists.DataSource = table;
        gvArtists.DataBind();
    }
</script>
<html>
<head>
    <title>Data Grid Control - XML Example</title>
</head>
<body>
    <form  id="form1" runat="server">
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <asp:GridView id="gvArtists" runat="server"></asp:GridView>
    </form>
</body>
</html>
