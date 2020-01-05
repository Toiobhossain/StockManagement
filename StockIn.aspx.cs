using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using StockProduct.Models;
using StockProduct.BLL;

namespace StockProduct
{
    public partial class StockIn : System.Web.UI.Page
    {
        Companymanager aCompanymanager=new Companymanager();
        itemManager aItemManager=new itemManager();
        StockManager aStockManager=new StockManager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCompany.DataSource = aCompanymanager.GetAllCompany();
                ddlCompany.DataBind();
                ListItem liCompany = new ListItem("...Select Company ...", "-1");
                ddlCompany.Items.Insert(0, liCompany);

                ddlItems.Enabled = false;



            }

        }

        protected void btnSave_Click(object sender, EventArgs e)
        {
            
            int quantity = Convert.ToInt32(txtStociIn.Text);

            Item newitem = new Item();
            newitem = (Item)ViewState["existingItem"];
            newitem.AvaliableQuantity = quantity;
            string msg = aItemManager.AddQuantity(newitem);
            lblmsg.Text = msg;
            newitem = aItemManager.GetItemInfoByID(newitem);
            txtQuantity.Text = Convert.ToString(newitem.AvaliableQuantity);
           



           clear();
        }

        public void clear()
        {
            ddlCompany.SelectedIndex = -1;
            ddlItems.SelectedIndex = -1;
            txtStociIn.Text = " ";
        }
        protected void ddlItems_SelectedIndexChanged(object sender, EventArgs e)
        {

            Item aItem = new Item();
            Item existingItem = new Item();

            aItem.Id= Convert.ToInt32(ddlItems.SelectedValue);       //Take ItemID from DDL Selected Value
            existingItem =aItemManager.GetItemInfoByID(aItem);   //Get ItemID, AvailableQuantity, ReorderLevel from DataBase using aItem.ID

            ViewState["existingItem"] = existingItem;            //Save ExistingItem to ViewState for taking ID for next work

            txtQuantity.Text = Convert.ToString(existingItem.AvaliableQuantity);  //Send Available Quantity to TextBox
            txtreorder.Text = Convert.ToString(existingItem.ReorderLevel);



        }

        protected void ddlCompany_SelectedIndexChanged(object sender, EventArgs e)
        {
            if (ddlCompany.SelectedIndex != 0)
            {
                ddlItems.Enabled = true;
                BindAllItems();
                ListItem liitem = new ListItem("...Select Item ...", "-1");
                ddlItems.Items.Insert(0, liitem);
            }
        }

        public void BindAllItems()
        {
            Company aCompany=new Company();
            aCompany.CompanyId = Convert.ToInt32(ddlCompany.SelectedValue);
            List<Item> dbItems = aItemManager.GetItemByCompany(aCompany);
            ddlItems.DataSource = dbItems;
            ddlItems.DataBind();
        }
    }
}