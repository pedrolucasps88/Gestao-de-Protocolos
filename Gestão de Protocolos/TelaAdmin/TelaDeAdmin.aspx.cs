using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;
using Gestão_de_Protocolos.Classes;

namespace Gestão_de_Protocolos.TelaAdmin
{
    public partial class TelaDeAdmin : System.Web.UI.Page
    {
        private MySqlConnection connection;
        private MySqlConnection connection2;
        protected void Page_Load(object sender, EventArgs e)
        {
        
            connection = new MySqlConnection("Server = 127.0.0.1; User ID = root; Password=;Database=gestaodeprotocolos");
            connection.Open();
            var comando = new MySqlCommand($@"SELECT * FROM `funcionario` WHERE 1;", connection);
            List<Empresa> funci = new List<Empresa>();

            using (var reader = comando.ExecuteReader())
            {
                while (reader.Read())
                {
                    Empresa recebidos = new Empresa();
                    recebidos.id = reader.GetInt32("id");
                    recebidos.setor = reader.GetString("setor");
                    recebidos.matricula_func = reader.GetInt32("matricula_func");
                    recebidos.senha = reader.GetInt32("senha");
                    
                    funci.Add(recebidos);
                }
            }

            Session["funci"] = funci;
            GridView1.DataSource = funci;
            GridView1.DataBind();
            connection.Close();
            connection2 = new MySqlConnection("Server = 127.0.0.1; User ID = root; Password=;Database=gestaodeprotocolos");
            
            var comando2 = new MySqlCommand($@"SELECT * FROM `envio` WHERE 1", connection2);
            List<Mensagem> mensag = new List<Mensagem>();
            connection2.Open();
            using (var reader2 = comando2.ExecuteReader())
            {
                while (reader2.Read())
                {
                    Mensagem recebidosm = new Mensagem();
                    recebidosm.remetente = reader2.GetInt32("matricula_remetente");
                    recebidosm.assunto = reader2.GetString("assunto");
                    recebidosm.mensagem = reader2.GetString("mensagem");
                    recebidosm.anexo = reader2.GetString("anexo");
                    recebidosm.hora = reader2.GetDateTime("hora");
                    mensag.Add(recebidosm);
                }
            }

            Session["mensagens"] = mensag;
            GridView2.DataSource = mensag;
            GridView2.DataBind();

        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            if (e.CommandName == "Excluir")
            {
                //connection = new MySqlConnection("Server = 127.0.0.1; User ID = root; Password=;Database=chat");
                //connection.Open();
                //var comando = new MySqlCommand($@"DELETE FROM `envio` WHERE `id`=", connection);
                //comando.ExecuteNonQuery();
                
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {


        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var index = e.Row.RowIndex;
                var mensagem = ((List<Mensagem>)Session["mensagens"])[index];

                e.Row.Cells[4].Text = "<a href='../Anexos/" + mensagem.anexo + "' target='_blank'>Download</a>";
            }

        }
    }
}