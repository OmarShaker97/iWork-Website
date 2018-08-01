using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ApplyBusinessRequests : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("Apply_For_Business_Requests", conn);
        string username = (string)Session["username"];
        string start_date = txt_startdate.Text;
        string end_date = txt_enddate.Text;
        string destination = txt_destination.Text;
        string purpose = txt_purpose.Text;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@start_date", start_date));
        cmd.Parameters.Add(new SqlParameter("@end_date", end_date));
        cmd.Parameters.Add(new SqlParameter("@destination", destination));
        cmd.Parameters.Add(new SqlParameter("@purpose", purpose));

        int count = 0;
        conn.Open();
        try { count = cmd.ExecuteNonQuery(); }
        catch { Response.Write("Failed. This might be because you exceeded the number of annual leaves allowed. Make sure that date format is correct. You also can not apply for a request when its applied period overlaps with another request you applied for before."); }
        conn.Close();

        if (count > 0)
        {
            Response.Write("Success.");
        }

        else
        {
            Response.Write("Failed. This might be because you exceeded the number of annual leaves allowed. Make sure that date format is correct.  You also can not apply for a request when its applied period overlaps with another request you applied for before.");
        }
    }

    protected void txt_startdate_TextChanged(object sender, EventArgs e)
    {

    }
}