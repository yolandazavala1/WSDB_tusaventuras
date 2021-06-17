using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace tusaventuras
{
    public partial class Inicio : System.Web.UI.Page
    {
        String[] user = new String[4];
        String p;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Request.Params["parametro"] != null)
            {
                p = Request.Params["parametro"];
                user = p.Split(',');
                lblIdUsuario.Text = "Bienvenido: " + user[1];
                lblIdUsuario.ForeColor = System.Drawing.Color.White;
                btnLogin.Text = "Close";
            }
        }

        protected void btnInicio_Click(object sender, EventArgs e)
        {
            if (user[0] != null)
            {
                Response.Redirect("Inicio.aspx?parametro=" + p);
            }
            else
            {
                Response.Redirect("Inicio.aspx");
            }
        }

        protected void btnMoroleon_Click(object sender, EventArgs e)
        {
            if (user[0] != null)
            {
                Response.Redirect("Moroleon.aspx?parametro=" + p);
            }
            else
            {
                Response.Redirect("Moroleon.aspx");
            }
        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (btnLogin.Text == "Login")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("Inicio.aspx");
            }
        }
    }
}