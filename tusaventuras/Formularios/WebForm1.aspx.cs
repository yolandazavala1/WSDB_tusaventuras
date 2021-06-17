using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Data;
namespace tusaventuras
{
    public partial class WebForm1 : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            //ServiceReference.WebServiceSoapClient SR = new ServiceReference.WebServiceSoapClient();
            //DataSet ds = SR.GetData();
            Referencia.WebServiceSoapClient r = new Referencia.WebServiceSoapClient();
            DataSet ds = r.GetData();
            GridView1.DataSource = ds.Tables[0];
            GridView1.DataBind();
        }
    }
}