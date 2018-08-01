﻿using System;
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
        string username = (string)Session["username"];

        SqlCommand cmd = new SqlCommand("AllApp", conn);
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.CommandType = CommandType.StoredProcedure;



        conn.Open();
        SqlDataAdapter sqlda = new SqlDataAdapter(cmd);
        DataSet ds = new DataSet();
        sqlda.Fill(ds);
        GridView1.DataSource = ds;
        GridView1.DataBind();

        conn.Close();
    }

   
  
    protected void Button1_Click(object sender, EventArgs e)
    {
        string connStr = ConfigurationManager.ConnectionStrings["MyDbConn"].ToString();
        SqlConnection conn = new SqlConnection(connStr);

        string username = (string)Session["username"];
        string Title = TextBox1.Text;
        string applicant = TextBox2.Text;
        //string reason = TextBox3.Text;
        string response = (string)(DropDownList1.SelectedValue);
        SqlCommand cmd = new SqlCommand("Respondtoapp", conn);
        cmd.CommandType = CommandType.StoredProcedure;
        cmd.Parameters.Add(new SqlParameter("@username", username));
        cmd.Parameters.Add(new SqlParameter("@title", Title));
        cmd.Parameters.Add(new SqlParameter("@applicant", applicant));
        cmd.Parameters.Add(new SqlParameter("@response", response));
        //cmd.Parameters.Add(new SqlParameter("@reason", reason));
        cmd.CommandType = CommandType.StoredProcedure;

        conn.Open();
        Int32 count = (Int32)cmd.ExecuteNonQuery();
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

        cmd = new SqlCommand("AllApp", conn);
        cmd.Parameters.Add(new SqlParameter("@username", username));
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