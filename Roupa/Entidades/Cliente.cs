using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Roupa.Entidades 
{
    public class Cliente
    {
        public Guid  idCliente { get; set; }
        public string nome { get; set; }
        public string cpf { get; set; }
        public string cnpj { get; set; }
    }
}