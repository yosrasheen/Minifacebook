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

public partial class pictures : System.Web.UI.Page
{

    private int THUMBNAIL_SIZE = 300;
    
    protected void Page_Load(object sender, EventArgs e)
    {

        if (!Page.IsPostBack)
        {
            // validate membership
            if (Session["id"] != null)
                n.InnerText = Session["name"].ToString();
            else
            {
                Response.Redirect("login.aspx");
                return;
            }

            //get the album name and the album owner
            db d = new db();
            SqlDataReader reader = d.getreader("select albumName , albumOwner from album where albumid=" + Session["albumid"].ToString());

            int o = 0;
            while (reader.Read())
            {
                Session["albumname"] = reader.GetString(0);
                o = reader.GetInt32(1);

            }
            // shows the name of the album
            a.InnerText = Session["albumname"].ToString();

            try
            {
                // set the source of the data for the repeater control and bind it
                DataSet dsImgs = dbAccess.GetImages(Convert.ToInt32(Session["albumid"]));

                if (o == Convert.ToInt32(Session["id"]))
                {
                    owner.Visible = true;
                    member.Visible = false;
                    DataList2.DataSource = dsImgs;
                    DataList2.DataBind();
                    DataList2.DataKeyField = dsImgs.Tables[0].Columns[0].ToString();
                }
                else
                {
                    owner.Visible = false;
                    member.Visible = true;
                    DataList1.DataSource = dsImgs;
                    DataList1.DataBind();
                    DataList1.DataKeyField = dsImgs.Tables[0].Columns[0].ToString();
                }

            }

            catch (Exception ex)
            {
                Label1.Text = ex.Message;
                Label1.Visible = true;
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

    protected void btnAdd_Click(object sender, EventArgs e)
    {
        Response.Redirect("Addpic.aspx");
    }

    protected void dlImages_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        System.Web.UI.WebControls.Image img = null;

        // make sure this is an item in the data list (not header etc.)
        if ((e.Item.ItemType == ListItemType.Item) ||
            (e.Item.ItemType == ListItemType.AlternatingItem))
        {
            // get a reference to the image used for the bar in the row
            img = (System.Web.UI.WebControls.Image)
                (e.Item.FindControl("imgThumbnail"));

            // get a reference to the label used for the bar in the row
            Label caption =(System.Web.UI.WebControls.Label)(e.Item.FindControl("label2"));
            HiddenField hf =(System.Web.UI.WebControls.HiddenField)(e.Item.FindControl("hf"));
            //get the img_pk from DataRow being bound
            int img_pk = Convert.ToInt16(
                ((DataRowView)e.Item.DataItem).Row.ItemArray[0].ToString());

            hf.Value = img_pk.ToString();
     
            caption.Text = Convert.ToString(
                ((DataRowView)e.Item.DataItem).Row.ItemArray[2].ToString());

            //tx1.Text = caption.Text; 

            ThumbFromID.THUMBNAIL_SIZE = this.THUMBNAIL_SIZE;
            ThumbFromID.USE_SIZE_FOR_HEIGHT = false;
            // set the source to the page that generates the thumbnail image

            img.ImageUrl = ThumbFromID.PAGE_NAME + "?" + ThumbFromID.IMAGE_ID + "=" + img_pk;
           
            
        }
    }
    
   
    protected void DataList2_ItemCommand(object source,
    DataListCommandEventArgs e)
    {
        if (e.CommandName == "change")
        {
            HiddenField hf = (System.Web.UI.WebControls.HiddenField)(e.Item.FindControl("hf"));
            Session["picid"]=hf.Value;
            Response.Redirect("EditPicture.aspx");
        }
        else if (e.CommandName == "del")
        {
            HiddenField hf = (System.Web.UI.WebControls.HiddenField)(e.Item.FindControl("hf"));
            String picid= hf.Value;
            db d = new db();
            d.update("DELETE FROM [familyPhoto].[dbo].[photo] WHERE pid=" + picid);
            d.updatenews(Convert.ToInt32(Session["id"]), Session["name"].ToString(), "deleted", "a picture");
            Response.Redirect("deletepicture.aspx");
        }
    }


    protected void btnback_Click(object sender, EventArgs e)
    {
        Response.Redirect("albums.aspx");
    }


    protected void dlImages1_ItemDataBound(object sender, DataListItemEventArgs e)
    {
        System.Web.UI.WebControls.Image img = null;

        // make sure this is an item in the data list (not header etc.)
        if ((e.Item.ItemType == ListItemType.Item) ||
            (e.Item.ItemType == ListItemType.AlternatingItem))
        {
            // get a reference to the image used for the bar in the row
            img = (System.Web.UI.WebControls.Image)
                (e.Item.FindControl("imgThumbnail"));

            // get a reference to the label used for the bar in the row
            Label caption = (System.Web.UI.WebControls.Label)(e.Item.FindControl("label2"));
            
            //get the img_pk from DataRow being bound
            int img_pk = Convert.ToInt16(
                ((DataRowView)e.Item.DataItem).Row.ItemArray[0].ToString());

           
            caption.Text = Convert.ToString(
                ((DataRowView)e.Item.DataItem).Row.ItemArray[2].ToString());

            //tx1.Text = caption.Text; 

            ThumbFromID.THUMBNAIL_SIZE = this.THUMBNAIL_SIZE;
            ThumbFromID.USE_SIZE_FOR_HEIGHT = false;
            // set the source to the page that generates the thumbnail image

            img.ImageUrl = ThumbFromID.PAGE_NAME + "?" + ThumbFromID.IMAGE_ID + "=" + img_pk;


        }
    }
}
