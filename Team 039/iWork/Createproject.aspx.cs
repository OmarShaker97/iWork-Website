using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class _Default : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string username = (string)Session["username"];

        SqlCommand cmd = new SqlCommand("AllProject", conn);
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.CommandType = CommandType.StoredProcedure;



        conn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        conn.Close();
    }



    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        string username = (string)Session["username"];
        string name = TextBox1.Text;
        string email = TextBox2.Text;
        string start_date = TextBox3.Text;
        string end_date = TextBox4.Text;
        SqlCommand cmd = new SqlCommand("Newproject", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@name", name));
        cmd.Parameters.Add(new SqlParameter("@email", email));
        cmd.Parameters.Add(new SqlParameter("@start_date", start_date));
        cmd.Parameters.Add(new SqlParameter("@end_date", end_date));
        cmd.CommandType = CommandType.StoredProcedure;

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

       
        cmd = new SqlCommand("AllProject", conn);
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.CommandType = CommandType.StoredProcedure;

        conn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        conn.Close();
    }

    protected void TextBox2_TextChanged(object sender, EventArgs e)
    {

    }
}