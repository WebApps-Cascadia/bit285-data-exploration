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

    protected void Button1_Click(object sender, EventArgs e)
    {
        DataRow newRow = Artists.Tables[0].NewRow();

        ////This code manually writes coded data to a new row.
        //newRow["name"] = "Nas";
        //newRow["nationality"] = "African American";
        //newRow["movement"] = "Hip-Hop";
        //newRow["birthdate"] = "Unknown";
        //Artists.Tables[0].Rows.Add(newRow);
        //gvArtists.DataBind();

        //This code adds a new row based on user input from into the text boxs.
        string txt1 = txtName.Text;
        string txt2 = txtNationality.Text;
        string txt3 = txtMovement.Text;
        string txt4 = txtBirthdate.Text;

        newRow["name"] = txt1;
        newRow["nationality"] = txt2;
        newRow["movement"] = txt3;
        newRow["birthdate"] = txt4;
        Artists.Tables[0].Rows.Add(newRow);
        Artists.WriteXml(Server.MapPath("~/App_Data/artists.xml"));
        gvArtists.DataBind();

        //The following if statement is a work in progress. Attempt to not write a blank row to table on button click.
        //if (txt1 == null || txt2 == null || txt3 == null || txt4 == null)
        //{

        //}

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
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtNationality" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtMovement" runat="server"></asp:TextBox>
        <asp:TextBox ID="txtBirthdate" runat="server"></asp:TextBox>
    </form>
</body>
</html>
