using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class DeleteRequests : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String myDBConnSTR = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection myDBConn = new SqlConnection(myDBConnSTR);

        string username = (string)Session["username"];

        SqlCommand cmd = new SqlCommand("View_Status", myDBConn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@applicant", username));

        myDBConn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        myDBConn.Close();
    }

    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        string username = (string)Session["username"];
        string start_date = txt_date.Text;
        SqlCommand cmd = new SqlCommand("Delete_Requests", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        conn.Open();
        int count = cmd.ExecuteNonQuery();
        conn.Close();

        if (count > 0) { Response.Write("Success"); }
        else { Response.Write("Failed. You maybe trying to delete a request that does not exist in the records table."); }

        username = (string)Session["username"];
        cmd = new SqlCommand("View_Status", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@applicant", username));

        conn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        conn.Close();
    }
}