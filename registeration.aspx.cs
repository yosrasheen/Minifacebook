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

public partial class registeration : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
       

        boxDate.Visible = false;
        boxemail.Visible = false;
        boxEmailc.Visible = false;
        boxFN.Visible = false;
        boxln.Visible = false;
        boxpswdc.Visible = false;
       boxun.Visible = false;
        boxpswd.Visible = false;

    }
 
    protected void Button1_Click(object sender, EventArgs e)
    {
        // no error messages
        boxDate.Visible = false;
        boxemail.Visible = false;
        boxEmailc.Visible = false;
        boxFN.Visible = false;
        boxln.Visible = false;
        boxpswdc.Visible = false;
        boxun.Visible = false;
        boxpswd.Visible = false;

        if (!CheckBox1.Checked)
        {
            boxun.InnerText = "You must Accept the agreeement";
            boxun.Visible = true;
            return;
        }

       //read data
        String un = txtUn.Text.Trim();
        String pswd = txtpswd.Text.Trim();
        String pswdc = txtpswdco.Text.Trim();
        String email = txtEmail.Text.Trim();
        String emailc = txtEmailc.Text.Trim();
        String fn = txtfname.Text.Trim();
        String ln = txtlname.Text.Trim();
        String d = ddlDay.SelectedItem.ToString();
        String m = ddlMonth.SelectedItem.ToString();
        String y = ddlYear.SelectedItem.ToString();

        //validation
        if ((un.Length == 0) || (un.Length< 4))
        {
            boxun.InnerText = "Enter a valid user name which is not less that 4 characters";
            boxun.Visible = true;
            return;
        }
        db dd = new db();
        //check for duplicate usernames
        SqlDataReader reader = dd.getreader("SELECT musername FROM [member] where musername='" + un + "'");
        String name="";
        while (reader.Read())
        {
            name = reader.GetString(0);
        }
        if (name != "")
        {
            boxun.InnerText = "This user name is used before , please try another one";
            boxun.Visible = true;
            return;
        }
         if ((pswd.Length == 0)|| (pswd.Length< 8))
         {
            boxpswd.InnerText = "Enter a valid password which is not less that 8 characters";
             boxpswd.Visible = true;
            return;
        }    
        if (pswdc != pswd)
         {
            boxpswdc.InnerText = "The passwords are not matched";
            boxpswdc.Visible = true;
            return;
        }      
            
        if ((email.Length == 0) || (email.Length< 8) ||  (! email.Contains("@")))
            
           {
            boxemail.InnerText = "Enter a valid email address";
            boxemail.Visible = true;
            return;
        }   
         if   (emailc != email) 
         {
         boxEmailc.InnerText = "The emails are not matched";
             boxEmailc.Visible = true;
         return;
         }
        if (fn.Length == 0) 
        {
            boxFN.InnerText = "Enter a valid first name";
            boxFN.Visible = true;
            return;
        }
           if (ln.Length == 0) 
        {
            boxln.InnerText = "Enter a valid last name";
               boxln.Visible = true;
            return;
        }

       

        

        //insert a new member
        dd.update("INSERT INTO [familyPhoto].[dbo].[member]VALUES('" + fn + "','" + ln + "','" + m + "/" + d + "/" + y + "','" + un + "','" + pswd + "','"+ email +"')");

        //get the id to store it in the session
        
        reader = dd.getreader("SELECT mId FROM [member] where musername='" + un + "' and mpassword='" + pswd + "'");

        int id = 0;
        while (reader.Read())
        {
           Session["id"] = reader.GetInt32(0);        }
           Session["name"] = un;

           d.updatenews(Convert.ToInt32(Session["id"]), Session["name"].ToString(), "become a", "member");
        Response.Redirect("member.aspx");


    }
}
