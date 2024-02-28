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
    public partial class PoliceStationCMS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            FileUpload fileUpload = row.FindControl("FileUpload_Ps") as FileUpload;
            FileUpload fileUpload1 = row.FindControl("FileUpload_Psloc") as FileUpload;

            if ((fileUpload  != null && fileUpload.HasFiles) || (fileUpload1 != null && fileUpload1.HasFiles))
            {
                try
                {
                    string extension = Path.GetExtension(fileUpload.FileName);
                    string extension1 = Path.GetExtension(fileUpload1.FileName);
                    if ((extension == ".jpg" || extension == ".png" || extension == ".jpeg") || (extension1 == ".jpg" || extension1 == ".png" || extension1 == ".jpeg"))
                    {
                        string fname = Path.GetFileName(fileUpload.FileName);
                        string gname = Path.GetFileName(fileUpload1.FileName);
                        fileUpload.SaveAs(Server.MapPath("../images/policestation/") + fname);
                        fileUpload1.SaveAs(Server.MapPath("../images/policestation/") + gname);
                        e.NewValues["PsImg"] = fname;
                        e.NewValues["PsLocImg"] = gname;

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string fname = "", gname = "";
                if (psimg_fup.HasFile)
                {
                    string extension = Path.GetExtension(psimg_fup.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        fname = Path.GetFileName(psimg_fup.FileName);
                        psimg_fup.SaveAs(Server.MapPath("../images/policestation/") + fname);
                    }
                    else
                    {
                        errorlb.Text = "Choose valid Image File for the first upload!";
                        return;
                    }
                }

                if (pslocimg_fup.HasFile)
                {
                    string extension1 = Path.GetExtension(pslocimg_fup.FileName);
                    if (extension1 == ".jpg" || extension1 == ".png" || extension1 == ".jpeg")
                    {
                        gname = Path.GetFileName(pslocimg_fup.FileName);
                        pslocimg_fup.SaveAs(Server.MapPath("../images/policestation/") + gname);
                    }
                    else
                    {
                        errorlb.Text = "Choose valid Image File for the second upload!";
                        return;
                    }
                }

                using (SqlConnection con = new SqlConnection(ConfigurationManager.ConnectionStrings["UONSource"].ConnectionString))
                {
                    con.Open();
                    SqlCommand cmd = new SqlCommand("INSERT INTO Police_Station (PsId, PsName, PsLocation, PsImg, PsLocImg, PsPh) VALUES (@psid, @psname, @psloc, @psimg, @pslocimg, @psph)", con);

                    cmd.Parameters.AddWithValue("@psid", psid_txtbx.Text);
                    cmd.Parameters.AddWithValue("@psname", psname_txtbx.Text);
                    cmd.Parameters.AddWithValue("@psloc", psloc_txtbx.Text);
                    cmd.Parameters.AddWithValue("@psimg", fname);
                    cmd.Parameters.AddWithValue("@pslocimg", gname);
                    cmd.Parameters.AddWithValue("@psph", psph_txtbx.Text);

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

    }
}