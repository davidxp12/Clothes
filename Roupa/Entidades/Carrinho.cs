using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Roupa.Entidades
{
    public class Carrinho
    {
        public Guid idCarrinho { get; set; }
        public int idItem { get; set; }
        public int idCliente { get; set; }
        public string tipoPagamento { get; set;}
        public float totalConta { get; set;}
    }
}