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

public partial class login : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Request.Cookies["id"] != null)
        {
            //cookie found
          Session["name"]=  Request.Cookies["name"].Value ;
          Session["id"] = Request.Cookies["id"].Value;

          Response.Redirect("member.aspx");
            return;
        }
    }



    protected void submit_Click(object sender, EventArgs e)
    {
        String name = TextBox1.Text.Trim();
        String password = TextBox2.Text;

        if ((name.Length == 0) || (password.Trim().Length == 0))
        {
            Label1.Text = "Enter a valid user name and password ";
            TextBox1.Text = "";
            TextBox2.Text = "";
            TextBox1.Focus();

        }
        else
        {
            Label1.Text = "";
            
            // check from the database
            // Declare objects
          
            db d = new db();
            SqlDataReader reader = d.getreader("SELECT mId FROM [member] where musername='" + name + "' and mpassword='" + password  + "'");

           ;
            //get the id
            int id = 0;
            while (reader.Read())
            {
                id = reader.GetInt32(0);
                
            }


            //checks the id
            if (id == 0)
            {
                Label1.Text = "Enter a valid user name and password ";
                TextBox1.Text = "";
                TextBox2.Text = "";
                TextBox1.Focus();
            }
            else
            {
                Session["name"] = name;
                Session["id"] = id;
                if (CheckBox1.Checked)
                {
                    Response.Cookies["name"].Value = name;
                    Response.Cookies["id"].Value = id.ToString();

                    Response.Cookies["name"].Expires = DateTime.Now.AddDays(7);
                    Response.Cookies["id"].Expires = DateTime.Now.AddDays(7);

                  }
                else
                {
                    Response.Cookies["name"].Expires = DateTime.Now.AddDays(-7);
                    Response.Cookies["id"].Expires = DateTime.Now.AddDays(-7);

                }
                Response.Redirect("member.aspx");

            }
        }
    }
}
