using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Roupa.Entidades
{
    public class Acessorio
    {
        public Guid acessorio { get; set; }
        public string nome { get; set; }
        public string descricao { get; set; }
        public decimal preco { get; set; }
        public int parcelas { get; set; }
        
    }
}