using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace UON.UIL.CMS
{
    public partial class AboutUsCMS : System.Web.UI.Page
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
                    SqlCommand cmd = new SqlCommand("INSERT INTO About (AbtId, AbtHeading, AbtSubHeading, Des) VALUES (@abtid, @abthead,@abtsubhead, @abtdes)", con);

                    cmd.Parameters.AddWithValue("@abtid", TextBox1.Text);
                    cmd.Parameters.AddWithValue("@abthead", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@abtsubhead", TextBox3.Text);
                    cmd.Parameters.AddWithValue("@abtdes", TextBox4.Text);




                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Successfully uploaded!!')</script>");
                    }
                }
            }
            catch (Exception ex)
            {
            }
            GridView1.DataBind();
        }

        protected void BtnMem_Click(object sender, EventArgs e)
        {
            try
            {
                string fname = "";
                if (FileUpload1.HasFiles)
                {
                    string extension = Path.GetExtension(FileUpload1.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        fname = Path.GetFileName(FileUpload1.FileName);
                        FileUpload1.SaveAs(Server.MapPath("../images/Team/") + fname);
                    }
                }


                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Team (TeamId, MemberPhoto, MemberName, MemberRole, UniName, MemberEmail, StdID) VALUES (@teamid, @memphoto, @memname, @memrole, @uniname,  @email, @stdid)", con);

                    cmd.Parameters.AddWithValue("@teamid", memid.Text);
                    cmd.Parameters.AddWithValue("@memname", memname.Text);
                    cmd.Parameters.AddWithValue("@memrole", memrole.Text);
                    cmd.Parameters.AddWithValue("@uniname", uniname.Text);
                    cmd.Parameters.AddWithValue("@email", email.Text);
                    cmd.Parameters.AddWithValue("@stdid", stdid.Text);
                    cmd.Parameters.AddWithValue("@memphoto", fname);



                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Successfully uploaded!!')</script>");
                    }
                }
            }
            catch (Exception ex)
            {
            }
            GridView2.DataBind();
        }

        protected void GridView2_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView2.EditIndex = e.NewEditIndex;
            GridView2.DataBind();
        }

        protected void GridView2_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            GridView2.DataBind();
        }

        protected void GridView2_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView2.Rows[e.RowIndex];
            FileUpload fileUpload = row.FindControl("FileUpload_Team") as FileUpload;

            if (fileUpload != null && fileUpload.HasFiles)
            {
                try
                {
                    string extension = Path.GetExtension(fileUpload.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        string fname = Path.GetFileName(fileUpload.FileName);
                        fileUpload.SaveAs(Server.MapPath("../images/Team/") + fname);
                        e.NewValues["MemberPhoto"] = fname;

                    }
                    else
                    {
                        errorlb.Text = "Choose Image File!";
                    }
                }
                catch (Exception ex)
                {
                    errorlb.Text = ex.Message;
                }
            }
            else
            {
                errorlb.Text = "FileUpload control was not found or no file is selected.";
            }
        }
    }
}