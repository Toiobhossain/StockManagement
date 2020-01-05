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
    public partial class Cetagory : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
            lblcategory.Visible = false;
            txtcode.Visible = false;
            btnUpdateCategory.Visible = false;
        }
        CategoryManager aManager=new CategoryManager();
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string name = txtCategory.Text;
           Category acetagory= new Category();
           acetagory.CategoryName = name;

            string msg = aManager.SaveCetagory(acetagory);
            lblmsg.Text = msg;
            txtCategory.Text = " ";
            BindData();
        }

        private void BindData()
        {
            CategoryGridview.DataSource = aManager.GetAllCategory();
            CategoryGridview.DataBind();
        }

        protected void btnUpdate_Click(object sender, EventArgs e)
        {
            lblcategory.Visible = true;
            txtcode.Visible = true;
            btnSave.Visible = false;
            btnUpdateCategory.Visible = true;
            btnUpdate.Visible = false;

        }

        protected void btnUpdateCategory_Click(object sender, EventArgs e)

        {   lblcategory.Visible = true;
            txtcode.Visible = true;
            btnUpdateCategory.Visible = true;
            btnUpdate.Visible = false;
            String category = txtCategory.Text;
            int id =Convert.ToInt32(txtcode.Text);
            Category aCategory=new Category();
            aCategory.CategoryName = category;
            aCategory.CategoryId = id;
            lblmsg.Text = aManager.UpdateCetagory(aCategory);
            BindData();
            txtCategory.Text = "";
            txtcode.Text = "";
        }
    }
}