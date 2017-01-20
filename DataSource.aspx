<%@ Page Language="C#"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Categories</title>
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
    </script>
</head>
<body>
    <form id="form1" runat="server">
    <div>  
        <asp:DropDownList ID="ddlSections" runat="server">
        </asp:DropDownList>
    
        <asp:AccessDataSource ID="ArrayList" runat="server" DataFile="~/App_Data/grocertogo.mdb" SelectCommand="SELECT * FROM [Categories]"></asp:AccessDataSource>
    
    </div>
    </form>
</body>
</html>
