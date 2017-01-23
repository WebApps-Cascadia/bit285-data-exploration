<%@ Page Language="C#"%>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <title>Categories</title>
    <script runat="server">

        ArrayList Sections;

        protected void Page_Load(object sender, EventArgs e)
        {
            Sections = new ArrayList();
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
        <asp:DropDownList ID="ddlSections" runat="server">
        </asp:DropDownList>
    </form>
</body>
</html>
