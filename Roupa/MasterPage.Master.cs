using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Roupa.Site
{
    public partial class MasterPage : System.Web.UI.MasterPage
    {
        protected void Page_Load(object sender, EventArgs e)
        {
           
        }

        protected void btnIndex_Click(object sender, EventArgs e)
        {
            Response.Redirect("Index.aspx");
        }

        protected void btnRoupa_Click(object sender, EventArgs e)
        {

        }

        protected void btnCategoria_Click(object sender, EventArgs e)
        {
            Response.Redirect("Categoria.aspx");
        }

        protected void btnAcessorios_Click(object sender, EventArgs e)
        {
            Response.Redirect("Acessorios.aspx");
        }

        protected void btnMaterial_Click(object sender, EventArgs e)
        {
            Response.Redirect("Material.aspx");
        }

        protected void btnMarca_Click(object sender, EventArgs e)
        {
            Response.Redirect("Marca.aspx");
        }



        
    }
}