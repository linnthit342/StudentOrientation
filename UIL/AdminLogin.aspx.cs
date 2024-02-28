using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data.SqlClient;
using System.Data;

namespace UON.UIL
{
    public partial class AdminLogin : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void ValidateUser(object sender, AuthenticateEventArgs e)
        {
            int AdminId = 0;
            using (SqlConnection con = new SqlConnection("Data Source=uon-acedbserver.database.windows.net;Initial Catalog=UON_ACE;TrustServerCertificate=False;User ID=PyaePhyoZaw;Password=c34!2786"))
            {
                using (SqlCommand cmd = new SqlCommand("Validate_User"))
                {
                    cmd.CommandType = CommandType.StoredProcedure;
                    cmd.Parameters.AddWithValue("@AdminName", Login1.UserName);
                    cmd.Parameters.AddWithValue("@Password", Login1.Password);
                    cmd.Connection = con;
                    con.Open();
                    AdminId = Convert.ToInt32(cmd.ExecuteScalar());
                    con.Close();
                }
                switch (AdminId)
                {
                    case -1:
                        Login1.FailureText = "Admin name and/or password is incorrect.";
                        break;
                    case -2:
                        Login1.FailureText = "Invalid Admin!.";
                        break;
                    default:
                        System.Web.Security.FormsAuthentication.RedirectFromLoginPage(Login1.UserName, Login1.RememberMeSet);
                        break;
                }
            }
        }

    }
}