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

        //DataTable MyTable = Artists.Tables[0];
        //DataRow row;
        //row = MyTable.NewRow();

        //row[0] = "Leonardo da Vinci";
        //row[1] = "Italy";
        //row[2] = "High Renaissance";
        //row[3] = "15th April 1452";


        gvArtists.DataSource = Artists;
        gvArtists.DataBind();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataTable MyTable = Artists.Tables[0];
        DataRow row;
        row = MyTable.NewRow();

        row[0] = "Leonardo da Vinci";
        row[1] = "Italy";
        row[2] = "High Renaissance";
        row[3] = "15th April 1452";

        MyTable.Rows.Add(row);

        gvArtists.DataSource = Artists;
        gvArtists.DataBind();

    }
</script>
<html>
<head>
    <title>Data Grid Control - XML Example</title>
</head>
<body>
    <form  id="form1" runat="server">
        <br />
        <asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
        <br />
        <asp:GridView id="gvArtists" runat="server"></asp:GridView>
        
    </form>
</body>
</html>
