using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Roupa.Negocio;

namespace Roupa.Site
{
    public partial class Acessorios : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
             if(!IsPostBack)
            AcessorioListar();

           
        }

        protected void btn_salvar(object sender, EventArgs e)
        {
            if (ViewState["IdAcessorio"] != null)
                AcessorioAtualizar();
            else
                AcessorioAdicionar();
        }

        private void AcessorioAdicionar()
        {
            var logica = new Logica();
            var acessorio = new Lync.Acessorio();
            acessorio.Nome = txtNome.Text;
            acessorio.Descricao = txtDescricao.Text;
            acessorio.Preco=  Decimal.Parse(txtPreco.Text.ToString());
            acessorio.Parcelas= DropDownListParcelas.SelectedIndex;

            if (logica.AcessorioAdicionar(acessorio))
                AcessorioListar();
        }
        private void AcessorioAtualizar()
        {
            var logica = new Logica();
            var acessorio = new  Entidades.Acessorio();
            
               acessorio.acessorio = ViewState["IdAcessorio"] != null ? Guid.Parse(ViewState["IdAcessorio"].ToString()) : Guid.Empty;
               acessorio.nome= txtNome.Text;
               acessorio.descricao=txtDescricao.Text;
               acessorio.preco= decimal.Parse(txtPreco.Text);
               acessorio.parcelas = Convert.ToInt32(DropDownListParcelas.SelectedIndex);
          
               if(logica.AcessorioAtualizar(acessorio))
                   AcessorioListar();
         
        }
        protected void grdacessorios_RowCommand(object sender, GridViewCommandEventArgs e)
        {
           //deve ser implementado as ações de editar e excluir.
            if (e.CommandArgument == null) return;

            var idAcessorio = Guid.Parse(e.CommandArgument.ToString());

            if (e.CommandName == "cmdEditar")
            {
               AcessorioExibir(idAcessorio);
            }
            else if(e.CommandName=="cmdExcluir")
            {
                AcessorioExcluir(idAcessorio);
            }
        }
        private void AcessorioExibir(Guid idAcessorio)
        {
            if (idAcessorio == Guid.Empty) return;
            var logica = new Negocio.Logica();
            var acessorio = logica.AcessorioGet(idAcessorio);

            if (acessorio == null) return;

            txtNome.Text = acessorio.Nome;
            txtDescricao.Text = acessorio.Descricao;
            txtPreco.Text =acessorio.Preco.ToString();
            DropDownListParcelas.Text = acessorio.Parcelas.ToString();

            ViewState["IdAcessorio"] = idAcessorio;

            
        }

        private void AcessorioExcluir(Guid idAcessorio)
        {
            var logica = new Logica();
            var acessorio = logica.AcessorioExcluir(idAcessorio);
            AcessorioListar();
        }

        private void AcessorioListar() 
        {

            if (ViewState["IdAcessorio"] != null)
                Response.Redirect("Acessorios.aspx");
            
            var logica = new Negocio.Logica();
            var acessorios = logica.AcessorioListar();
             
           // DropDownListParcelas.Items.Insert()
           
            DropDownListParcelas.Items.Insert(0, new ListItem("Selecione", "0"));
            DropDownListParcelas.Items.Insert(1, new ListItem("Á vista", "1"));
           for (int i = 2; i < 13; i++)
            { 
                                                                      //texto e valor
            DropDownListParcelas.Items.Insert(i, new ListItem((""+i.ToString()+" Parcelas"), i.ToString()));
            //DropDownListParcelas.Items.Insert(i, new ListItem(i.ToString(), i.ToString()));
            }

           txtDescricao.Text = string.Empty;
           txtNome.Text = string.Empty;
           txtPreco.Text =string.Empty;

           lblListar.Text = lblListar.Text = acessorios.Count == 0 ? "  Nenhum Acessorio encontrado." : acessorios.Count + "  Acessorio(s) encontrado(s).";

            grdacessorios.DataSource = acessorios;
            grdacessorios.DataBind();

        }
       
    }
}