using System;
using System.Data;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;
using System.Data.SqlClient;
using System.IO;

#region dbAccess CLASS

public sealed class dbAccess
{
    /// <summary>
    /// Returns a Byte[] array which represents the database stored image
    /// whos primary key is the same as the img_pk input parameter
    /// </summary>
    public static byte[] GetImageByID(int img_pk)
    {
        //use the web.config to store the connection string, using statement ensure connection always closes
        string connectionString =
        ConfigurationManager.ConnectionStrings["familyPhotoConnectionString"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            try
            {
                SqlCommand command = new SqlCommand("SELECT [pname] FROM [familyPhoto].[dbo].[photo] where [pid]=" + img_pk, connection);
                command.CommandType = CommandType.Text;

                //open connection, and execute stored procedure
                connection.Open();
                byte[] imgdata = (byte[])(command.ExecuteScalar());
                connection.Close();
                return imgdata;
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message, ex);
            }
        }
    }

    /// <summary>
    /// Inserts a new image using the details provided, and will then update the input parameter
    /// img_pk with the correct primary key value from the database, and shall also return the
    /// number of rows affected by the call to this method.
    /// </summary>
    /// <param name="img_pk">The image primary key, the will get assigned value by this method call
    /// as the parameter is passed by Reference</param>
    /// <param name="imgbin">A byte[] array representing the image to be stored</param>
    /// <returns>The number of rows affected by the call to this method</returns>
    public static int SaveImageToDB(byte[] imgbin, String caption, int albumid)
    {
        try
        {
            //use the web.config to store the connection string, using statement ensure connection always closes				
            string connectionString =
       ConfigurationManager.ConnectionStrings["familyPhotoConnectionString"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                SqlCommand command = new SqlCommand("INSERT INTO photo ( pname, pcaption, pAlbum) VALUES ( @img_data, '" + caption + "', " + albumid + " )", connection);
                command.CommandType = CommandType.Text;
                //build params
                SqlParameter param1 = new SqlParameter("@img_data", SqlDbType.Image);
                param1.Value = imgbin;
                command.Parameters.Add(param1);

                //open connection, and execute stored procedure
                connection.Open();
                command.ExecuteNonQuery();
                command.CommandText = "select max(pid) from photo";
                int pk = Convert.ToInt32(command.ExecuteScalar());
                connection.Close();
                return pk;
            }
        }
        catch (SqlException ex)
        {
            throw new Exception(ex.Message, ex);
        }
    }

    /// <summary>
    /// Returns a DataSet which contains all database stored images
    /// </summary>
    /// <returns>A DataSet which contains all database stored images
    /// images</returns>
    public static DataSet GetImages(int i)
    {
        //use the web.config to store the connection string, using statement ensure connection always closes				
        string connectionString =
      ConfigurationManager.ConnectionStrings["familyPhotoConnectionString"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            try
            {
                SqlCommand command = new SqlCommand("SELECT * FROM photo where pAlbum= " + i, connection);
                command.CommandType = CommandType.Text;
                //execute stored procedure and return DataSet
                SqlDataAdapter da = new SqlDataAdapter();
                da.SelectCommand = command;
                DataSet ds = new DataSet();
                da.Fill(ds, "IMAGES");
                return ds;
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message, ex);
            }
        }
    }

    public static String GetCaptionByID(int img_pk)
    {
        //use the web.config to store the connection string, using statement ensure connection always closes
        string connectionString =
        ConfigurationManager.ConnectionStrings["familyPhotoConnectionString"].ConnectionString;

        using (SqlConnection connection = new SqlConnection(connectionString))
        {
            try
            {
                SqlCommand command = new SqlCommand("SELECT [pCaption] FROM [familyPhoto].[dbo].[photo] where [pid]=" + img_pk, connection);
                command.CommandType = CommandType.Text;

                //open connection, and execute stored procedure
                connection.Open();
                String caption = Convert.ToString(command.ExecuteScalar());
                connection.Close();
                return caption;
            }
            catch (SqlException ex)
            {
                throw new Exception(ex.Message, ex);
            }
        }
    }
}
#endregion
