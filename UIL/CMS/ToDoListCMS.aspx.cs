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
    public partial class ToDoListCMS : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            try
            {
                string fname = "";
                if (tdlimg_fup.HasFiles)
                {
                    string extension = Path.GetExtension(tdlimg_fup.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        fname = Path.GetFileName(tdlimg_fup.FileName);
                        tdlimg_fup.SaveAs(Server.MapPath("../tdimg/") + fname);
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
                    SqlCommand cmd = new SqlCommand("INSERT INTO ToDoList (ToDoList_Id, ToDoList_Heading, ToDoList_SubTitle1, ToDoList_SubTitle2, ToDoList_Des1, ToDoList_Des2, ToDoList_Img) VALUES (@tdlid, @tdlhd, @tdlst, @tdlst2, @tdldes1,  @tdldes2, @tdlimg)", con);

                    cmd.Parameters.AddWithValue("@tdlid", tdlid_txtbx.Text);
                    cmd.Parameters.AddWithValue("@tdlhd", tdlhd_txtbx.Text);
                    cmd.Parameters.AddWithValue("@tdlst", tdlst_txtbx.Text);
                    cmd.Parameters.AddWithValue("@tdlst2", tdlst2_txtbx.Text);
                    cmd.Parameters.AddWithValue("@tdldes1", tdldes1_txtbx.Text);
                    cmd.Parameters.AddWithValue("@tdldes2", tdldes2_txtbx.Text);
                    cmd.Parameters.AddWithValue("@tdlimg", fname);



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

        protected void GridView1_RowUpdating(object sender, GridViewUpdateEventArgs e)
        {
            GridViewRow row = GridView1.Rows[e.RowIndex];
            FileUpload fileUpload = row.FindControl("FileUpload_Tdl") as FileUpload;

            if (fileUpload != null && fileUpload.HasFiles)
            {
                try
                {
                    string extension = Path.GetExtension(fileUpload.FileName);
                    if (extension == ".jpg" || extension == ".png" || extension == ".jpeg")
                    {
                        string fname = Path.GetFileName(fileUpload.FileName);
                        fileUpload.SaveAs(Server.MapPath("../tdimg/") + fname);
                        e.NewValues["ToDoList_Img"] = fname;

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


        protected void GridView1_RowEditing(object sender, GridViewEditEventArgs e)
        {
            GridView1.EditIndex = e.NewEditIndex;
            GridView1.DataBind();
        }

        protected void GridView1_RowUpdated(object sender, GridViewUpdatedEventArgs e)
        {
            GridView1.DataBind();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }
    }
}