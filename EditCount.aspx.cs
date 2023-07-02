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
    public partial class EditCount : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-H1QVC0P;Initial Catalog=ScriptingLab;Integrated Security=True");
        private int selectedId;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                if (!int.TryParse(Request.QueryString["id"], out selectedId))
                {
                    // Invalid ID, handle the error
                    Response.Redirect("ViewDetails.aspx");
                }
                else
                {
                    LoadCountFromDatabase();
                }
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            int count = GetCountFromTextBox();

            if (count != -1)
            {
                UpdateCountInDatabase(count);
                Response.Redirect("ViewDetails.aspx");
            }
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Response.Redirect("ViewDetails.aspx");
        }

        private void LoadCountFromDatabase()
        {
            
            {
                string query = "SELECT Count_Num FROM Count_Number WHERE C_ID = @ID";

                SqlCommand command = new SqlCommand(query, con);
                command.Parameters.AddWithValue("@ID", selectedId);

                con.Open();
                SqlDataReader reader = command.ExecuteReader();

                if (reader.Read())
                {
                    int count = Convert.ToInt32(reader["Count_Num"]);
                    SetCountInTextBox(count);
                }
                else
                {
                    // Record not found, handle the error
                    Response.Redirect("ViewDetails.aspx");
                }

                reader.Close();
            }
        }

        private int GetCountFromTextBox()
        {
            int count;
            if (!int.TryParse(TextBox1.Text, out count))
            {
                // Invalid count, handle the error
                Label2.Text = "Invalid count value.";
                Label2.Visible = true;
                return -1;
            }

            return count;
        }

        private void SetCountInTextBox(int count)
        {
            TextBox1.Text = count.ToString();
        }

        private void UpdateCountInDatabase(int count)
        {
                string query = "UPDATE Count_Number SET  Count_Num= @CountValue WHERE C_ID = @ID";

                SqlCommand command = new SqlCommand(query, con);
                command.Parameters.AddWithValue("@CountValue", count);
                command.Parameters.AddWithValue("@ID", selectedId);

                con.Open();
                command.ExecuteNonQuery();
            
        }
    }
}