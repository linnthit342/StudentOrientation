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
    public partial class HomeCMS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string fname = "";
                if (VdFile.HasFiles)
                {
                    string extension = Path.GetExtension(VdFile.FileName);
                    if (extension == ".mp4" || extension == ".WebM" || extension == ".Ogg")
                    {
                        fname = Path.GetFileName(VdFile.FileName);
                        if(VdFile.PostedFile.ContentLength < 404857600)
                        {
                            VdFile.SaveAs(Server.MapPath("../Videos/") + fname);
                        }
                        
                    }
                    else
                    {
                        Label3.Text = "Choose valid Video File for the first upload!";
                        return;
                    }
                }


                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Homepage_Vd (HP_Vd_Id, HP_Vd, HP_Vd_Name) VALUES (@hpvdid,@hpvd,@hpvdname)", con);

                    cmd.Parameters.AddWithValue("@hpvdid", TextBox2.Text);
                    cmd.Parameters.AddWithValue("@hpvd", fname);
                    cmd.Parameters.AddWithValue("@hpvdname", TextBox1.Text);
                 
                    int t = cmd.ExecuteNonQuery();
                    if (t > 0)
                    {
                        Response.Write("<script>alert('Successfully uploaded!!')</script>");
                    }
                }
            }
            catch (Exception ex)
            {
                Label3.Text = ex.Message;
            }
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            FileUpload fileUpload = row.FindControl("FileUpload_Vd") as FileUpload;

            if (fileUpload != null && fileUpload.HasFiles)
            {
                try
                {
                    string extension = Path.GetExtension(fileUpload.FileName);
                    if (extension == ".mp4" || extension == ".WebM" || extension == ".Ogg")
                    {
                        string fname = Path.GetFileName(fileUpload.FileName);
                        if (VdFile.PostedFile.ContentLength < 404857600)
                        {
                            fileUpload.SaveAs(Server.MapPath("../Videos/") + fname);
                            e.NewValues["HP_Vd"] = fname;
                        }

                        

                    }
                    else
                    {
                        Label3.Text = "Choose Video File!";
                    }
                }
                catch (Exception ex)
                {
                    Label3.Text = ex.Message;
                }
            }
            else
            {
                Label3.Text = "FileUpload control was not found or no file is selected.";
            }
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void Button2_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Homepage_content1 (HPC1_Id, HPC1_Heading, HPC1_Des) VALUES (@hp1id, @hp1head, @hp1des)", con);

                    cmd.Parameters.AddWithValue("@hp1id", hp1id.Text);
                    cmd.Parameters.AddWithValue("@hp1head", hp1head.Text);
                    cmd.Parameters.AddWithValue("@hp1des", hp1des.Text);




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

        protected void Button4_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Homepage_content2 (HPC2_Id, HPC2_Heading, HPC2_Des) VALUES (@hp2id, @hp2head, @hp2des)", con);

                    cmd.Parameters.AddWithValue("@hp2id", hp2id.Text);
                    cmd.Parameters.AddWithValue("@hp2head", hp2head.Text);
                    cmd.Parameters.AddWithValue("@hp2des", hp2des.Text);




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
            GridView3.DataBind();

        }

        protected void Button3_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Homepage_content3 (HPC3_Id, HPC3_Heading, HPC3_Des) VALUES (@hp3id, @hp3head, @hp3des)", con);

                    cmd.Parameters.AddWithValue("@hp3id", hp3id.Text);
                    cmd.Parameters.AddWithValue("@hp3head", hp3head.Text);
                    cmd.Parameters.AddWithValue("@hp3des", hp3des.Text);




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
            GridView4.DataBind();
        }

        protected void Button5_Click(object sender, EventArgs e)
        {
            try
            {
                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Homepage_content4 (HPC4_Id, HPC4_Heading, HPC4_Des) VALUES (@hp4id, @hp4head, @hp4des)", con);

                    cmd.Parameters.AddWithValue("@hp4id", hp4id.Text);
                    cmd.Parameters.AddWithValue("@hp4head", hp4head.Text);
                    cmd.Parameters.AddWithValue("@hp4des", hp4des.Text);




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
            GridView5.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}