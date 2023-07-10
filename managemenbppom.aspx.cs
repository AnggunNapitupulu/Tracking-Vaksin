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
    public partial class managemenbppom : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {
            gridView1.DataBind();
        }

        // add button click
        protected void addVaksin(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                Response.Write("<script>alert('Vaksin dengan kode registrasi tersebut sudah ada!');</script>");
            }
            else
            {
                addNewVaksin();
            }
        }
        // update button click
        protected void updateVaksin(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                updateVaksinSyntax();

            }
            else
            {
                Response.Write("<script>alert('Kode Registrasi Vaksin tidak valid');</script>");
            }
        }
        // delete button click
        protected void hapusVaksin(object sender, EventArgs e)
        {
            if (checkIfAuthorExists())
            {
                deleteVaksinSyntax();

            }
            else
            {
                Response.Write("<script>alert('Kode Registrasi Vaksin tidak valid');</script>");
            }
        }
        // GO button click
        protected void Button1_Click(object sender, EventArgs e)
        {
            getAuthorByID();
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


        void deleteVaksinSyntax()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("DELETE from tbl_Vaksin WHERE kode_registrasi_vaksin='" + kodeRegistrasiVaksin.Text.Trim() + "'", con);

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Vaksin Berhasil Dihapus');</script>");
                clearForm();
                //VaksinView.DataBind();

            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }

        void updateVaksinSyntax()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("UPDATE tbl_Vaksin SET merk_vaksin=@merk_vaksin, negara_asal=@negara_asal WHERE kode_registrasi_vaksin='" + kodeRegistrasiVaksin.Text.Trim() + "'", con);

                cmd.Parameters.AddWithValue("@merk_vaksin", namaVaksin.Text.Trim());
                cmd.Parameters.AddWithValue("@negara_asal", asalNegaraVaksin.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Vaksin Berhasil Diupdate');</script>");
                clearForm();
                //VaksinView.DataBind();
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }


        void addNewVaksin()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }

                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_Vaksin(kode_registrasi_vaksin, merk_vaksin, negara_asal) values(@kode_registrasi,@merk_vaksin, @negar_asal)", con);

                cmd.Parameters.AddWithValue("@kode_registrasi", kodeRegistrasiVaksin.Text.Trim());
                cmd.Parameters.AddWithValue("@merk_vaksin", namaVaksin.Text.Trim());
                cmd.Parameters.AddWithValue("@negar_asal", asalNegaraVaksin.Text.Trim());

                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Vaksin Berhasil Ditambah');</script>");
                clearForm();
                //VaksinView.DataBind();
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

                SqlCommand cmd = new SqlCommand("SELECT * from tbl_Vaksin where kode_registrasi_vaksin='" + kodeRegistrasiVaksin.Text.Trim() + "';", con);
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