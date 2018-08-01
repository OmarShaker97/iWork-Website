using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

public partial class _Default : System.Web.UI.Page
{

    protected void Page_Load(object sender, EventArgs e)
    {
    }

    protected void LoginBTN_Click(object sender, EventArgs e)
    {
        String myDBConnSTR = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection myDBConn = new SqlConnection(myDBConnSTR);

        string username = userNameTXT.Text;
        string password = passwordTXT.Text;
        Int32 userType;
 
        SqlCommand loginCmd = new SqlCommand("Signin", myDBConn);
        loginCmd.CommandType = CommandType.StoredProcedure;
        loginCmd.Parameters.Add(new SqlParameter("@username", username));
        loginCmd.Parameters.Add(new SqlParameter("@password", password));




        try
        {
            myDBConn.Open();
            userType = (Int32)loginCmd.ExecuteScalar();
            myDBConn.Close();

            if (userType != 0)
            {
                Session["username"] = username;
                if (userType == 1)
                     Response.Redirect("RegularEmployees.aspx");

                else if (userType == 2)
                    Response.Redirect("HREmployees.aspx");

                else if (userType == 3)
                    Response.Redirect("Managers.aspx");

                else if (userType == 4)
                    Response.Redirect("JobSeekers.aspx");
            }
            else
                loginValidationLbl.Text = "Wrong Username/Password";
        }
        catch {
            Response.Write("Wrong Username/Password");
        }
       
    }

}
