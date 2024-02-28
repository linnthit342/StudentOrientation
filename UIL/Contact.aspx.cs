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
    public partial class Contact : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dataTable = GetContactUsData();
                if (dataTable != null && dataTable.Rows.Count > 0)
                {
                    rptcontactus.DataSource = dataTable;
                    rptcontactus.DataBind();
                }
            
                DataTable dataTable1 = GetContactPageData();
                if (dataTable1 != null && dataTable1.Rows.Count > 0)
                {
                    rptcontactpage.DataSource = dataTable1;
                    rptcontactpage.DataBind();
                }
            }
        }

        private DataTable GetContactPageData()
        {
            DataTable dataTable = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM Contact_Page";
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
        private DataTable GetContactUsData()
        {
            DataTable dataTable = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM Contact_Us";
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
    }
}
