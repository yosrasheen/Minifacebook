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

public partial class Albums : System.Web.UI.Page
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

    protected void btnNew_Click(object sender, EventArgs e)
    {
        Response.Redirect("addalbum.aspx");
    }


    protected void DataList1_ItemCommand(object source,
    DataListCommandEventArgs e)
    {
        if (e.CommandName == "select")
        {
            HiddenField hf = (System.Web.UI.WebControls.HiddenField)(e.Item.FindControl("hf"));
            Session["albumid"] = hf.Value;
            Response.Redirect("pictures.aspx");
        }
        else if (e.CommandName == "Delete")
        {

            HiddenField hf = (System.Web.UI.WebControls.HiddenField)(e.Item.FindControl("hf"));
            String albumid = hf.Value;
            db d = new db();
            d.update("DELETE FROM [familyPhoto].[dbo].[album] WHERE albumid=" + albumid);
            d.updatenews(Convert.ToInt32(Session["id"]), Session["name"].ToString(), "deleted", "an album");
            Response.Redirect("deleteAlbum.aspx");
        }
        if (e.CommandName == "edit")
        {
            HiddenField hf = (System.Web.UI.WebControls.HiddenField)(e.Item.FindControl("hf"));
            Session["albumid"] = hf.Value;
            Response.Redirect("EditAlbum.aspx");
        }
    }

    protected void DataList2_ItemCommand(object source,
      DataListCommandEventArgs e)
    {
        if (e.CommandName == "select")
        {
            HiddenField hf = (System.Web.UI.WebControls.HiddenField)(e.Item.FindControl("hff"));
            Session["albumid"] = hf.Value;
            Response.Redirect("pictures.aspx");
        }
    }

}