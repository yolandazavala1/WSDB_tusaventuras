using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Data;
using System.Linq;
using System.Web;
using tusaventras.Modelos;
namespace tusaventras.Conexion
{

    public class UsuarioDAOS
    {
        Conexion c = new Conexion();
        public String[] Buscar(String usuario, String contraseña)
        {
            String[] datos = new String[4];

            MySqlConnection conexion = c.conexion();
            conexion.Open();
            MySqlCommand cmd = new MySqlCommand("select * from usuarios where usuario= '" + usuario + "' and contraseña='" + contraseña + "';", conexion);
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                datos[0] = reader.GetInt32(0).ToString();
                datos[1] = reader.GetString(1);
                datos[2] = reader.GetString(2);
                datos[3] = reader.GetBoolean(3).ToString();
            }

            return datos;
        }
        public String Registrar(String usuario, String contraseña)
        {
            MySqlConnection conexion = c.conexion();
            conexion.Open();
            String ca = "insert into usuarios (usuario, contraseña, administrador) values (@usuario,@contraseña,false);";
            MySqlCommand sqlcom = new MySqlCommand(ca, conexion);
            sqlcom.Parameters.AddWithValue("@usuario", usuario);
            sqlcom.Parameters.AddWithValue("@contraseña", contraseña);
            sqlcom.ExecuteNonQuery();
            conexion.Close();
            return "Registro exitoso";
        }
        public String ExtraerComentariosMoroleon(int idCard)
        {
            String datos = "";

            MySqlConnection conexion = c.conexion();
            conexion.Open();
            MySqlCommand cmd = new MySqlCommand("select * from comentariosMoroleon where idCard=" + idCard + ";", conexion);
            MySqlDataReader reader = cmd.ExecuteReader();
            while (reader.Read())
            {
                datos += reader.GetInt32(0).ToString();
                datos += "," + reader.GetString(1);
                datos += "," + reader.GetString(2);
                datos += "," + reader.GetInt32(3).ToString();
            }

            return datos;
        }

    }
}