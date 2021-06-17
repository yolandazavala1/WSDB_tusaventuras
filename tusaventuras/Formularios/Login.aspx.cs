using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tusaventras.Conexion;
using tusaventras.Modelos;

namespace tusaventuras.Formularios
{
    public partial class Login : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["parametro"] != null)
            {
                Label1.Text = Request.Params["parametro"];
            }
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
            String[] user = u.Buscar(txtUsuarios.Text, txtContraseña.Text);
            String parametro = "";
            for (int i = 0; i < user.Length; i++)
            {
                if (i != 0)
                {
                    parametro += "," + user[i];
                }
                else
                {
                    parametro = user[i];
                }
            }
            //Label1.Text = user[0]; Label1.ForeColor = System.Drawing.Color.White;
            Response.Redirect("Inicio.aspx?parametro=" + parametro);

        }
    }
}