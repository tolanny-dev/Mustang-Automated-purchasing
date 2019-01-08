using System;
using System.Globalization;

public partial class Purchases : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {

        if ((string)Session["StarID"] == null)
        {
            Response.Redirect("Login.aspx");
        }

        poDll.PurchaseOrder dll = new poDll.PurchaseOrder();

        lblPoNumber.Text = dll.PURCHASE_GetNextPoNum();
        btnSummate.Text = "Sum Totals";
        btnSubmit.Visible = false;
    }


    protected void btnSummate_Click(object sender, EventArgs e)
    {
        poDll.PurchaseOrder dll = new poDll.PurchaseOrder();
        if (btnSummate.Text == "Sum Totals" && tbUnitPrice1.Text != "")
        {
            float up1 = float.Parse(tbUnitPrice1.Text, CultureInfo.InvariantCulture);
            int q1 = Int32.Parse(tbQuantity1.Text);
            tbFinalAmount1.Text = (up1 * q1).ToString();

            if (tbItem2.Text != "")
            {
                float up2 = float.Parse(tbUnitPrice2.Text, CultureInfo.InvariantCulture);
                int q2 = Int32.Parse(tbQuantity2.Text);
                tbFinalAmount2.Text = (up2 * q2).ToString();

            }
            if (tbItem3.Text != "")
            {
                float up3 = float.Parse(tbUnitPrice3.Text, CultureInfo.InvariantCulture);
                int q3 = Int32.Parse(tbQuantity3.Text);
                tbFinalAmount3.Text = (up3 * q3).ToString();

            }
            if (tbItem4.Text != "")
            {
                float up4 = float.Parse(tbUnitPrice4.Text, CultureInfo.InvariantCulture);
                int q4 = Int32.Parse(tbQuantity4.Text);
                tbFinalAmount4.Text = (up4 * q4).ToString();

            }
            if (tbItem5.Text != "")
            {
                float up5 = float.Parse(tbUnitPrice5.Text, CultureInfo.InvariantCulture);
                int q5 = Int32.Parse(tbQuantity5.Text);
                tbFinalAmount5.Text = (up5 * q5).ToString();

            }

            btnSummate.Visible = false;
            btnSubmit.Visible = true;
            btnSubmit.Text = "Submit Purchase Order";

        }

    }

    protected void btnSubmit_Click(object sender, EventArgs e)
    {
        poDll.PurchaseOrder dll = new poDll.PurchaseOrder();

        if (tbItem1.Text != "")
        {
            string orderBy = Session["StarID"].ToString();
            string vendor = dlVendor.Text;
            int oNum = Int32.Parse(lblPoNumber.Text);
            int lNum = Int32.Parse(lblLine1.Text);
            string item = tbItem1.Text;
            int qty = Int32.Parse(tbQuantity1.Text);
            float uPrice = float.Parse(tbUnitPrice1.Text, CultureInfo.InvariantCulture);
            float fPrice = float.Parse(tbFinalAmount1.Text, CultureInfo.InvariantCulture);

            int iTotalRows;

            iTotalRows = dll.PURCHASE_Insert(oNum, lNum, item, qty, uPrice, fPrice, orderBy, vendor);
            if (iTotalRows > 0)
            {
                lblMessage.Text = "Your Order was recieved Succesfully";
            }


        }
        if (tbItem2.Text != "")
        {
            string orderBy = Session["StarID"].ToString();
            string vendor = dlVendor.Text;
            int oNum = Int32.Parse(lblPoNumber.Text);
            int lNum = Int32.Parse(lblLine2.Text);
            string item = tbItem1.Text;
            int qty = Int32.Parse(tbQuantity2.Text);
            float uPrice = float.Parse(tbUnitPrice2.Text, CultureInfo.InvariantCulture);
            float fPrice = float.Parse(tbFinalAmount2.Text, CultureInfo.InvariantCulture);

            int iTotalRows;

            iTotalRows = dll.PURCHASE_Insert(oNum, lNum, item, qty, uPrice, fPrice, orderBy, vendor);
            if (iTotalRows > 0)
            {
                lblMessage.Text = "Your Order was recieved Succesfully";
            }
        }
        if (tbItem3.Text != "")
        {
            string orderBy = Session["StarID"].ToString();
            string vendor = dlVendor.Text;
            int oNum = Int32.Parse(lblPoNumber.Text);
            int lNum = Int32.Parse(lblLine3.Text);
            string item = tbItem1.Text;
            int qty = Int32.Parse(tbQuantity3.Text);
            float uPrice = float.Parse(tbUnitPrice3.Text, CultureInfo.InvariantCulture);
            float fPrice = float.Parse(tbFinalAmount3.Text, CultureInfo.InvariantCulture);

            int iTotalRows;

            iTotalRows = dll.PURCHASE_Insert(oNum, lNum, item, qty, uPrice, fPrice, orderBy, vendor);
            if (iTotalRows > 0)
            {
                lblMessage.Text = "Your Order was recieved Succesfully";
            }
        }
        if (tbItem4.Text != "")
        {
            string orderBy = Session["StarID"].ToString();
            string vendor = dlVendor.Text;
            int oNum = Int32.Parse(lblPoNumber.Text);
            int lNum = Int32.Parse(lblLine4.Text);
            string item = tbItem1.Text;
            int qty = Int32.Parse(tbQuantity4.Text);
            float uPrice = float.Parse(tbUnitPrice4.Text, CultureInfo.InvariantCulture);
            float fPrice = float.Parse(tbFinalAmount4.Text, CultureInfo.InvariantCulture);

            int iTotalRows;

            iTotalRows = dll.PURCHASE_Insert(oNum, lNum, item, qty, uPrice, fPrice, orderBy, vendor);
            if (iTotalRows > 0)
            {
                lblMessage.Text = "Your Order was recieved Succesfully";
            }
        }
        if (tbItem5.Text != "")
        {
            string orderBy = Session["StarID"].ToString();
            string vendor = dlVendor.Text;
            int oNum = Int32.Parse(lblPoNumber.Text);
            int lNum = Int32.Parse(lblLine5.Text);
            string item = tbItem1.Text;
            int qty = Int32.Parse(tbQuantity5.Text);
            float uPrice = float.Parse(tbUnitPrice5.Text, CultureInfo.InvariantCulture);
            float fPrice = float.Parse(tbFinalAmount5.Text, CultureInfo.InvariantCulture);

            int iTotalRows;

            iTotalRows = dll.PURCHASE_Insert(oNum, lNum, item, qty, uPrice, fPrice, orderBy, vendor);
            if (iTotalRows > 0)
            {
                lblMessage.Text = "Your Order was recieved Succesfully";
            }
        }


    }

}