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

public partial class contactUs : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["name"] != null)
        {
            n.InnerText = " " + Session["name"].ToString();
        }
        else
        {
            n.InnerText = " Guest";
        }
    }
    protected void btnSend_Click(object sender, EventArgs e)
    {
        String subject, com;
        txtComment.ReadOnly = false;
        txtSubject.ReadOnly = false;
        subject=txtSubject.Text;
        com=txtComment.Text;

        if ((subject.Length == 0) || (com.Trim().Length == 0))
        {
            Label1.Text = "Enter a subject and comment Please";
            txtSubject.Text = "";
            txtComment.Text = "";
            txtSubject.Focus();

        }
        else
        {
            Label1.Text = "";
            int id =0;
            if (Session["id"] != null)
            {
           id= int.Parse(Session["id"].ToString());
            }

            //add to db
           db d = new db();
           d.update("INSERT INTO [familyPhoto].[dbo].[contact] ([subject],[comment],[memid])VALUES ('" + subject + "' , '"+ com +"' ," + id + ")");
           if (Session["id"] == null)
           {
               d.updatenews(0, "Guest", "inserted new", "comment");
           }
           else
           {
               d.updatenews(Convert.ToInt32(Session["id"]), Session["name"].ToString(), "inserted new", "comment");
           }
           txtComment.ReadOnly = true;
           txtSubject.ReadOnly = true;
           Label1.Text = "Your comment is sent successfully move to another page please.";
           btnSend.Enabled = false;
        }
    }
}
