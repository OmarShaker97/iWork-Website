using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class JobSeekers : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("View_All_Info", conn);
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

        string backMsg = "Welcome back, " + username;
        Label1.Text = backMsg;
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        Response.Redirect("update.aspx");
    }
}