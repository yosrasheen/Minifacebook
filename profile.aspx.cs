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

public partial class profile : System.Web.UI.Page
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

        //load the data
        db d = new db();
        SqlDataReader reader = d.getreader("SELECT [mfname],[mlname],[mpassword],[memail]FROM [familyPhoto].[dbo].[member]where  [mId]= " + Session["id"].ToString());

   
    while (reader.Read())
            {
                txtfn.Text = reader.GetString(0);
                txtln.Text = reader.GetString(1);
                txtpswd.Text = reader.GetString(2);
                txtemail.Text = reader.GetString(3);
                
            }
 }
    protected void btnLogout_Click(object sender, EventArgs e)
    {
        Session.RemoveAll();
        Response.Cookies["name"].Expires = DateTime.Now.AddDays(-7);
        Response.Cookies["id"].Expires = DateTime.Now.AddDays(-7);
        Response.Redirect("default.aspx");
    }
}
