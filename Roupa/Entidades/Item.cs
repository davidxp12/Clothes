using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Roupa.Entidades
{
    public class Item
    {
        public Guid idItem { get; set; }
        public Guid idRoupa { get; set; }
        public Guid IdAcessorio { get; set; }
    }
}