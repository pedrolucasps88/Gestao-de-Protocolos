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

            //if (Session["usuariologado"] == null)
            //{
            //    Response.Redirect("Login.aspx");

            //}
            //else
            //{
            //    Session["usuariologado"].ToString();
            //}

            connection = new MySqlConnection(SiteMaster.ConnectionString);
            connection.Open();
            var comando = new MySqlCommand($@"SELECT matricula_remetente,matricula_destinatario,assunto,mensagem,anexo,hora FROM envio WHERE `matricula_destinatario`= "+ 2, connection);

           
            List<Mensagem> mensagemrece = new List<Mensagem>();


            using (var reader = comando.ExecuteReader())
            {
                while (reader.Read())
                {
                    Mensagem recebidos = new Mensagem();
                    recebidos.remetente = reader.GetInt32("matricula_remetente");
                    recebidos.assunto = reader.GetString("assunto");
                    recebidos.mensagem = reader.GetString("mensagem");
                    recebidos.anexo = reader.GetString("anexo");
                    recebidos.hora = reader.GetDateTime("hora");
                    mensagemrece.Add(recebidos);
                }
            }

            Session["mensagens"] = mensagemrece;
            GridView1.DataSource = mensagemrece;
            GridView1.DataBind();
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if(e.Row.RowType == DataControlRowType.DataRow)
            {
                var index = e.Row.RowIndex;
                var mensagem = ((List<Mensagem>)Session["mensagens"])[index];

                e.Row.Cells[3].Text = "<a href='../Anexos/" + mensagem.anexo + "' target='_blank'>Download</a>";
            }
        }
    }
}
