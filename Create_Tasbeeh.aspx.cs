﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Tasbih
{
    public partial class Create_Tasbeeh : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-H1QVC0P;Initial Catalog=ScriptingLab;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!Authenticate())
            {
                return;
            }
            con.Open();
            SqlCommand cmd = new SqlCommand("insert into Counter_Table values('" + TextBox1.Text + "'," + TextBox2.Text + ")", con);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "";
            TextBox2.Text = "";
            Response.Redirect("StartTasbeeh.aspx");

        }
        bool Authenticate()
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text))
                return false;
            else return true;
        }
    }
}