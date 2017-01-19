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

        string t1 = TextBox1.Text;
        string t2 = TextBox2.Text;
        string t3 = TextBox3.Text;
        string t4 = TextBox4.Text;

        DataRow row = Artists.Tables[0].NewRow( );//this creates a new row
        //row["name"] = "Helen";
        //row["nationality"] = "Frankenthaler";
        //row["movement"] = "abstract expressionist";
        //row["birthdate"] = "December 12, 1928";

        row["name"] = t1;
        row["nationality"] = t2;
        row["movement"] = t3;
        row["birthdate"] = t4;

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
<asp:Button ID="Button1" runat="server" Text="Button" OnClick="Button1_Click" />
<asp:TextBox ID="TextBox1" placeholder="Name" runat="server"></asp:TextBox>
<asp:TextBox ID="TextBox2" placeholder="Nationality" runat="server"></asp:TextBox>
<asp:TextBox ID="TextBox3" placeholder="Movement" runat="server"></asp:TextBox>
<asp:TextBox ID="TextBox4" placeholder="Birthdate" runat="server"></asp:TextBox>
<asp:Button ID="Button2" runat="server" Text="Submit" />
    </form>
</body>
</html>
