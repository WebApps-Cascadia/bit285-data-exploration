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
        string a = TextBox1.Text;
        string b = TextBox2.Text;
        string c = TextBox3.Text;
        string d = TextBox4.Text;

        DataRow row = Artists.Tables[0].NewRow( );//this creates a new row
       // row["name"] = "Helen";
       // row["nationality"] = "Franken thaler";
       // row["movement"] = "abstract expressionist";
       // row["birthdate"] = "December 12, 1928";
        row["name"] = a;
        row["nationality"] = b;
        row["movement"] = c;
        row["birthdate"] = d;
        Artists.Tables[0].Rows.Add(row);//This adds a new row
        
        String wen = Server.MapPath("~/App_Data/artists.xml");
        Artists.WriteXml(wen);
        gvArtists.DataBind(); 
    }
</script>
<html>
<head>
    <title>Data Grid Control - XML Example</title>
</head>
<body>
    <form  id="form1" runat="server">
        <asp:GridView id="gvArtists" runat="server"></asp:GridView>
        <asp:TextBox ID="TextBox1" runat="server" Text="name"></asp:TextBox>
        <asp:TextBox ID="TextBox2" runat="server" Text="Nationality"></asp:TextBox>
        <asp:TextBox ID="TextBox3" runat="server" Text="Movement"></asp:TextBox>
        <asp:TextBox ID="TextBox4" runat="server" Text="birth date"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
    </form>
</body>
</html>
