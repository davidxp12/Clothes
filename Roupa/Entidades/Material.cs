using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Roupa.Entidades
{
    public class Material
    {
        public Guid idMaterial { get; set; }
        public string material { get; set; }
        public string descricao { get; set; }
    }
}