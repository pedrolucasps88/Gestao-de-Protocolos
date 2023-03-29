using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestão_de_Protocolos.THome
{
    public partial class Home : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            connection.Open();
            var comando = new MySqlCommand("SELECT `nome_Func` FROM `funcionarios` WHERE `Matricula_Func`=" + Session["usuariologado"].ToString(), connection);
            using (var reader = comando.ExecuteReader())
            {
                while (reader.Read())
                {
                    nome.Text =nome.Text+" "+ reader.GetString("nome_func");
                }

            }
        }
    }
}