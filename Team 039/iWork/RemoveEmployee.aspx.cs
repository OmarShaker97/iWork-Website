using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class RemoveEmployee : System.Web.UI.Page    
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("AllProjects", conn);
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

    protected void Delete_Employee(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("Remove_Regular_Employees", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        string username = (string)Session["username"];
        String regular_employee = TextBox2.Text;
        String project_name = TextBox3.Text;




        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@regular_employee", regular_employee));
        cmd.Parameters.Add(new SqlParameter("@project_name", project_name));

        conn.Open();
        Int32 count = (Int32) cmd.ExecuteNonQuery();
        conn.Close();


        cmd = new SqlCommand("AllProjects", conn);
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.CommandType = CommandType.StoredProcedure;

        conn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        conn.Close();

        if (count == 1)
        {
            Session["Username"] = username;
            Response.Write("Passed");
            //Response.Redirect("Companies", true);
        }
        else
        {
            Response.Write("Failed");
        }
    }



   
}