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


        string artistname = "Leonardo da Vinci";
        string artistnationality = "Italian";
        string movement = "Rennissace";
        string birthdate = "2nd May 1519";

        DataRow newArtist = new DataRow(artistname, artistnationality, movement, birthdate);
        Artists.WriteXml(newArtist);

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
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
