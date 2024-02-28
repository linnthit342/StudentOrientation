using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using System.Configuration;
using System.Data.SqlClient;
using System.Diagnostics;

namespace UON.UIL.CMS
{
    public partial class ContactUsCMS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Contact_Page (Contact_Page_Id, Contact_Page_Heading, Contact_Page_Des) VALUES (@cpid, @cphd, @cpdes)", con);

                    cmd.Parameters.AddWithValue("@cpid", cpid_txtbx.Text);
                    cmd.Parameters.AddWithValue("@cphd", cphd_txtbx.Text);
                    cmd.Parameters.AddWithValue("@cpdes", cpdesc_txtbx.Text);




                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Successfully uploaded!!')</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                errorlb.Text = ex.Message;
            }
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Contact_Us (CU_Id, CU_Country, CU_Ph, CU_Fax, CU_Email, CU_Location ) VALUES (@cuid, @cucty, @cuph, @cufax, @cuemail, @culoc)", con);

                    cmd.Parameters.AddWithValue("@cuid", cuid_txtbx.Text);
                    cmd.Parameters.AddWithValue("@cucty", cucty_txtbx.Text);
                    cmd.Parameters.AddWithValue("@cuph", cuph_txtbx.Text);
                    cmd.Parameters.AddWithValue("@cufax", cufax_txtbx.Text);
                    cmd.Parameters.AddWithValue("@cuemail", cuemail_txtbx.Text);
                    cmd.Parameters.AddWithValue("@culoc", culoc_txtbx.Text);




                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Successfully uploaded!!')</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                errorlb.Text = ex.Message;
            }
            GridView2.DataBind();
        }
    }
    }
