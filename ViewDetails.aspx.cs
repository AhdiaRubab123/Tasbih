using System;
using System.Data;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.Sql;
using System.Data.SqlClient;

namespace Tasbih
{
    public partial class ViewDetails : System.Web.UI.Page
    {
        SqlConnection con = new SqlConnection(@"Data Source=DESKTOP-H1QVC0P;Initial Catalog=ScriptingLab;Integrated Security=True");

        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                LoadCountFromDatabase();
            }
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            Button btnEdit = (Button)sender;
            int selectedId = Convert.ToInt32(btnEdit.CommandArgument);
            EditCount(selectedId);
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            Button btnDelete = (Button)sender;
            int selectedId = Convert.ToInt32(btnDelete.CommandArgument);
            DeleteCount(selectedId);
        }
        protected void Repeater1_ItemCommand(object source, RepeaterCommandEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                Button btnEdit = (Button)e.Item.FindControl("btnEdit");
                Button btnDelete = (Button)e.Item.FindControl("btnDelete");

                btnEdit.CommandArgument = ((DataRowView)e.Item.DataItem)["C_ID"].ToString();
                btnEdit.CommandName = "Edit";
                btnEdit.Click += Button1_Click;

                btnDelete.CommandArgument = ((DataRowView)e.Item.DataItem)["C_ID"].ToString();
                btnDelete.CommandName = "Delete";
                btnDelete.Click += Button2_Click;
            }
        }
        private void LoadCountFromDatabase()
        {
            {
                string query = "SELECT * FROM Count_Number ";

                SqlDataAdapter adapter = new SqlDataAdapter(query, con);
                DataTable dataTable = new DataTable();

                adapter.Fill(dataTable);

                Repeater1.DataSource = dataTable;
                Repeater1.DataBind();
            }
        }
        private void EditCount(int selectedId)
        {
            // Perform the edit operation
            // ...
            // Redirect to the appropriate page
            Response.Redirect("EditCount.aspx?id=" + selectedId);
        }

        private void DeleteCount(int selectedId)
        {

            {
                string query = "DELETE FROM Count_Number WHERE C_ID = @ID";

                SqlCommand command = new SqlCommand(query, con);
                command.Parameters.AddWithValue("@ID", selectedId);

                con.Open();
                command.ExecuteNonQuery();
            }

            LoadCountFromDatabase();
        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }
    }
}