using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ViewAttendance : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        String myDBConnSTR = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection myDBConn = new SqlConnection(myDBConnSTR);

        string username = (string)Session["username"];

        SqlCommand cmd = new SqlCommand("Staff_View_Attendance", myDBConn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));

        myDBConn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        myDBConn.Close();
    }
}