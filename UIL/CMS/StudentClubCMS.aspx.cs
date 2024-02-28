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
    public partial class StudentClubCMS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            FileUpload fileUpload = row.FindControl("FileUpload_StdC") as FileUpload;

            if (fileUpload != null && fileUpload.HasFiles)
            {
                try
                {
                    string extension = Path.GetExtension(fileUpload.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        string fname = Path.GetFileName(fileUpload.FileName);
                        fileUpload.SaveAs(Server.MapPath("../images/stdclub/") + fname);
                        e.NewValues["Std_Club_Img"] = fname;

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

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string fname = "";
                if (stdcimg_fup.HasFiles)
                {
                    string extension = Path.GetExtension(stdcimg_fup.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        fname = Path.GetFileName(stdcimg_fup.FileName);
                        stdcimg_fup.SaveAs(Server.MapPath("../images/stdclub/") + fname);
                    }
                    else
                    {
                        errorlb.Text = "Choose valid Image File for the first upload!";
                        return;
                    }
                }


                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Student_Club (Std_Club_Id, Std_Club_Name, Std_Club_Des, Std_Club_Img) VALUES (@stdcid, @stdcname, @stdcdes, @stdcimg)", con);

                    cmd.Parameters.AddWithValue("@stdcid", stdcid_txtbx.Text);
                    cmd.Parameters.AddWithValue("@stdcname", stdcname_txtbx.Text);
                    cmd.Parameters.AddWithValue("@stdcdes", stdcdes_txtbx.Text);
                    cmd.Parameters.AddWithValue("@stdcimg", fname);



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
                string fname = "";
                if (intscimg_fup.HasFiles)
                {
                    string extension = Path.GetExtension(intscimg_fup.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        fname = Path.GetFileName(intscimg_fup.FileName);
                        intscimg_fup.SaveAs(Server.MapPath("../images/stdclub/") + fname);
                    }
                    else
                    {
                        errorlb.Text = "Choose valid Image File for the first upload!";
                        return;
                    }
                }


                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Int_Student_Club (Int_Std_Club_Id, Int_Std_Club_Name, Int_Std_Club_Des, Int_Std_Club_Img) VALUES (@intscid, @intscname, @intscdes, @intscimg)", con);

                    cmd.Parameters.AddWithValue("@intscid", intscid_txtbx.Text);
                    cmd.Parameters.AddWithValue("@intscname", intscname_txtbx.Text);
                    cmd.Parameters.AddWithValue("@intscdes", intscdes_txtbx.Text);
                    cmd.Parameters.AddWithValue("@intscimg", fname);



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
            FileUpload fileUpload = row.FindControl("FileUpload_IntStdC") as FileUpload;

            if (fileUpload != null && fileUpload.HasFiles)
            {
                try
                {
                    string extension = Path.GetExtension(fileUpload.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        string fname = Path.GetFileName(fileUpload.FileName);
                        fileUpload.SaveAs(Server.MapPath("../images/stdclub/") + fname);
                        e.NewValues["Int_Std_Club_Img"] = fname;

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