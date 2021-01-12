using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using SysCob.Library;

namespace GameLoanManagerWebApp.Login
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!string.IsNullOrEmpty(Session["token"]?.ToString()))
            {
                Response.Redirect("../About.aspx", false);
            }
        }

        protected void btlEntrar_Click(object sender, EventArgs e)
        {
            ValidarDados(txtCpf.Text, txtPass.Text);
        }

        public void ValidarDados(string cpf, string pass)
        {
            try
            {
                Criptografia cript = new Criptografia();
                cript.Dados(cpf);
                string cpf_Criptografado = cript.CriptografarDados();
                cript = new Criptografia();
                cript.Dados(pass);
                string pass_Criptografado = cript.CriptografarDados();
                Salvar(pass_Criptografado);
                if (!string.IsNullOrEmpty(Session["token"]?.ToString()))
                {
                    Response.Redirect("../About.aspx", false);
                }
            }
            catch (Exception ex)
            {
                throw;
            }
        }
        private void Salvar(string token)
        {
            try
            {
                Session["token"] = token;
            }
            catch (Exception ex)
            {
                throw new Exception(ex.Message);
            }
        }

    }
}