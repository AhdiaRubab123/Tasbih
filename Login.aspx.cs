using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;
using System.Data;

namespace Tasbih
{
    public partial class Login : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-H1QVC0P;Initial Catalog=ScriptingLab;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {

            bool isEMailOk = false, isPassOk = false;
            if (!Authenticate())
            {
                return;
            }
            string query = "Select * from Registration_Table where EMail=@EMail";
            con.Open();
            SqlCommand cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@EMail", SqlDbType.NVarChar);
            cmd.Parameters["@EMail"].Value = TextBox1.Text;

            SqlDataReader reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                isEMailOk = true;
            }
            con.Close();

            con.Open();
            query = "Select * from Registration_Table where EMail=@EMail AND Password=@password";
            cmd = new SqlCommand(query, con);

            cmd.Parameters.Add("@EMail", SqlDbType.NVarChar);
            cmd.Parameters["@EMail"].Value = TextBox1.Text;

            cmd.Parameters.Add("@password", SqlDbType.NVarChar);
            cmd.Parameters["@password"].Value = TextBox2.Text;

            reader = cmd.ExecuteReader();

            if (reader.HasRows)
            {
                isPassOk = true;
            }

            if (isEMailOk == false)
            {
                Response.Write("Enter a valid EMail");
            }
            else if (isEMailOk == true && isPassOk == false)
            {
                Response.Write("Enter a valid Password");                
            }
            else
            {
                Response.Redirect("index.aspx");
            }
            con.Close();
        }

        bool Authenticate()
        {
            if (string.IsNullOrWhiteSpace(TextBox1.Text) || string.IsNullOrWhiteSpace(TextBox2.Text))
                return false;
            else return true;
        }
    }
}