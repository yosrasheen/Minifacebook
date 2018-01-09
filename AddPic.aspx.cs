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
using System.IO;

public partial class AddPic : System.Web.UI.Page
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

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        
       
        Label1.Visible = false;

        // get the variables
        String caption = TextBox1.Text.Trim();
        try
        {
            string imgContentType = FileUpload1.PostedFile.ContentType;

            //check if an image
            if (imgContentType.ToLower().StartsWith("image"))
            {
                //get the image from upload stream
                System.Drawing.Bitmap b = (System.Drawing.Bitmap)System.Drawing.Image.FromStream(FileUpload1.PostedFile.InputStream);
                
                int img_pk = 0;
                //store the image in database, and also ccheck to see if it was successful, and if so create 
                //a thumnail here of the stored image
           img_pk=dbAccess.SaveImageToDB(BmpToBytes(b),caption, Convert.ToInt32(Session["albumid"]) );

           db d = new db();
           d.updatenews(Convert.ToInt32(Session["id"]), Session["name"].ToString(), "inserted new", "picture");

           Label1.Visible = true;
            
           Label1.Text = "Your image is added to  album successfully";
           TextBox1.Text = "";
            
               
            }
            else
            {
            Label1.Visible = true;
            Label1.Text =("The file is not an image");
            }
        }
        catch (Exception ex)
        {
            Label1.Visible = true;
            Label1.Text = "ERROR: " + ex.Message.ToString();
        }   
    }

    private byte[] BmpToBytes(System.Drawing.Image bmp)
    {
        MemoryStream ms = null;
        byte[] bmpBytes = null;
        try
        {
            ms = new MemoryStream();
            // Save to memory using the Jpeg format
            bmp.Save(ms, System.Drawing.Imaging.ImageFormat.Jpeg);

            // read to end
            bmpBytes = ms.GetBuffer();
        }
        catch (Exception ex)
        {
            return null;
        }
        finally
        {
            bmp.Dispose();
            if (ms != null)
            {
                ms.Close();
            }
        }
        return bmpBytes;
    }

   
    protected void btnBack_Click(object sender, EventArgs e)
    {
        Response.Redirect("pictures.aspx");
    }
}
