using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

public partial class EditPicture : System.Web.UI.Page
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
        if (Session["picid"] == null)
        {
            Response.Redirect("pictures.aspx");
            return;
        }
        if (!Page.IsPostBack)
        {

            db d = new db();
            SqlDataReader reader = d.getreader("select pCaption  from photo where pid=" + Session["picid"].ToString());


            while (reader.Read())
            {
                TextBox1.Text = reader.GetString(0);
            }
        }
    }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Cookies["name"].Expires = DateTime.Now.AddDays(-7);
        Response.Cookies["id"].Expires = DateTime.Now.AddDays(-7);
        Response.Redirect("default.aspx");

    }
    protected void btnUpdate_Click(object sender, EventArgs e)
    {
        if (TextBox1.Text.Trim() == "")
        {
            Label1.Text = "You entered an empty caption, please fill the caption field";
        }
        if (Session["picid"]== null)
        {
            Response.Redirect("pictures.aspx");
        }
        string s = TextBox1.Text.Trim();
        db d = new db();
        d.update("UPDATE [familyPhoto].[dbo].[photo] SET  [pCaption] = '"+ s +"' WHERE pid=" + Session["picid"].ToString());

        d.updatenews(Convert.ToInt32(Session["id"]), Session["name"].ToString(), "updated", "the caption of an image");

        Label1.Text = "The caption is updated successfully";
    }
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("pictures.aspx");
    }
}
