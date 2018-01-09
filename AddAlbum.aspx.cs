using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;

public partial class AddAlbum : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
            n.InnerText = Session["name"].ToString();
        else
        {
            Response.Redirect("login.aspx");
            return;
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Cookies["name"].Expires = DateTime.Now.AddDays(-7);
        Response.Cookies["id"].Expires = DateTime.Now.AddDays(-7);
        Response.Redirect("default.aspx");
    }
    protected void Button1_Click(object sender, EventArgs e)
    {
        // empty errors
        Label1.Visible = false;

        //validation
        String name = TextBox1.Text.Trim();
        if (name.Length == 0)
        {
            Label1.Text = "Please enter a valid name as an albums name";
            Label1.Visible = true;
            return;

        }

        String sql = "INSERT INTO [familyPhoto].[dbo].[album] ([albumName] ,[albumOwner] ,[albumDate]) VALUES ('" +  name + "' ," + Session["id"].ToString() + ",'" + DateTime.Today.ToString() +"')";

            
        db d = new db();
        d.update(sql);
        d.updatenews(Convert.ToInt32(Session["id"]),Session["name"].ToString(), "inserted new", "album");

        //get the id of the new album
        SqlDataReader reader = d.getreader("SELECT max([albumid])FROM [familyPhoto].[dbo].[album]");

        int id = 0;
        while (reader.Read())
        {
            Session["albumid"] = reader.GetInt32(0);
        }
       
        Response.Redirect("AddAlbum2.aspx");

    }
}
