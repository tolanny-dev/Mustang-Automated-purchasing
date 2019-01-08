using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
using System.IO;

namespace SMSU_PO
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if ((string)Session["StarID"] != null)
            {
                GridView1.DataSource = involvementSelect();
                GridView1.DataBind();

                btnDownload.Visible = false;
            }
            else
            {
                Response.Redirect("Login.aspx");
            }

        }

        protected DataSet purchase()
        {
            DataSet ds = new DataSet();
            poDll.PurchaseOrder dll = new poDll.PurchaseOrder();

            ds = dll.PURCHASE_Select((string)Session["StarID"]);

            return ds;
        }


        protected DataSet involvementSelect()
        {
            poDll.PurchaseOrder selectInv = new poDll.PurchaseOrder();
            DataSet ds = new DataSet();

            ds = selectInv.INVOLVEMENT_Select((string)Session["StarID"]);
            return ds;
        }

        protected void btnViewPurchase_Click(object sender, EventArgs e)
        {
            poDll.PurchaseOrder selectInv = new poDll.PurchaseOrder();
            DataSet ds = new DataSet();

            int poNum = Int32.Parse(dlPurchases.Text);
            ds = selectInv.PURCHASE_Select(poNum);

            GridView3.DataSource = ds;
            GridView3.DataBind();

            btnDownload.Visible = true;
        }

        protected void btnDownload_Click(object sender, EventArgs e)
        {
            poDll.PurchaseOrder selectInv = new poDll.PurchaseOrder();
            DataSet ds = new DataSet();

            int poNum = Int32.Parse(dlPurchases.Text);
            ds = selectInv.PURCHASE_Select(poNum);

            if (ds.Tables[0].Rows.Count < 1)
            {
                lblError.Text = "No results. Could not download.";
            }
            else
            {
                Download(ds);
            }
        }

        protected bool Download(DataSet ds)
        {
            //DataRow Row;
            //DataColumn Col;
            string szFileName;
            string dwFileName;
            DateTime todaysDte = DateTime.Today;
            string dte = todaysDte.ToString("MM-dd-yyyy");

            DirectoryInfo oDir = new DirectoryInfo(Server.MapPath("DownloadFiles"));
            FileInfo[] oFileArray = oDir.GetFiles();
            //FileInfo oFileInfo;

            try
            {
                foreach (FileInfo oFileInfo in oFileArray)
                {
                    if ((oFileInfo.Extension.ToLower() == ".csv"))
                    {
                        oFileInfo.Delete();
                    }
                }
            }
            catch (Exception e)
            {
                throw e;
            }

            szFileName = Server.MapPath("DownloadFiles") + "\\Purchase " + dte + ".csv";
            dwFileName = "\\Purchase " + dte + ".csv";

            if (System.IO.File.Exists(szFileName))
            {
                System.IO.File.Delete(szFileName);
            }

            System.IO.StreamWriter sWriter = new System.IO.StreamWriter(szFileName);
            string strHeadings = "";
            string strData = "";

            foreach (DataColumn Col in ds.Tables[0].Columns)
            {
                strHeadings += Col.ColumnName + ",";
            }

            //Remove Trailing Comma
            strHeadings = strHeadings.Substring(0, (strHeadings.Length - 1));

            //Write the headings to the file
            sWriter.WriteLine(strHeadings);

            foreach (DataRow Row in ds.Tables[0].Rows)
            {
                foreach (DataColumn Col in Row.Table.Columns)
                {
                    // strData &= Row(Col.ColumnName).ToString & ","
                    strData = (strData + Row[Col.ColumnName].ToString() + ",");
                }

                //Remove Trailing Comma
                strData = strData.Substring(0, (strData.Length - 1));

                //Write Line
                sWriter.WriteLine(strData);
                strData = "";
            }

            sWriter.Close();

            //Start the download
            Response.ContentType = "application/octet-stream";
            Response.AppendHeader("Content-Disposition", "attachment; filename=" + dwFileName);
            Response.TransmitFile(Server.MapPath("DownloadFiles" + dwFileName));
            Response.End();

            return true;
        }


    }
}