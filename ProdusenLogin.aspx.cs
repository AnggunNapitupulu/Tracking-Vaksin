﻿using System;
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
    public partial class BPMNLogin : System.Web.UI.Page
    {
        string strcon = ConfigurationManager.ConnectionStrings["con"].ConnectionString;

        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void BPMNLogin_Click(object sender, EventArgs e)
        {
            try
            {
                SqlConnection con = new SqlConnection(strcon);
                if (con.State == ConnectionState.Closed)
                {
                    con.Open();

                }
                SqlCommand cmd = new SqlCommand("select * from tbl_BPMN_Login where username='" + username.Text.Trim() + "' AND password='" + password.Text.Trim() + "'", con);
                SqlDataReader dr = cmd.ExecuteReader();
                if (dr.HasRows)
                {
                    while (dr.Read())
                    {
                        Response.Write("<script>alert('Login Berhasil');</script>");
                        Session["role"] = "bpmn";
                    }
                    Response.Redirect("managemenProdusen.aspx");
                }
                else
                {
                    Response.Write("<script>alert('Akun BPMN anda Tidak Terdaftar, silahkan kontek developer');</script>");
                }
            }
            catch (Exception ex)
            {

            }
        }
    }
}