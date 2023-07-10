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
    public partial class RegisterMasyarakat : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void RegistrasiButton_Click(object sender, EventArgs e)
        {
            if (checkMasyarakatExists())
            {
                Response.Write("<script>alert('Anda sudah Mendaftar sebelumnya');</script>");
            }
            else
            {
                singupMasyarakat();
            }
        }

        bool checkMasyarakatExists()
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("SELECT * from tbl_Masyarakat where nik='" + nik_masyarakat.Text.Trim() + "';", con);
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

        void singupMasyarakat()
        {
            //Response.Write("<script>alert('Testing');</script>");
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();
                }
                SqlCommand cmd = new SqlCommand("INSERT INTO tbl_Masyarakat(nama_lengkap, email, jadwal_vaksin,jenis_vaksin,NIK,Pesan,Status, masyarakat_Password)" +
                    "values(@nama_lengkap, @email, @jadwal_vaksin,@jenis_vaksin,@NIK,@Pesan,@Status,@masyarakat_Password)", con);
                cmd.Parameters.AddWithValue("@nama_lengkap", nama_masyarakat.Text.Trim());
                cmd.Parameters.AddWithValue("@jadwal_vaksin", jadwal_vaksin_masyarakat.Text.Trim());
                cmd.Parameters.AddWithValue("@jenis_vaksin", jenis_vaksin_masyarakat.SelectedItem.Value);
                cmd.Parameters.AddWithValue("@email", email_masyarakat.Text.Trim());
                cmd.Parameters.AddWithValue("@NIK", nik_masyarakat.Text.Trim());
                cmd.Parameters.AddWithValue("@Pesan", pesan_masyarakat.Text.Trim());
                cmd.Parameters.AddWithValue("@masyarakat_Password", password_masyarakat.Text.Trim());
                cmd.Parameters.AddWithValue("@Status", "Sudah Mendaftar Vaksin");
                cmd.ExecuteNonQuery();
                con.Close();
                Response.Write("<script>alert('Berhasil Mendaftar Vaksinasi, silahkan login untuk mengecek status vaksinasi anda');</script>");
            }
            catch (Exception ex)
            {
                Response.Write("<script>alert('" + ex.Message + "');</script>");
            }
        }
    }
}