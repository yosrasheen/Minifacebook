using System;
using System.Data;
using System.Data.SqlClient;
using System.Configuration;
using System.Web;
using System.Web.Security;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Web.UI.WebControls.WebParts;
using System.Web.UI.HtmlControls;

/// <summary>
/// Summary description for db
/// </summary>
public class db
{
	public SqlDataReader getreader(String sql)
    {
        // Declare objects
        SqlConnection conn;
        SqlCommand comm;
        SqlDataReader reader;

        // Read the connection string from Web.config
        string connectionString =
        ConfigurationManager.ConnectionStrings["familyPhotoConnectionString"].ConnectionString;

        // Initialize connection
        conn = new SqlConnection(connectionString);

        // Create command
        comm = new SqlCommand(sql);

        comm.Connection = conn;
        conn.Open();
        reader= comm.ExecuteReader();
        return reader;
    }
      
    public void update(String sql)
    {
        // Declare objects
        SqlConnection conn;
        SqlCommand comm;
        
        // Read the connection string from Web.config
        string connectionString =
        ConfigurationManager.ConnectionStrings["familyPhotoConnectionString"].ConnectionString;

        // Initialize connection
        conn = new SqlConnection(connectionString);

        // Create command
        comm = new SqlCommand(sql);
        comm.Connection = conn;

        conn.Open();
        comm.ExecuteNonQuery();
        
    }

    public void myclose()
    {
        string connectionString =
        ConfigurationManager.ConnectionStrings["familyPhotoConnectionString"].ConnectionString;

        // Initialize connection
        SqlConnection conn = new SqlConnection(connectionString);

        if (conn.State == ConnectionState.Open)
            conn.Close();

        

    }
    public String title(string n)
    {
        if (n != null)
        {
            return " " + n;
        }
        else
        {
           return " Guest";
        }
    }
    public void updatenews(int ownerid, String ownerName, String action, String item)
    {

        string sql = "INSERT INTO [familyPhoto].[dbo].[news]([ntext],[nOwner],[nDate]) VALUES ('" + ownerName + " " + action + " " + item + "' , " + ownerid + " ,'" + DateTime.Today + "')";
        
        
        update(sql);
    }
}
