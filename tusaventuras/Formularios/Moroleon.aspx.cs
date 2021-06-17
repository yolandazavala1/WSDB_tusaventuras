using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using tusaventras.Conexion;
using tusaventras.docsXML;
using tusaventras.Modelos;
using System.Data;

namespace tusaventuras.Formularios
{
    public partial class Moroleon : System.Web.UI.Page
    {
        MoroleonDAOS moroleon = new MoroleonDAOS();
        String[] user = new String[4];
        String p;
        int tipoUsuario = 0;
        /// <summary>
        /// 0 -> No esta logeado
        /// 1 -> Esta logeado
        /// 2 -> Es el admin
        /// </summary>

        protected void Page_Load(object sender, EventArgs e)
        {
            btnBackEnd.Visible = false;
            btnCrearRespaldo.Visible = false;
            btnWebService.Visible = false;
            GridView5.Visible = false;
            GridView1.DataSource = moroleon.obtenerUno(1);
            GridView1.DataBind();
            GridView2.DataSource = moroleon.obtenerUno(2);
            GridView2.DataBind();
            GridView3.DataSource = moroleon.obtenerUno(3);
            GridView3.DataBind();
            GridView4.DataSource = moroleon.obtenerUno(4);
            GridView4.DataBind();

            if (Request.Params["parametro"] != null)
            {
                p = Request.Params["parametro"];
                user = p.Split(',');
                if (user[3] == "False")
                {
                    tipoUsuario = 1;
                }
                else
                {
                    tipoUsuario = 2;
                }
                lblIdUsuario.Text = "Bienvenido: " + user[1];
                lblIdUsuario.ForeColor = System.Drawing.Color.White;
                btnLogin.Text = "Close";
            }
            if (tipoUsuario == 2)
            {
                btnBackEnd.Visible = true;
                btnCrearRespaldo.Visible = true;
                btnWebService.Visible = true;
            }
        }

        protected void btnBackEnd_Click(object sender, EventArgs e)
        {
            Response.Redirect("Moroleon_editar.aspx?parametro=" + p);
        }

        protected void btnCrearRespaldo_Click(object sender, EventArgs e)
        {
            ClaseXML obj = new ClaseXML();
            MoroleonDAOS moroleon = new MoroleonDAOS();
            List<MoroleonModelo> lista = moroleon.obtenerTodos();
            for (int i = 0; i < lista.Count; i++)
            {
                obj._Añadir(lista.ElementAt(i).id.ToString(), lista.ElementAt(i).nombre, lista.ElementAt(i).direccion, lista.ElementAt(i).descripcion);
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

        protected void GridView1_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void btnLogin_Click(object sender, EventArgs e)
        {
            if (btnLogin.Text == "Login")
            {
                Response.Redirect("Login.aspx");
            }
            else
            {
                Response.Redirect("Moroleon.aspx");
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

        protected void btnWebService_Click(object sender, EventArgs e)
        {
            //Response.Redirect("WebForm1.aspx");
            GridView5.Visible = true;
            Referencia_VF.WebServiceSoapClient r = new Referencia_VF.WebServiceSoapClient();
            DataSet ds = r.GetData();
            GridView5.DataSource = ds.Tables[0];
            GridView5.DataBind();
        }
    }
}