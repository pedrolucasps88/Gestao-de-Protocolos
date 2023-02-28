using Gestão_de_Protocolos.Classes;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestão_de_Protocolos.Caixa_de_Entrada
{
    public partial class CaixaDeEntrada : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            connection.Open();
            var comando = new MySqlCommand($@"SELECT Nome, Sobrenome, Idade FROM Clientes", connection);
            
           

            List<Mensagem> mensagemrece = new List<Mensagem>();

            connection.Open();

            using (var reader = comando.ExecuteReader())
            {
                while (reader.Read())
                {
                    Mensagem recebidos = new Mensagem();
                    recebidos.remetente = reader.GetInt32(0);
                    recebidos.assunto = reader.GetString(1);
                    recebidos.mensagenzinha = reader.GetString(2);
                    recebidos.anexo = reader.GetString(3);
                    recebidos.data = reader.GetDateTime(4);
                    mensagemrece.Add(recebidos);
                }
            }

            GridView1.DataSource = mensagemrece;
            GridView1.DataBind();
        }

    }
}
