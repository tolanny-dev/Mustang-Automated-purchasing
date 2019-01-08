using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;

namespace SMSU_PO
{
    public partial class Login : System.Web.UI.Page
    {
        poDll.PurchaseOrder stud = new poDll.PurchaseOrder();

        protected void Page_Load(object sender, EventArgs e)
        {
            string name = "";
            Session["User"] = name ;
            
            this.Form.DefaultButton = btnLogin.UniqueID;
        }
        //View for Login button
        protected void vwLogin_Click(object sender, EventArgs e)
        {
            Multiview1.ActiveViewIndex = 0;

        }
        //View for Signup Button
        protected void vwSignup_Click(object sender, EventArgs e)
        {
            Multiview1.ActiveViewIndex = 1;
        }

        //Method for Login
        protected void btnLogin_Click(object sender, EventArgs e)
        {
            DataSet ds = new DataSet();
            string starId = txtBoxStarid.Text.Trim();
            string pwd = txtBoxPwd.Text.Trim();

            ds = stud.STUDENT_Select(starId, pwd);

            if (ds.Tables[0].Rows.Count < 1)
            {
                lblNotFound.Text = "User not found";
                return;
            }
            else
            {
                lblNotFound.Text = "";
                string active = ds.Tables["Student"].Rows[0].ItemArray[4].ToString();
                Session["User"] = ds.Tables["Student"].Rows[0].ItemArray[1];
                Session["StarID"] = ds.Tables["Student"].Rows[0].ItemArray[0];

                if (active == "1" ) // aunthenticated user
                {
                    Response.Redirect("Involvement.aspx");
                }

                else if (active == "2") // advisor
                {
                    Response.Redirect("");
                }

                else if (active == "3") // vendor
                {
                    Response.Redirect(""); 
                }

                else
                {
                    Response.Redirect("Default.aspx");
                }
                
            }
        }

        //Method for Signup
        protected void btnSignUp_Click(object sender, EventArgs e)
        {
            string starID = tBoxStarid.Text;
            string fName = tBoxFirstName.Text;
            string lName = tBoxLastName.Text;
            string email = tBoxEmail.Text;
            var pwd = tBoxPwd.Text;
            int totalRows;
            DataSet ds = new DataSet();

            ds = stud.STUDENT_Select(starID);

            if ( ds.Tables[0].Rows.Count > 0) {
                lblExists.Text = starID + " already has an account. Did you <a href='' target =_blank> Forget Password ?</a> ";
                return;
            }
            else {
                totalRows = stud.STUDENT_Insert(starID, fName, lName, email, pwd);

                if (totalRows > 0)
                {
                    Session["User"] = fName;
                    Session["StarID"] = starID;
                    Response.Redirect("Involvement.aspx");
                }
            }


            

            //Check DB for StarID and Email 


            //If not in db hash password 
            var hashedPwd = "";

            //Insert new user in db


            //Set Session["User"]

            //Session["User"] = "David";

        }
        
    }
}