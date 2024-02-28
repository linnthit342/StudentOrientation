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
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dataTable1 = GetHomePage1Data();
                if (dataTable1 != null && dataTable1.Rows.Count > 0)
                {
                    rpthomepage1.DataSource = dataTable1;
                    rpthomepage1.DataBind();
                }

                DataTable dataTable2 = GetHomePage2Data();
                if (dataTable2 != null && dataTable2.Rows.Count > 0)
                {
                    rpthomepage2.DataSource = dataTable2;
                    rpthomepage2.DataBind();
                }

                DataTable dataTable3 = GetHomePage3Data();
                if (dataTable3 != null && dataTable2.Rows.Count > 0)
                {
                    rpthomepage3.DataSource = dataTable3;
                    rpthomepage3.DataBind();
                }

                DataTable dataTable4 = GetHomePage4Data();
                if (dataTable4 != null && dataTable4.Rows.Count > 0)
                {
                    rpthomepage4.DataSource = dataTable4;
                    rpthomepage4.DataBind();
                }

                DataTable dataTable5 = GetHpVdData();
                if (dataTable5 != null && dataTable5.Rows.Count > 0)
                {
                    rptvd.DataSource = dataTable5;
                    rptvd.DataBind();
                }
            }
        }

        private DataTable GetHomePage1Data()
        {
            DataTable dataTable = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM Homepage_content1";
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
        private DataTable GetHomePage2Data()
        {
            DataTable dataTable = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM Homepage_content2";
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
        private DataTable GetHomePage3Data()
        {
            DataTable dataTable = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM Homepage_content3";
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
        private DataTable GetHomePage4Data()
        {
            DataTable dataTable = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM Homepage_content4";
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
        private DataTable GetHpVdData()
        {
            DataTable dataTable = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM Homepage_Vd";
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
