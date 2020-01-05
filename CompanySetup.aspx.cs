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
    public partial class CompanySetup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            BindData();
        }
        Companymanager aManager = new Companymanager();
        protected void btnSave_Click(object sender, EventArgs e)
        {
            string name = txtCompany.Text;
            Company aCompany = new Company();
            aCompany.CompanyName = name;
            string msg = aManager.SaveCompany(aCompany);
            lblmsg.Text = msg;
            txtCompany.Text = " ";
            BindData();
        }
        private void BindData()
        {
            CompanyGridview.DataSource = aManager.GetAllCompany();
            CompanyGridview.DataBind();
        }
    }
}