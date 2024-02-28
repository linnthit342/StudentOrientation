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
    public partial class ThingsToDoCMS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            FileUpload fileUpload = row.FindControl("FileUpload_TTD") as FileUpload;

            if (fileUpload != null && fileUpload.HasFiles)
            {
                try
                {
                    string extension = Path.GetExtension(fileUpload.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        string fname = Path.GetFileName(fileUpload.FileName);
                        fileUpload.SaveAs(Server.MapPath("../images/") + fname);
                        e.NewValues["TTDImg"] = fname;

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
                if (ttdimg_fup.HasFiles)
                {
                    string extension = Path.GetExtension(ttdimg_fup.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        fname = Path.GetFileName(ttdimg_fup.FileName);
                        ttdimg_fup.SaveAs(Server.MapPath("../images/") + fname);
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
                    SqlCommand cmd = new SqlCommand("INSERT INTO ThingsToDo (TTDId, TTDTitle, TTDdesc, TTDImg) VALUES (@ttdid, @ttdtitle, @ttddesc, @ttdimg)", con);

                    cmd.Parameters.AddWithValue("@ttdid", ttdid_txtbx.Text);
                    cmd.Parameters.AddWithValue("@ttdtitle", ttdtitle_txtbx.Text);
                    cmd.Parameters.AddWithValue("@ttddesc", ttddesc_txtbx.Text);
                    cmd.Parameters.AddWithValue("@ttdimg", fname);



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
                    SqlCommand cmd = new SqlCommand("INSERT INTO ThingsToDo_List (TTDLId, TTDLTitle, TTDL_Sub_Title, TTDdesc) VALUES (@ttdlid, @ttdltitle, @ttdlsub, @ttddesc)", con);

                    cmd.Parameters.AddWithValue("@ttdlid", ttdlid_txtbx.Text);
                    cmd.Parameters.AddWithValue("@ttdltitle", ttdltitle_txtbx.Text);
                    cmd.Parameters.AddWithValue("@ttdlsub", ttdlsub_txtbx.Text);
                    cmd.Parameters.AddWithValue("@ttddesc", ttdldesc_txtbx.Text);
                    



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
