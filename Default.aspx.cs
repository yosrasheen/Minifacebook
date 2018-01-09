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

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        if (Session["id"] != null)
        {
            Response.Redirect("member.aspx");
        }

        if (Request.Cookies["id"] != null)
        {
            //cookie found
          Session["name"]=  Request.Cookies["name"].Value ;
          Session["id"] = Request.Cookies["id"].Value;

          Response.Redirect("member.aspx");
            return;
        }
           


        db d = new db();
        SqlDataReader reader = d.getreader("SELECT top 5  [ntext] FROM [familyPhoto].[dbo].[news] order by ndate desc");
       
        //Fill the news
        // an array to hold the five news
        String[] arr=  new String[5];
        int i = 0;
        while (reader.Read())
        {
            arr[i] = reader.GetString(0);
            i = i + 1;
        }
        TextBox1.Text = arr[0];
        TextBox2.Text = arr[1];
        TextBox3.Text = arr[2];
        TextBox4.Text = arr[3];
        TextBox5.Text = arr[4];

        reader.Close();
        d.myclose();

        // fill the albums
        reader = d.getreader("SELECT top 3 Upper([albumName]) FROM [familyPhoto].[dbo].[album]  order by [albumDate] DESC");

        // an array to hold the five news
        String[] narr = new String[3];
        int ii = 0;
        while (reader.Read())
        {
            narr[ii] = reader.GetString(0);
            ii = ii + 1;
        }

        TextBox6.Text = narr[0];
        TextBox7.Text = narr[1];
        TextBox8.Text = narr[2];
       

        reader.Close();
        d.myclose();
    }
}
