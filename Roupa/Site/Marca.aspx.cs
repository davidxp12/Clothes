using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Roupa.Negocio;

namespace Roupa.Site
{
    public partial class Marca : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)

                MarcaListar();
        }

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandArgument == null) return;

            var idMarca = Guid.Parse(e.CommandArgument.ToString());

            if (e.CommandName == "cmdEditar")
            {
                MarcaExibir(idMarca);
            }
            else if (e.CommandName == "cmdExcluir")
            {
                MarcaExcluir(idMarca);
            }
        }
        private void MarcaExibir(Guid idMarca)
        {
            if (idMarca == Guid.Empty) return;
            var logica = new Logica();
            var marca = logica.MarcaGet(idMarca);

            if (marca == null) return;

            TextBoxMarca.Text = marca.Marca1;

            ViewState["IdMarca"] = idMarca;
        }
        private void MarcaExcluir(Guid idMarca)
        {
            var logica = new Logica();
            var marca = logica.MarcaExcluir(idMarca);

            MarcaListar();
        }   
        private void MarcaListar()
        { 
            //Session 
            if (ViewState["IdMarca"] != null)
                Response.Redirect("Marca.aspx");

            var logica = new Logica();
            var marcas = logica.MarcaLista();

            grdMarcas.DataSource = marcas;
            grdMarcas.DataBind();
           
            
        }

        protected void btnSalvarMarca(object sender, EventArgs e)
        {
            if (ViewState["IdMarca"] != null)
                MarcaAtualizar();
            else
                MarcaAdicionar();
        }
        private void MarcaAtualizar()
        {
            var logica = new Logica();
            var marca = new Entidades.Marca();
            marca.idMarca = ViewState["IdMarca"] != null ? Guid.Parse(ViewState["IdMarca"].ToString()) : Guid.Empty;
            marca.marca = TextBoxMarca.Text;

            if (logica.MarcaAtualizar(marca))
                MarcaListar();
             
        }
        private void MarcaAdicionar()
        {
            var logica = new Logica();
            var marca = new Lync.Marca();
            marca.Marca1 = TextBoxMarca.Text;

            if (logica.MarcaAdicionar(marca))
                MarcaListar();
        }
    }
}