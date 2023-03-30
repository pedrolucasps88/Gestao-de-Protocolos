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
            int num_matricu;
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            connection.Open();
            MySqlCommand command = new MySqlCommand("SELECT f.Matricula_Func,f.cargo, f.nome_Func,s.nome_setor FROM funcionarios f INNER JOIN setor s ON f.id_Setor=s.id WHERE `Matricula_Func`=" + Session["usuariologado"].ToString(), connection);
            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    
                    nome.Text = nome.Text +" "+  reader.GetString("nome_Func");
                    Label1.Text= reader.GetString("nome_Func");
                    cargo.Text = reader.GetString("cargo");
                    setor.Text = reader.GetString("nome_setor");
                    num_matricu = reader.GetInt32("Matricula_Func");
                    matricula.Text = Convert.ToString(num_matricu);
                }
            }
        }
    }
}