using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class Register : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void signupBTN_Click(object sender, EventArgs e)
    {
        String myDBConnSTR = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection myDBConn = new SqlConnection(myDBConnSTR);

        string username = txtUsername.Text;
        string password = txtPassword.Text;
        string PersonalEmail  = txtPersonalEmail.Text;
        string BirthDate = txtBirth.Text;
        string YearsOfExperience = txtExp.Text;
        string FirstName = txtFirst.Text;
        string MiddleName = txtMiddle.Text;
        string LastName = txtLast.Text;
       

        SqlCommand cmd = new SqlCommand("Register", myDBConn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@password", password));
        cmd.Parameters.Add(new SqlParameter("@personal_email", PersonalEmail));
        cmd.Parameters.Add(new SqlParameter("@birth_date", BirthDate));
        cmd.Parameters.Add(new SqlParameter("@years_of_experience", YearsOfExperience));
        cmd.Parameters.Add(new SqlParameter("@first_name", FirstName));
        cmd.Parameters.Add(new SqlParameter("@middle_name", MiddleName));
        cmd.Parameters.Add(new SqlParameter("@last_name", LastName));


        try
        {
            int count;
            myDBConn.Open();
            count = cmd.ExecuteNonQuery();
            myDBConn.Close();

            if (count>0)
            {
                Session["username"] = username;
                Response.Write("Success");
                Response.Redirect("JobSeekers.aspx");
            }
            else
            {
                Response.Write("Failed");
            }
        }
        catch {
            Response.Write("Username already exists. ");
        }
    }
}