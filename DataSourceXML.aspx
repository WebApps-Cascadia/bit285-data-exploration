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
        DataRow row = Artists.Tables[0].NewRow( );//this creates a new row
       // row["name"] = "H. R. Puffnstuff";
       // row["nationality"] = "America";
       // row["movement"] = "Television";
       // row["birthdate"] = "September 06, 1969";
        row["name"] = TxtName.Text;
        row["nationality"] = TxtNationality.Text;
        row["movement"] = TxtMovement.Text;
        row["birthdate"] = TxtBirthdate.Text;
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
        <asp:GridView ID="gvArtists" runat="server"></asp:GridView>
        <asp:TextBox ID="TxtName" runat="server" Text="name"></asp:TextBox>
        <asp:TextBox ID="TxtNationality" runat="server" Text="Nationality"></asp:TextBox>
        <asp:TextBox ID="TxtMovement" runat="server" Text="Movement"></asp:TextBox>
        <asp:TextBox ID="TxtBirthdate" runat="server" Text="birth date"></asp:TextBox>
        &nbsp;
        <asp:Button ID="Button1" runat="server" OnClick="Button1_Click" Text="Button" />
        <p>
        <asp:Label ID="stuff" runat="server"></asp:Label>
        </p>
    </form>
</body>
</html>
