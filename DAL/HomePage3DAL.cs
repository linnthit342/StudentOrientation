using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Configuration;
using System.Data.SqlClient;
using System.Data;

namespace UON.DAL
{
    public class HomePage3DAL
    {
        private readonly string connectionString = ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString;

        public DataTable GetHomePage3Data()
        {
            DataTable dataTable = new DataTable();

            using (SqlConnection connection = new SqlConnection(connectionString))
            {
                string query = "SELECT * FROM [dbo].[Homepage_content3]";
                SqlCommand command = new SqlCommand(query, connection);

                try
                {
                    connection.Open();
                    SqlDataAdapter adapter = new SqlDataAdapter(command);
                    adapter.Fill(dataTable);
                }
                catch (Exception ex)
                {
                    throw ex;
                }
            }

            return dataTable;
        }
    }

}
