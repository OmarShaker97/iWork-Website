using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class Viewapp : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {



    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        string username = (string)Session["username"];
        String Title = TextBox1.Text;
        SqlCommand cmd = new SqlCommand("viewapp", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@title", Title));
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