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

    private DataSet ReadArtistDataSet()
    {
        DataSet addArtist = new DataSet();

        addArtist.ReadXml(Server.MapPath("~/App_Data/artists.xml"));
        return addArtist;
    }

    private void SaveArtistDataSet(DataSet addArtist)
    {
        if (addArtist != null)
            addArtist.WriteXml(Server.MapPath("~/App_Data/artists.xml"));
    }

    private void PopulateGrid()
    {
        DataSet addArtist = ReadArtistDataSet();
        if(addArtist != null && addArtist.Tables.Count > 0 && addArtist.Tables[0].Rows.Count > 0)
        {
            gvArtists.DataSource = addArtist;
            gvArtists.DataBind();
        }
    }


    protected void btnAddArtist_Click(object sender, EventArgs e)
    {
        DataTable myTable = Artists.Tables[0];
        DataRow newRow = myTable.NewRow();
        DataSet addArtist = ReadArtistDataSet();

            DataRow newArtist = addArtist.Tables[0].NewRow();

            newArtist["name"] = txtName.Text;
            newArtist["nationality"] = txtNationality.Text;
            newArtist["movement"] = txtMovement.Text;
            newArtist["birthdate"] = txtBirthdate.Text;

            //add a row to the data table
            addArtist.Tables[0].Rows.Add(newArtist);

            //save the changes
            addArtist.AcceptChanges();
            SaveArtistDataSet(addArtist);
            PopulateGrid();

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
      <asp:Button ID="btnAddArtist" runat="server" Text="Add Artist" OnClick="btnAddArtist_Click" />
        <br />
        <br />
        <asp:Label ID="Label1" runat="server" Text="Name"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
        <asp:TextBox ID="txtName" runat="server"></asp:TextBox>
        <p>
        <asp:Label ID="Label2" runat="server" Text="Nationality"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtNationality" runat="server"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label3" runat="server" Text="Movement"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtMovement" runat="server"></asp:TextBox>
        </p>
        <p>
        <asp:Label ID="Label4" runat="server" Text="Birthdate"></asp:Label>
        &nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;&nbsp;
            <asp:TextBox ID="txtBirthdate" runat="server"></asp:TextBox>
        </p>
    </form>
</body>
</html>
