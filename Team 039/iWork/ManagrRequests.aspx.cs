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

        SqlCommand cmd = new SqlCommand("getallCompanies", conn);
        cmd.CommandType = CommandType.StoredProcedure;

        //string name = "hanan";
        //cmd.Parameters.Add(new SqlParameter("@username", name));

        conn.Open();
        
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();
        cmd.ExecuteNonQuery();


        conn.Close();

    }
}