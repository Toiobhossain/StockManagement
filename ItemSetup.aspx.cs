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
    public partial class ItemSetup : System.Web.UI.Page
    {
        CategoryManager aCategoryManager=new CategoryManager();
        Companymanager aCompanymanager=new Companymanager();
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                ddlCategory.DataSource = aCategoryManager.GetAllCategory();
                ddlCategory.DataBind();
                ListItem liCategory = new ListItem("...Select Category ...", "-1");
                ddlCategory.Items.Insert(0, liCategory);

                ddlCompany.DataSource = aCompanymanager.GetAllCompany();
                ddlCompany.DataBind();
                ListItem liCompany = new ListItem("...Select Company ...", "-1");
                ddlCompany.Items.Insert(0, liCompany);


            }
           
            


        }
        itemManager aItemManager=new itemManager();
        protected void btnSave_Click(object sender, EventArgs e)
        {
            int categoryId = Convert.ToInt32(ddlCategory.SelectedValue);
            int companyId = Convert.ToInt32(ddlCompany.SelectedValue);
            string item = txtitem.Text;
            int reorder = Convert.ToInt32(txtReorder.Text);

            Item aitem=new Item();
            aitem.Category = categoryId;
            aitem.Company = companyId;
            aitem.ItemName = item;
            aitem.ReorderLevel = reorder;
            aitem.AvaliableQuantity = 0;
            string msg = aItemManager.SaveItem(aitem);
            lblmsg.Text = msg;
            Clear();

        }

        private void Clear()
        {
            ddlCompany.SelectedIndex = -1;
            ddlCategory.SelectedIndex = -1;
            txtitem.Text = "";
            txtReorder.Text = "";
        }

        protected void ddlCategory_SelectedIndexChanged(object sender, EventArgs e)
        {
           
        }
    }
}