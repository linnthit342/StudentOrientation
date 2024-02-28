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
    public partial class AcademicSupportCMS : System.Web.UI.Page
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
            FileUpload fileUpload = row.FindControl("FileUpload_AcS") as FileUpload;

            if (fileUpload != null && fileUpload.HasFiles)
            {
                try
                {
                    string extension = Path.GetExtension(fileUpload.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        string fname = Path.GetFileName(fileUpload.FileName);
                        fileUpload.SaveAs(Server.MapPath("../images/Academic/") + fname);
                        e.NewValues["AcSImg"] = fname;

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
            GridView1.DataBind();
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string fname = "";
                if (acsimg_fup.HasFiles)
                {
                    string extension = Path.GetExtension(acsimg_fup.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        fname = Path.GetFileName(acsimg_fup.FileName);
                        acsimg_fup.SaveAs(Server.MapPath("../images/Academic/") + fname);
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
                    SqlCommand cmd = new SqlCommand("INSERT INTO AcademicSupport (AcSId, AcSDes, AcSImg) VALUES (@acsid, @acsdes,  @acsimg)", con);

                    cmd.Parameters.AddWithValue("@acsid", acsid_txtbx.Text);
                    cmd.Parameters.AddWithValue("@acsdes", acsdes_txtbx.Text);
                    cmd.Parameters.AddWithValue("@acsimg", fname);



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