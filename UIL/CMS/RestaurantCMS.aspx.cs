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
    public partial class RestaurantCMS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }


        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowEditing1(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdating1(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            FileUpload fileUpload = row.FindControl("FileUpload_Res") as FileUpload;

            if (fileUpload != null && fileUpload.HasFiles)
            {
                try
                {
                    string extension = Path.GetExtension(fileUpload.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        string fname = Path.GetFileName(fileUpload.FileName);
                        fileUpload.SaveAs(Server.MapPath("../images/restaurant/") + fname);
                        e.NewValues["Res_Img"] = fname;

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

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string fname = "";
                if (resimg_fup.HasFiles)
                {
                    string extension = Path.GetExtension(resimg_fup.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        fname = Path.GetFileName(resimg_fup.FileName);
                        resimg_fup.SaveAs(Server.MapPath("../images/restaurant/") + fname);
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
                    SqlCommand cmd = new SqlCommand("INSERT INTO Restaurant (Res_Id, Res_Name, Res_Loc, Res_Opening_hours, Res_Img) VALUES (@resid, @resname, @resloc,@resoh, @resimg)", con);

                    cmd.Parameters.AddWithValue("@resid", resid_txtbx.Text);
                    cmd.Parameters.AddWithValue("@resname", resname_txtbx.Text);
                    cmd.Parameters.AddWithValue("@resloc", resloc_txtbx.Text);
                    cmd.Parameters.AddWithValue("@resoh", resoh_txtbx.Text);
                    cmd.Parameters.AddWithValue("@resimg", fname);
                    
                    

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
