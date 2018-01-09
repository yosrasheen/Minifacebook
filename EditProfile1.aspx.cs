using System;
using System.Data;
using System.Configuration;
using System.Collections;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Data.SqlClient;
using System.Web.UI.HtmlControls;

public partial class EditProfile1 : System.Web.UI.Page
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
        if (!Page.IsPostBack)
        {
            //load the data
            db d = new db();
            SqlDataReader reader = d.getreader("SELECT [mfname],[mlname],[mpassword],[memail], [mdob], [musername]FROM [familyPhoto].[dbo].[member]where  [mId]= " + Session["id"].ToString());

            string dt = "";
            while (reader.Read())
            {
                txtfn.Text = reader.GetString(0);
                txtln.Text = reader.GetString(1);
                txtpswd.Text = reader.GetString(2);
                txtemail.Text = reader.GetString(3);

                dt = reader.GetDateTime(4).ToString();
                txtun.Text = reader.GetString(5).Trim();
            }
            txtun.ReadOnly = true;

            String[] s = dt.Split('/');
            ddlMonth.SelectedItem.Text = s[0].ToString();
            ddlDay.SelectedItem.Text = s[1].ToString();
            ddlYear.SelectedItem.Text = s[2].ToString().Substring(0, 4);

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

        Label1.Text="";
        Label1.Visible=false;
        
        String firstn = txtfn.Text;
        String pswd = txtpswd.Text;
        //validation
         if (firstn.Length == 0) 
        {
            Label1.Text = "Enter a valid first name";
            Label1.Visible = true;
            return;
        }
           if (txtln.Text.Length == 0) 
        {
            Label1.Text = "Enter a valid last name";
            Label1.Visible = true;
            return;
        }
        if ((txtemail.Text.Length == 0) || (txtemail.Text.Length< 8) ||  (! txtemail.Text.Contains("@")))
            
           {
            Label1.Text = "Enter a valid email address";
           Label1.Visible = true;
            return;
        }   

        if ((txtun.Text.Length == 0) || (txtun.Text.Length< 4))
        {
            Label1.Text = "Enter a valid user name which is not less that 4 characters";
            Label1.Visible = true;
            return;
        }
        if ((pswd.Length == 0) || (pswd.Length < 8))
         {
            Label1.Text = "Enter a valid password which is not less that 8 characters";
             Label1.Visible = true;
            return;
        }    
       
        String da= ddlMonth.SelectedItem.Text + "/" + ddlDay.SelectedItem.Text + "/" + ddlYear.SelectedItem.Text;
    
        //update the information
        String sql = "UPDATE [familyPhoto].[dbo].[member] SET [mfname] = '" + firstn + "',[mlname] ='" + txtln.Text + "',[mdob] ='" + da + "',[musername] ='" + txtun.Text + "' ,[mpassword] = '" + txtpswd.Text.Trim() + "',[memail] = '" + txtemail.Text + "' WHERE mid= " + Session["id"];

        db d = new db();
        d.update(sql);
        d.updatenews(Convert.ToInt32(Session["id"]), Session["name"].ToString(), "updated", "her/his profile");
        Response.Redirect("editprofile2.aspx");
    }
}
