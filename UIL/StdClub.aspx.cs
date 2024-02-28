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
    public partial class StdClub : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                
                DataTable dataTable1 = GetIntStdClubData();
                if( dataTable1 != null && dataTable1.Rows.Count > 0)
                {
                    rptinterstdclub.DataSource = dataTable1;
                    rptinterstdclub.DataBind();
                }

                DataTable dataTable = GetStdClubData();
                if (dataTable != null && dataTable.Rows.Count > 0)
                {
                    rptindstdclub.DataSource = dataTable;
                    rptindstdclub.DataBind();
                }


            }
        }


        private DataTable GetStdClubData()
        {
            DataTable dataTable = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM Student_Club";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dataTable);
                }
                catch (Exception ex)
                {
                }
            }

            return dataTable;
        }
        private DataTable GetIntStdClubData()
        {
            DataTable dataTable1 = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM Int_Student_Club";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dataTable1);
                }
                catch (Exception ex)
                {
                }
            }

            return dataTable1;
        }
    }
}