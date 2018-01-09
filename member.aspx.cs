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

public partial class member : System.Web.UI.Page
{
    
    protected void Page_Load(object sender, EventArgs e)
    {
        // be sure that is a member
        if (Session["name"] == null)
        {
            Response.Redirect("login.aspx");
            return;
        }

        //fill the name
        n.InnerText= Session["name"].ToString();

    }
   
   
    
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Cookies["name"].Expires = DateTime.Now.AddDays(-7);
        Response.Cookies["id"].Expires = DateTime.Now.AddDays(-7);
        Response.Redirect("default.aspx");
    }
}
