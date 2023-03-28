﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.Data.SqlClient;

namespace WalletNET1
{
    public partial class ExpenseMainCategory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!Page.IsPostBack)
            {
                bindgrid();
            }
        }
        private string GetConnectionString()
        {
            return System.Configuration.ConfigurationManager.ConnectionStrings["Exp"].ConnectionString;
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(GetConnectionString());
                if(con.State==ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("Insert into tblExpenseType(ExpenseType) values(@ExpenseType)", con);
                cmd.Parameters.AddWithValue("@ExpenseType", TextBox1.Text.Trim());
                int i = 0;
                i = cmd.ExecuteNonQuery();
                if(i>=1)
                {
                    Response.Write("<script>alert('Record Saved Successfully')</script>");
                    TextBox1.Text = string.Empty;
                    TextBox1.Focus();
                }
                else 
                {
                    Response.Write("<script>alert('Record Not Saved... Error')</script>");
                }
                con.Close();
                bindgrid(); ///////////////// no seen in video 3
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('Something wrong!+" + ex.Message + "')</script>");
            }
        }

        protected void bindgrid()
        {
            SqlConnection con = new SqlConnection(GetConnectionString());
            if (con.State == ConnectionState.Closed)
            {
                con.Open();
            }
            SqlDataAdapter da = new SqlDataAdapter("select * from tblExpenseType", con);
            DataTable dt = new DataTable();
            da.Fill(dt);

            if(dt.Rows.Count>0)
            {
                GridView1.DataSource = dt;
                GridView1.DataBind();
            }
            else
            {
                Response.Write("<script>alert('Record Not Found ... Error')</script>");
            }
        }
    }
}