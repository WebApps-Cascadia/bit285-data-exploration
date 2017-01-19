using System;
using System.Collections.Generic;
using System.Linq;
using System.Data;
using System.Xml;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DataSourceBonus : System.Web.UI.Page
{
    DataSet Artists;
    protected void Page_Load(object sender, EventArgs e)
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
        newRow["name"] = txtName.Text;
        newRow["nationality"] = txtNationality.Text;
        newRow["movement"] = txtMovement.Text;
        newRow["birthdate"] = txtBirthDate.Text;
        Artists.Tables[0].Rows.Add(newRow);

        String xmlFilename = Server.MapPath("~/App_Data/artists.xml");
        Artists.WriteXml(xmlFilename);
        gvArtists.DataBind();
    }
}