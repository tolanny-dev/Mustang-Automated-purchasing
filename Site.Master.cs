using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace SMSU_PO
{
    public partial class SiteMaster : MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //if (Page.Title != "Home")
            //{
            MyNavBar.EnableViewState = false;
            //    }
            //Session["User"] = "Ashewo";
            currentUsrSession.Text = (string)Session["User"];
            currentUsrSession.Text += "  ";

        }
    }
}