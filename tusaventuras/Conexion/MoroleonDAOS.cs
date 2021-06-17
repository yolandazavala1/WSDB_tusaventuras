using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using tusaventras.Modelos;

namespace tusaventras.Conexion
{
    public class MoroleonDAOS
    {

        public DataTable obtenerUno(int id)
        {
            Conexion c = new Conexion();
            MySqlConnection conexion = c.conexion();
            MySqlCommand cmd = new MySqlCommand("select nombre, direccion, descripcion from moroleon where id= " + id + ";", conexion);
            MySqlDataAdapter ad = new MySqlDataAdapter(cmd);

            DataTable dt = new DataTable();
            ad.Fill(dt);
            return dt;
        }
        public void editar(int id, String nombre, String direccion, String descripcion)
        {
            Conexion c = new Conexion();
            MySqlConnection conexion = c.conexion();
            conexion.Open();
            String ca = "UPDATE Moroleon SET nombre = '" + nombre
               + "', direccion = '" + direccion
               + "', descripcion = '" + descripcion
               + "' WHERE ( id = '" + id + "')";
            MySqlCommand sqlcom = new MySqlCommand(ca, conexion);
            sqlcom.ExecuteNonQuery();
            conexion.Close();
        }
        public List<MoroleonModelo> obtenerTodos()
        {
            List<MoroleonModelo> lista = new List<MoroleonModelo>();
            Conexion c = new Conexion();

            MySqlConnection conexion = c.conexion();
            conexion.Open();
            MySqlCommand cmd = new MySqlCommand("SELECT * FROM Moroleon", conexion);
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                MoroleonModelo m = new MoroleonModelo(reader.GetInt32(0), reader.GetString(1), reader.GetString(2), reader.GetString(3));
                lista.Add(m);
            }

            return lista;
        }
    }
}