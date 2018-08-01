using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ChooseAJob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("View_Accepted_Jobs", conn);
        string username = (string)Session["username"];
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));

        conn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        conn.Close();
    }

    protected void btn_Go_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("Choose_Job", conn);
        string username = (string)Session["username"];
        string title = txt_title.Text;
        string email = txt_email.Text;
        string dayoff = txt_dayoff.Text;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@title", title));
        cmd.Parameters.Add(new SqlParameter("@email", email));
        cmd.Parameters.Add(new SqlParameter("@dayoff", dayoff));

        int count = 0;
        conn.Open();
        count = cmd.ExecuteNonQuery();
        conn.Close();

        if (count > 0)
        {
            Response.Write("Success.");
        }

        else
        {
            Response.Write("Failed. This might be because the dayoff you entered is invalid or Friday. Make sure that the job title/email company exists in the table as well.");
        }

      
        cmd = new SqlCommand("View_Accepted_Jobs", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));

        conn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        conn.Close();
    }
}