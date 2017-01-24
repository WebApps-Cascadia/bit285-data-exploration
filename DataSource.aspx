<%@ Page Language="C#"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Data_Exploration</title>
    <script runat="server">
        protected void Page_Load(object sender, EventArgs e)
        {
            ArrayList Sections = new ArrayList();
            Sections.Add("Organic Produce");
            Sections.Add("Baking");
            Sections.Add("Soups");
            Sections.Sort();

            ddlSections.DataSource = Sections;
            ddlSections.DataBind();

        }

        protected void ddlSections_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
</script>
</head>
<body>
    <form id="form1" runat="server">
    <div>
    
        <asp:DropDownList ID="ddlSections" runat="server" OnSelectedIndexChanged="ddlSections_SelectedIndexChanged" >
        </asp:DropDownList>
    
    </div>
    <p>
        &nbsp;</p>
        <asp:DropDownList ID="DDLCatagories" runat="server" DataSourceID="AccessDataSource1" DataTextField="CategoryName" DataValueField="CategoryID">
        </asp:DropDownList>
        <asp:AccessDataSource ID="AccessDataSource1" runat="server" DataFile="~/App_Data/grocertogo.mdb" SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>
        </form>
    </body>
</html>
