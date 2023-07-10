using System;
using System.Collections.Generic;
using System.Configuration;
using System.Data;
using System.Data.SqlClient;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vaksinku
{
    public partial class managemenpemerintah : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            gridView1.DataBind();
        }

        // add button click
        // update button click
        protected void updateVaksin(object sender, EventArgs e)
        {
            if (!checkIfAuthorExists())
            {
                Response.Write("<script>alert('NIK valid');</script>");
            }
            else
            {
                Response.Write("<script>alert('NIK tidak valid');</script>");
            }
        }

        // user defined function
        void getAuthorByID()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                //SqlCommand cmd = new SqlCommand("SELECT * from author_master_tbl where author_id='" + TextBox1.Text.Trim() + "';", con);
                //SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                //da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    // TextBox2.Text = dt.Rows[0][1].ToString();
                }
                else
                {
                    Response.Write("<script>alert('Invalid Author ID');</script>");
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");

            }
        }



        bool checkIfAuthorExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("SELECT * from tbl_List_NIK where NIK='" + NIKMasyarakat.Text.Trim() + "';", con);
                SqlDataAdapter da = new SqlDataAdapter(cmd);
                DataTable dt = new DataTable();
                da.Fill(dt);

                if (dt.Rows.Count >= 1)
                {
                    return true;
                }
                else
                {
                    return false;
                }


            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
                return false;
            }
        }

        void clearForm()
        {
            //TextBox1.Text = "";
            //TextBox2.Text = "";
        }

        protected void SqlDataSource1_Selecting(object sender, SqlDataSourceSelectingEventArgs e)
        {

        }
    }
}