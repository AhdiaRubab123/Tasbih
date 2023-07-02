using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Tasbih
{
    public partial class StartTasbeeh : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-H1QVC0P;Initial Catalog=ScriptingLab;Integrated Security=True");

        protected int Count
        {
            get { return (int)(ViewState["Count"] ?? 0); }
            set { ViewState["Count"] = value; }
        }
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (!IsPostBack)
            //{
            //    TextBox1.Text = Count.ToString();
            //}
            if (IsPostBack)
            {
                string targetControl = Request.Form["__EVENTTARGET"];
                if (targetControl == "Button3")
                {
                    IncrementCount();
                }
            }

        }
        private void IncrementCount()
        {
            // Increment the count value here
            // You can modify this method according to your existing code for count increment
            // For example:
            int count = Convert.ToInt32(TextBox1.Text);
            count++;
            TextBox1.Text = count.ToString();
        }
        protected void Button1_Click(object sender, EventArgs e)
        {
            if (!Authenticate())
            {
                return;
            }
            //string query = "INSERT INTO TableName (Column1, Column2, Column3) VALUES (@Value1, @Value2, @Value3)";

            con.Open();
            SqlCommand cmd = new SqlCommand("INSERT INTO Count_Number values(" + TextBox1.Text + ")", con);
            cmd.ExecuteNonQuery();
            con.Close();
            TextBox1.Text = "0";
            //Response.Redirect("Home.aspx");

        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Count = 0;
            TextBox1.Text = Count.ToString();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Count++;
            TextBox1.Text = Count.ToString();
        }
        bool Authenticate()
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text))
                return false;
            else return true;
        }

        protected void Button4_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewDetails.aspx");
        }
    }
}