using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SMSU_PO
{
    public partial class Involvement : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["StarID"] == null)
            {
                Response.Redirect("Login.aspx");
            }

            GridView1.DataSource = studentSelect();
            GridView1.DataBind();

            GridView2.DataSource = involvementSelect();
            GridView2.DataBind();
        }

        protected void btnAddClub_Click(object sender, EventArgs e)
        {
            poDll.PurchaseOrder add = new poDll.PurchaseOrder();
            string club = dlClubs.Text.Trim();
            int totalRows;
            string starID = (string)Session["StarID"].ToString();

            if (starID == "")
            {
                lblAddError.Text = "Something went wrong, please logout and login then try again";
            }else
            {
                totalRows = add.INVOLVEMENT_Add(starID, club);
                lblAddSuccess.Text = "Sucessfully added " + club + " to your Involvement list";
            }

        }

        protected void btnRmClub_Click(object sender, EventArgs e)
        {
            poDll.PurchaseOrder add = new poDll.PurchaseOrder();
            string club = dlClubs2.Text.Trim();
            int totalRows;
            string starID = (string)Session["StarID"].ToString();

            if (starID == "")
            {
                lblRmError.Text = "Something went wrong, please logout and login then try again";
            }
            else
            {
                totalRows = add.INVOLVEMENT_Remove(starID, club);
                lblRmSuccess.Text = "Sucessfully removed " + club + " from your Involvement list";
                Response.Redirect(Request.Url.AbsoluteUri);
            }

        }

        protected DataSet studentSelect()
        {
            poDll.PurchaseOrder dsStudent = new poDll.PurchaseOrder();
            DataSet ds = new DataSet();

            ds = dsStudent.STUDENT_Select("ab1234cd", "password");

            return ds;
        }

        protected DataSet involvementSelect()
        {
            poDll.PurchaseOrder selectInv = new poDll.PurchaseOrder();
            DataSet ds = new DataSet();

            ds = selectInv.INVOLVEMENT_Select((string)Session["StarID"]);
            return ds;
        }

        protected void gv1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                e.Row.CssClass = "alert alert-success";
            }
        }

        
    }
}