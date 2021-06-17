using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace tusaventras.Modelos
{

    public class UsuarioModelo
    {
        public int id { get; set; }
        public string usuario { get; set; }
        public string contraseña { get; set; }
        public bool administrador { get; set; }
        public UsuarioModelo(int id, String usuario, String contraseña, bool administrador)
        {
            this.id = id;
            this.usuario = usuario;
            this.contraseña = contraseña;
            this.administrador = administrador;
        }
        public UsuarioModelo()
        {

        }

    }
}