using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Xml;

namespace tusaventras.docsXML
{
    public class ClaseXML
    {
        XmlDocument doc;
        string rutaXml = "C:/Users/Yolanda Zavala/source/repos/WSDB_tusaventuras/tusaventuras/docsXML/XMLFile1.xml";
        public void _Añadir(string id, string nom, string dir, string dis)
        {
            doc = new XmlDocument();
            doc.Load(rutaXml);
            int bandera = 0;

            XmlNode lugar = _Crear_Lugar(id, nom, dir, dis);

            XmlNode nodoRaiz = doc.DocumentElement;

            XmlNodeList listaLugares = doc.SelectNodes("Lugares/Lugar");
            nodoRaiz.InsertAfter(lugar, nodoRaiz.LastChild);

            foreach (XmlNode item in listaLugares)
            {

                if (item.FirstChild.InnerText == id)
                {
                    bandera = 1;
                }

            }
            //if (bandera == 0)
            //{
            //    doc.Save(rutaXml);
            //}
            doc.Save(rutaXml);

        }
        private XmlNode _Crear_Lugar(string id, string nom, string dir, string dis)
        {

            XmlNode lugar = doc.CreateElement("Lugar");


            XmlElement xid = doc.CreateElement("ID");
            xid.InnerText = id;
            lugar.AppendChild(xid);


            XmlElement xnombre = doc.CreateElement("Nombre");
            xnombre.InnerText = nom;
            lugar.AppendChild(xnombre);


            XmlElement xdireccion = doc.CreateElement("Direccion");
            xdireccion.InnerText = dir;
            lugar.AppendChild(xdireccion);


            XmlElement xdescripcion = doc.CreateElement("Descripcion");
            xdescripcion.InnerText = dis;
            lugar.AppendChild(xdescripcion);


            return lugar;
        }
    }
}