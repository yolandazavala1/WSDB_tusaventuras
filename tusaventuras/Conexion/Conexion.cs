using MySql.Data.MySqlClient;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;


namespace tusaventras.Conexion
{
    public class Conexion
    {
        public MySqlConnection conexion()
        {
            MySqlConnection con = new MySqlConnection("Server=localhost; Database=tusaventuras; Uid=root; Pwd=120276;");

            return con;
        }
    }
}