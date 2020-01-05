using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockProduct.Models;
using StockProduct.BLL;

namespace StockProduct
{
    public partial class StockOut : System.Web.UI.Page
    {
        Companymanager aCompanymanager=new Companymanager();
        itemManager aItemManager=new itemManager();
        StockoutManager aStockManager=new StockoutManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCompany.DataSource = aCompanymanager.GetAllCompany();
                ddlCompany.DataBind();
                ListItem liCompany = new ListItem("...Select Company ...", "-1");
                ddlCompany.Items.Insert(0, liCompany);
                ddlItems.DataSource = aItemManager.GetItems();
                ddlItems.DataBind();
                ListItem liItem = new ListItem("...Select Item ...", "-1");
                ddlItems.Items.Insert(0, liItem);
                txtreorder.Text = "0";
                txtQuantity.Text = "45";
                btnSell.Visible = false;
                btnDamage.Visible = false;
                btnLost.Visible = false;
            }
           
        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            string company = ddlCompany.SelectedValue;
            string item = ddlItems.SelectedValue;
            int reorder = Convert.ToInt32(txtreorder.Text);
            int quantity = Convert.ToInt32(txtQuantity.Text);
            int stockout = Convert.ToInt32(txtStocOut.Text);
            int total_stock = quantity -stockout;
            Stockout aStock = new Stockout();
            aStock.Company = company;
            aStock.Item = item;
            aStock.Reorder = reorder;
            aStock.Quantity = total_stock;
            string msg = aStockManager.SaveStock(aStock);
            lblmsg.Text = msg;
            clear();
            Binddata();
            btnSell.Visible = true;
            btnDamage.Visible = true;
            btnLost.Visible = true;
        }

        private void clear()
        {
            ddlCompany.SelectedIndex = -1;
            ddlItems.SelectedIndex = -1;
           
            txtStocOut.Text = " ";
        }

        private void Binddata()
        {
            GridView1.DataSource = aStockManager.GetStockOut();
            GridView1.DataBind();
        }

        protected void btnSell_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
        }
    }
}