using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;
using UON.BLL;

namespace UON.UIL
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dataTable1 = GetAboutData();
                if( dataTable1 != null && dataTable1.Rows.Count > 0)
                {
                    rptAbout.DataSource = dataTable1;
                    rptAbout.DataBind();
                }

                DataTable dataTable = GetTeamData();
                if (dataTable != null && dataTable.Rows.Count > 0)
                {
                    rptTeam.DataSource = dataTable; 
                    rptTeam.DataBind(); 
                }
            }
        }

        // Implement this method to get data from the database
        private DataTable GetTeamData()
        {
            DataTable dataTable = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM Team"; // Assuming ToDoList is the name of the table
                    SqlCommand cmd = new SqlCommand(query, connection);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dataTable);
                }
                catch (Exception ex)
                {
                    // Handle any exceptions here, such as logging or displaying an error message.
                    // For simplicity, we're not handling exceptions in this example.
                }
            }

            return dataTable;
        }
        private DataTable GetAboutData()
        {
            DataTable dataTable1 = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM About"; // Assuming ToDoList is the name of the table
                    SqlCommand cmd = new SqlCommand(query, connection);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dataTable1);
                }
                catch (Exception ex)
                {
                    // Handle any exceptions here, such as logging or displaying an error message.
                    // For simplicity, we're not handling exceptions in this example.
                }
            }

            return dataTable1;
        }
    }
}