using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Vaksinku
{
    public partial class Main : System.Web.UI.MasterPage
    {

        protected void Page_Load(object sender, EventArgs e)
        {
            ManagemenBPMNLink.Visible = false;
            ManagemenBPPOMLink.Visible = false;
            ManagemenPemerintahLink.Visible = false;
            ManagemenRumahSakitLink.Visible = false;
            StatusRegistrasiLink.Visible = false;
            Logout.Visible = false;
            try
            {
                if (Session["role"].Equals(""))
                {
                    ManagemenBPMNLink.Visible = false;
                    ManagemenBPPOMLink.Visible = false;
                    ManagemenPemerintahLink.Visible = false;
                    ManagemenRumahSakitLink.Visible = false;
                    StatusRegistrasiLink.Visible = false;
                    Logout.Visible = false;
                }
                else if (Session["role"].Equals("user"))
                {
                    ManagemenBPMNLink.Visible = false;
                    ManagemenBPPOMLink.Visible = false;
                    ManagemenPemerintahLink.Visible = false;
                    ManagemenRumahSakitLink.Visible = false;
                    StatusRegistrasiLink.Visible = true;
                    Logout.Visible = true;
                }

                else if (Session["role"].Equals("bpmn"))
                {
                    ManagemenBPMNLink.Visible = true;
                    ManagemenBPPOMLink.Visible = false;
                    ManagemenPemerintahLink.Visible = false;
                    ManagemenRumahSakitLink.Visible = false;
                    StatusRegistrasiLink.Visible = false;
                    Logout.Visible = true;
                }
                else if (Session["role"].Equals("pemerintah"))
                {
                    ManagemenBPMNLink.Visible = false;
                    ManagemenBPPOMLink.Visible = false;
                    ManagemenPemerintahLink.Visible = true;
                    ManagemenRumahSakitLink.Visible = false;
                    StatusRegistrasiLink.Visible = false;
                    Logout.Visible = true;
                }
                else if (Session["role"].Equals("bppom"))
                {
                    ManagemenBPMNLink.Visible = false;
                    ManagemenBPPOMLink.Visible = true;
                    ManagemenPemerintahLink.Visible = false;
                    ManagemenRumahSakitLink.Visible = false;
                    StatusRegistrasiLink.Visible = false;
                    Logout.Visible = true;
                }
            }
            catch (Exception ex)
            {

            }
        }

        protected void LogoutButton_Click(object sender, EventArgs e)
        {
            Session["role"] = "";

            ManagemenBPMNLink.Visible = false;
            ManagemenBPPOMLink.Visible = false;
            ManagemenPemerintahLink.Visible = false;
            ManagemenRumahSakitLink.Visible = false;
            StatusRegistrasiLink.Visible = false;
            Logout.Visible = false;
            Response.Redirect("Home.aspx");
        }

    }
}