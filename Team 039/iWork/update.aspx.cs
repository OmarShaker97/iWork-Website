using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class update : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string username = (string)Session["username"];

        SqlCommand cmd = new SqlCommand("View_All_Info", conn);
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
        string password = TextBox2.Text;
        string personal_email = TextBox3.Text;
        string birth_date = TextBox4.Text;
        string years_of_experience = TextBox5.Text;
        string first_name = TextBox6.Text;
        string middle_name = TextBox7.Text;
        string last_name = TextBox8.Text;
      

        SqlCommand cmd = new SqlCommand("Edit_Personal_Info", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@password", password));
        cmd.Parameters.Add(new SqlParameter("@personal_email", personal_email));
        cmd.Parameters.Add(new SqlParameter("@years_of_experience", years_of_experience));
        cmd.Parameters.Add(new SqlParameter("@birth_date", birth_date));
        cmd.Parameters.Add(new SqlParameter("@first_name", first_name));
        cmd.Parameters.Add(new SqlParameter("@middle_name", middle_name));
        cmd.Parameters.Add(new SqlParameter("@last_name", last_name));





        cmd.CommandType = CommandType.StoredProcedure;

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();


        cmd = new SqlCommand("View_All_Info", conn);
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


protected void TextBox3_TextChanged(object sender, EventArgs e)
    {

    }
}