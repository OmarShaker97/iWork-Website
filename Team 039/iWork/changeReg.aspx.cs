using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class changeReg : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        string username = (string)Session["username"];

        SqlCommand cmd = new SqlCommand("AllTasks", conn);
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
        string task_name = TextBox1.Text;
        string project_name = TextBox2.Text;
        string regular_employee = TextBox3.Text;

        SqlCommand cmd = new SqlCommand("Change_Reg_Employee", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@task_name", task_name));
        cmd.Parameters.Add(new SqlParameter("@project_name", project_name));
        cmd.Parameters.Add(new SqlParameter("@new_employee", regular_employee));

        cmd.CommandType = CommandType.StoredProcedure;

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();


        cmd = new SqlCommand("AllTasks", conn);
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
}