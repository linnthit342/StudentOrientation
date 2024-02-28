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
    public partial class FunAndFree : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                DataTable dataTable = GetThingsData();
                if (dataTable != null && dataTable.Rows.Count > 0)
                {
                    rptThings.DataSource = dataTable;
                    rptThings.DataBind();
                }
                DataTable dataTable1 = GetThingsListData();
                if (dataTable1 != null && dataTable1.Rows.Count > 0)
                {
                    rptList.DataSource = dataTable1;
                    rptList.DataBind();
                }
            }

        }
        private DataTable GetThingsListData()
        {
            DataTable dataTable = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM ThingsToDo_List";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dataTable);
                }
                catch (Exception ex)
                {}
            }

            return dataTable;
        }
        private DataTable GetThingsData()
        {
            DataTable dataTable = new DataTable();
            string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                try
                {
                    connection.Open();
                    string query = "SELECT * FROM ThingsToDo";
                    SqlCommand cmd = new SqlCommand(query, connection);
                    SqlDataAdapter da = new SqlDataAdapter(cmd);
                    da.Fill(dataTable);
                }
                catch (Exception ex)
                {}
            }

            return dataTable;
        }
    }
}