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
        DataTable myTable = Artists.Tables[0];
        DataRow newRow = myTable.NewRow();
        newRow["name"] = TextBox1.Text;
        newRow["nationality"] = TextBox2.Text;
        newRow["movement"] = TextBox3.Text;
        newRow["birthdate"] = TextBox4.Text;


        myTable.Rows.Add(newRow);
        gvArtists.DataBind();

        TextBox1.Text = "";
        TextBox2.Text = "";
        TextBox3.Text = "";
        TextBox4.Text = "";

    }
</script>
<html>
<head>
    <title>Data Grid Control - XML Example</title>
</head>
<body>
    <form  id="form1" runat="server">
        <asp:GridView id="gvArtists" runat="server"></asp:GridView>
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="add" />
        <br />
        <asp:TextBox ID="TextBox1" runat="server" placeholder="name"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox2" runat="server" placeholder="nationality"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox3" runat="server" placeholder="movement"></asp:TextBox>
        <br />
        <asp:TextBox ID="TextBox4" runat="server" placeholder="birthdate"></asp:TextBox>
        
    </form>
</body>
</html>
