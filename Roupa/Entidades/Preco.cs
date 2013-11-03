using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Roupa.Entidades
{
    public class Preco
    {
        public Guid idPreco { get; set; }
        public float preco { get; set; }
        public int precoParcelado { get; set; }
        public int precoQuantidade { get; set; } // preço por peça. 
    }
}