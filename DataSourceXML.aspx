<%@ Page Language="c#" %>
<%@ import Namespace="System.Data" %>
<%@ import Namespace="System.Xml" %>
<script runat="server">

    /**
     *	An XML data-driven page using a DataSource Object
     */
    DataSet artist;

    void Page_Load()
    {
        string xmlFilename = Server.MapPath("~/App_Data/artists.xml");
        artist = new DataSet();
        artist.ReadXml(xmlFilename);

        gvArtists.DataSource = artist;
        gvArtists.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string xmlFileName = Server.MapPath("~/App_Data/artists.xml");

        artist = new DataSet();
        artist.ReadXml(xmlFileName);
        DataRow dataRow = artist.Tables[0].NewRow();

        dataRow["name"] = thisName.Text;
        dataRow["nationality"] = thisNationality.Text;
        dataRow["movement"] = thisMovement.Text;
        dataRow["birthdate"] = thisBirthdate.Text;
        artist.Tables[0].Rows.Add(dataRow);

        artist.AcceptChanges();
        gvArtists.DataSource = artist;
        gvArtists.DataBind();
        artist.WriteXml(xmlFileName); 
    }
</script>
<html>
<head>
    <title>Data Grid Control - XML Example</title>
</head> 
<body>
    <form  id="form1" runat="server">
        <asp:GridView id="gvArtists" runat="server"></asp:GridView>
        <br />
        <asp:TextBox ID="thisName" runat="server"></asp:TextBox>Name<br/>
        <asp:TextBox ID="thisNationality" runat="server"></asp:TextBox>Nationality<br />
        <asp:TextBox ID="thisMovement" runat="server"></asp:TextBox>Movement<br />
        <asp:TextBox ID="thisBirthdate" runat="server"></asp:TextBox>Birthdate<br />

        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Send" />
    </form>
</body>
</html>
