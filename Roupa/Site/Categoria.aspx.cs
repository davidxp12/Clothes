using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Roupa.Site
{
    public partial class Categoria : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
                CategoriaListar();
        }

        protected void btn_salvar(object sender, EventArgs e)
        {

        }
        private void CategoriaListar()
        {
            if (ViewState["IdCategoria"] != null)
                Response.Redirect("Categoria.aspx");

            var logica = new Negocio.Logica();
            var categoria = logica.CategoriaListar();

            GridView1.DataSource = categoria;
            GridView1.DataBind();
        }
    }
}