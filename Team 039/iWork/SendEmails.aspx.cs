using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class SendEmails : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

    }

    protected void btn_send_Click(object sender, EventArgs e)
    {
        String myDBConnSTR = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection myDBConn = new SqlConnection(myDBConnSTR);

        string username = (string)Session["username"];
        string recipient = txt_recipient.Text;
        string subject = txt_subject.Text;
        string body = TextBox1.Text;
        int count;

        SqlCommand cmd = new SqlCommand("send_emails", myDBConn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@sender", username));
        cmd.Parameters.Add(new SqlParameter("@recipient", recipient));
        cmd.Parameters.Add(new SqlParameter("@subject", subject));
        cmd.Parameters.Add(new SqlParameter("@body", body));

        try
        {
            myDBConn.Open();
            count = cmd.ExecuteNonQuery();
            myDBConn.Close();
            Response.Write("Success");
        }
        catch {
            Response.Write("Please enter a valid recipient name.");
        }


      
            
           
    }
}