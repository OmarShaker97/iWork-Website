using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewProjects : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("Viewprojects", conn);
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

    protected void btn_search_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("Viewtasks", conn);
        string username = (string)Session["username"];
        string project_name = txt_project.Text;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@project_name", project_name));

        conn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        conn.Close();
    }

    protected void btn_projects_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("Viewprojects", conn);
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

    protected void btn_finalize_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("Finalizetask", conn);
        string username = (string)Session["username"];
        string task_name = txt_taskname.Text;
        string project_name = txt_project.Text;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@task_name",task_name));
        cmd.Parameters.Add(new SqlParameter("@project_name", project_name));

        int count = 0;

        conn.Open();
        count = cmd.ExecuteNonQuery();
        conn.Close();

        if (count > 0) {
            Response.Write("Success");
        }
        else {
            Response.Write("Failed. Deadline of this task may have passed or you entered an invalid task name/project name.");
        }

        cmd = new SqlCommand("Viewprojects", conn);
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

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("WorkonTaskAgain", conn);
        string username = (string)Session["username"];
        string task_name = txt_taskname.Text;
        string project_name = txt_project.Text;
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@task_name", task_name));
        cmd.Parameters.Add(new SqlParameter("@project_name", project_name));

        int count = 0;

        conn.Open();
        count = cmd.ExecuteNonQuery();
        conn.Close();

        if (count > 0)
        {
            Response.Write("Success");
        }
        else
        {
            Response.Write("Failed. Deadline of this task may have passed or it may have been reviewed by a manager or you entered an invalid task name/project name.");
        }

        cmd = new SqlCommand("Viewprojects", conn);
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