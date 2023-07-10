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
    public partial class UserLogin : System.Web.UI.Page
    {

        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void MasyarakatLogin_onclick(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from tbl_Masyarakat where nik='" + nik_masyarakat.Text.Trim() + "' AND masyarakat_Password='" + password_masyarakat.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Berhasil');</script>");
                        Session["role"] = "user";
                    }
                    Response.Redirect("StatusRegistrasi.aspx");
                }
                else
                {
                    Response.Write("<script>alert('NIK anda belum terdaftar, silahkan mendaftar terlebih dahulu');</script>");
                }

            }
            catch (Exception ex)
            {

            }
        }
    }
}