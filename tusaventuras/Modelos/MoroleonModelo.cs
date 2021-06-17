using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace tusaventras.Modelos
{
    public class MoroleonModelo
    {
        public int id { get; set; }
        public string nombre { get; set; }
        public string direccion { get; set; }
        public string descripcion { get; set; }
        public MoroleonModelo(int id, string nombre, string direccion, string descripcion)
        {
            this.id = id;
            this.nombre = nombre;
            this.direccion = direccion;
            this.descripcion = descripcion;
        }


    }
}
