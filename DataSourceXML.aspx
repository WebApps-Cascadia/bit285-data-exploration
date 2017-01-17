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

    }
</script>
<html>
<head>
    <title>Data Grid Control - XML Example</title>
</head>
<body>
    <form  id="form1" runat="server">
        <asp:GridView id="gvArtists" runat="server"></asp:GridView>
<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
    </form>
</body>
</html>
