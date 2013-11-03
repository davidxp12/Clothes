using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Roupa.Negocio;
using Roupa.Entidades;


namespace Roupa.Site
{
    public partial class Material : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if(!IsPostBack)
                MaterialListar();
        }

        private void MaterialListar() {

            var logica = new Negocio.Logica();
            var materiais = logica.MaterialListar();// busca materias no banco de dados.
            if (materiais.Count() == 0) return;
            grdMateriais.DataSource = materiais;
            //preenche datasouce do grid
            grdMateriais.DataBind();
            txtNome.Text = string.Empty;
            txtDescricao.Text = string.Empty;
           
            lblListar.Text = materiais.Count == 0 ? "  Nenhum Material encontrado." : materiais.Count + "  Material(s) encontrado(s).";
           
        }
        private void MaterialExcluir(Guid idMaterial)
        {
            var logica = new Logica();
            logica.MateriaExcluir(idMaterial);
            MaterialListar();
        }
       
        protected void txtNome_TextChanged(object sender, EventArgs e)
        {

        }

        protected void btnSalvar_Click(object sender, EventArgs e)
        {
          
            if (ViewState["IdMaterial"] != null)
                MaterialAtualizar();
            else
                MaterialAdicionar();
       

        }
        private void MaterialAdicionar()
        {
            var logica = new Logica();
            var material = new Entidades.Material();
            material.material = txtNome.Text;
            material.descricao = txtDescricao.Text;

            if (logica.MarterialAdicionar(material))
                MaterialListar();
        }
        private void MaterialAtualizar()
        {
            var logica = new Logica();
            var material = new Entidades.Material()
            {
                //id material   
                idMaterial = Guid.Parse(ViewState["IdMaterial"].ToString()),
                //Guid.Parse(ViewState["IdMaterial"].ToString()) : Guid.Empty, 
                material= txtNome.Text.ToUpper(),// deixa a  letra em maiusculo.
                descricao=txtDescricao.Text
            };
            ViewState.Clear();
            if (logica.MaterialAtualizar(material))
                MaterialListar();
        }

        protected void Gridiew1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            if (e.CommandArgument == null) return;

            var idMaterial = Guid.Parse(e.CommandArgument.ToString());

            if (e.CommandName == "cmdEditar")
            { 
                MaterialExibir(idMaterial);
            }
            else if (e.CommandName == "cmdExcluir")
            {  
                MaterialExcluir(idMaterial);
            }

        }
        // pega o objeto apenas quando esta editando.
        private void MaterialExibir(Guid idMaterial)
        { 
            if(idMaterial == Guid.Empty) return;
            var logica = new Logica();
            var material = logica.MaterialGet(idMaterial);
            if (material == null) return;
            txtNome.Text = material.material;
            txtDescricao.Text = material.descricao;
           ViewState["IdMaterial"] = material.idMaterial;
       }

    
    }
}