using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tusaventras.Conexion;

namespace tusaventuras.Formularios
{
    public partial class Signup : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inicio.aspx");
        }

        protected void btnMoroleon_Click(object sender, EventArgs e)
        {
            Response.Redirect("Moroleon.aspx");
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            Response.Redirect("Login.aspx");
        }

        protected void Button1_Click(object sender, EventArgs e)
        {
            UsuarioDAOS u = new UsuarioDAOS();
            String parametro = u.Registrar(txtUsuarios.Text, txtContraseña.Text);

            Response.Redirect("Login.aspx?parametro=" + parametro);

        }
    }
}