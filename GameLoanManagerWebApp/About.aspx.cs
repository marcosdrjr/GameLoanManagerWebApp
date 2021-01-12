using GameLoanManagerWebApp.Business;
using GameLoanManagerWebApp.DTOS;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace GameLoanManagerWebApp
{
    public partial class About : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (string.IsNullOrEmpty(Session["token"]?.ToString()))
            {
                Response.Redirect("Login/Login.aspx", false);
            }
            var ListGetGameLoanAll = Client.GetGameLoanAll();
            AtualizarGrid(CollectionHelper.ConvertTo<GameLoanDTO>(ListGetGameLoanAll));
        }

        public void AtualizarGrid(DataTable data)
        {
            GridViewLoan.DataSource = data;
            GridViewLoan.DataBind();
        }

        protected void btnadd_Click(object sender, EventArgs e)
        {
        }
        
    }
}