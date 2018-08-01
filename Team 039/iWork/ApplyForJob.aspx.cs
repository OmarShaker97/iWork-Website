using System;
using System.Collections;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class ApplyForJob : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView2.Visible = false;
        ApplyQuestions.Visible = false;
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("Get_Jobs", conn);

        conn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        conn.Close();
    }

    protected void btnApply_Click(object sender, EventArgs e)
    {
        String myDBConnSTR = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection myDBConn = new SqlConnection(myDBConnSTR);

        string username = (string) Session["username"];
        string title = txtTitle.Text;
        string code = txtCode.Text;
        string email = txtEmail.Text;
        int count;

        SqlCommand cmd = new SqlCommand("Apply_For_Job", myDBConn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@title", title));
        cmd.Parameters.Add(new SqlParameter("@code", code));
        cmd.Parameters.Add(new SqlParameter("@email", email));


            myDBConn.Open();
            count = cmd.ExecuteNonQuery();
            myDBConn.Close();

            if (count == 1)
            {
                Response.Write("Success");
            }
            else
            {
                Response.Write("Failed. You may have applied to this job before, and your application is still pending or you do not have enough years of experience for this job. Please try later at another time.");
            }
   
    }

    protected void btnViewJobs_Click(object sender, EventArgs e)
    {
        GridView1.Visible = true;
        GridView2.Visible = false;
        ApplyQuestions.Visible = false;
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        SqlCommand cmd = new SqlCommand("Get_Jobs", conn);

        conn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        conn.Close();
    }

    protected void btnViewQuestions_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = true;
        ApplyQuestions.Visible = true;
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        string username = (string)Session["username"];
        string title = txtTitle.Text;
        string code = txtCode.Text;
        string email = txtEmail.Text;
        SqlCommand cmd = new SqlCommand("View_Interview_Questions", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@title", title));
        cmd.Parameters.Add(new SqlParameter("@code", code));
        cmd.Parameters.Add(new SqlParameter("@email", email));

        conn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView2.DataSource = ds;
        GridView2.DataBind();

        conn.Close();
    }


    protected void ApplyQuestions_Click(object sender, EventArgs e)
    {
        GridView1.Visible = false;
        GridView2.Visible = true;
        ApplyQuestions.Visible = true;
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);
        int score = 0;

        string username = (string)Session["username"];
        string title = txtTitle.Text;
        string code = txtCode.Text;
        string email = txtEmail.Text;
        SqlCommand cmd = new SqlCommand("View_Interview_Answers", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@title", title));
        cmd.Parameters.Add(new SqlParameter("@code", code));
        cmd.Parameters.Add(new SqlParameter("@email", email));

        List<Boolean> Answers = new List<Boolean>();

        conn.Open();
        SqlDataReader rdr = cmd.ExecuteReader(CommandBehavior.CloseConnection);
        while (rdr.Read())
        {
            Boolean answer = rdr.GetBoolean(rdr.GetOrdinal("answer"));

            Answers.Add(answer);
        }

        int count = 0;

        foreach (GridViewRow row in GridView2.Rows)
        {
            var YesChkBox = (CheckBox)row.FindControl("Yes");
            var NoChkBox = (CheckBox)row.FindControl("No");


           if (YesChkBox.Checked && !(NoChkBox.Checked)) {
               if (Answers.ElementAt(count) == true) {
                  score += 20;
                     }
}

           if (!(YesChkBox.Checked) && NoChkBox.Checked) {
              if (Answers.ElementAt(count) == false)
              {
                    score += 20;
              }
           }

            count++;
        }

        conn.Close();

        Response.Write("You scored " + score);

        cmd = new SqlCommand("Save_Score", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@title", title));
        cmd.Parameters.Add(new SqlParameter("@code", code));
        cmd.Parameters.Add(new SqlParameter("@email", email));
        cmd.Parameters.Add(new SqlParameter("@score", score));

        conn.Open();
        cmd.ExecuteNonQuery();
        conn.Close();

    }

    protected void Yes_CheckedChanged(object sender, EventArgs e)
    {

    }
}