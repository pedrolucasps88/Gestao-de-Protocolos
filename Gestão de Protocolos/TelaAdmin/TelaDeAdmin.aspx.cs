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
        private MySqlConnection connection3;
        protected void Page_Load(object sender, EventArgs e)
        {
        
            connection = new MySqlConnection("Server = 127.0.0.1; User ID = root; Password=;Database=unibr");
            connection.Open();
            var comando = new MySqlCommand($@"SELECT f.Matricula_Func,f.nome_Func,s.nome_setor, f.cargo, f.senha FROM funcionarios f INNER JOIN setor s ON f.id_Setor=s.id WHERE 1;", connection);
            List<Funcionarios> funci = new List<Funcionarios>();

            using (var reader = comando.ExecuteReader())
            {
                while (reader.Read())
                {
                    Funcionarios recebidos = new Funcionarios();
                    recebidos.matricula = reader.GetInt32("Matricula_Func");
                    recebidos.nome = reader.GetString("nome_Func");
                    recebidos.setor = reader.GetString("nome_setor");
                    recebidos.cargo = reader.GetString("cargo");
                    recebidos.senha = reader.GetString("senha");
                    
                    funci.Add(recebidos);
                }
            }

            Session["funci"] = funci;
            GridView1.DataSource = funci;
            GridView1.DataBind();
            connection.Close();
            connection2 = new MySqlConnection("Server = 127.0.0.1; User ID = root; Password=;Database=unibr");
            
            var comando2 = new MySqlCommand($@"SELECT c.id,c.matricula_remetente,f.nome_Func nome_r,f.cargo cargo_r,s.nome_setor setor_r,c.matricula_destinatario,d.nome_Func nome_d,d.cargo cargo_d,z.nome_setor setor_d,c.assunto,c.mensagem,c.anexo,c.hora 
FROM chat c
INNER JOIN funcionarios f ON c.matricula_remetente= f.Matricula_Func
INNER JOIN funcionarios d ON c.matricula_destinatario= d.Matricula_Func
INNER JOIN setor s on f.id_Setor=s.id
INNER JOIN setor z on d.id_Setor=z.id
WHERE 1", connection2);
            List<chatCompleto> mensag = new List<chatCompleto>();
            connection2.Open();
            using (var reader2 = comando2.ExecuteReader())
            {
                while (reader2.Read())
                {
                    chatCompleto recebidosm = new chatCompleto();
                    recebidosm.id = reader2.GetInt32("id");
                    recebidosm.remetente = reader2.GetInt32("matricula_remetente");
                    recebidosm.nomeremetente = reader2.GetString("nome_r");
                    recebidosm.cargoreme = reader2.GetString("cargo_r");
                    recebidosm.setorreme = reader2.GetString("setor_r");
                    recebidosm.destinatario = reader2.GetInt32("matricula_destinatario");
                    recebidosm.nomedestinatario = reader2.GetString("nome_d");
                    recebidosm.cargodesti = reader2.GetString("cargo_d");
                    recebidosm.setordesti = reader2.GetString("setor_d");
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
            connection2.Close();
            connection3 = new MySqlConnection("Server = 127.0.0.1; User ID = root; Password=;Database=unibr");
            connection3.Open();
            var comando3 = new MySqlCommand($@"SELECT * FROM `setor` WHERE 1;", connection3);
            List<Setor> setores = new List<Setor>();
            using (var reader3 = comando3.ExecuteReader())
            {
                while (reader3.Read())
                {
                    Setor recebidoss = new Setor();
                    recebidoss.id = reader3.GetInt32("id");
                    recebidoss.nome_setor = reader3.GetString("nome_setor");
                    setores.Add(recebidoss);
                }
            }
            Session["setores"] = setores;
            GridView3.DataSource = setores;
            GridView3.DataBind();
            connection3.Close();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var funcio= (List<Funcionarios>)Session["funci"];
            if (e.CommandName == "Excluir")
            {
                connection = new MySqlConnection("Server = 127.0.0.1; User ID = root; Password=;Database=unibr");
                connection.Open();
                var comando = new MySqlCommand($@"DELETE FROM `funcionarios` WHERE `Matricula_Func`=" + funcio[index].matricula, connection);
                comando.ExecuteNonQuery();
                SiteMaster.ExibirAlert(this, "Cliente excluído com sucesso!", "TelaDeAdmin.aspx");
                
                connection.Close();
            }
            if (e.CommandName == "Editar")
            {
                Response.Redirect("Update.aspx?matricula=" + funcio[index].matricula);
            }
        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var mensag = (List<chatCompleto>)Session["mensagens"];
            if (e.CommandName == "Excluir")
            {
                connection = new MySqlConnection("Server = 127.0.0.1; User ID = root; Password=;Database=unibr");
                connection.Open();
                var comando = new MySqlCommand($@"DELETE FROM `chat` WHERE `id`=" + mensag[index].id, connection);
                comando.ExecuteNonQuery();
                SiteMaster.ExibirAlert(this, "Mensagem excluída com sucesso!", "TelaDeAdmin.aspx");

                connection.Close();
            }

        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var index = e.Row.RowIndex;
                var mensagem = ((List<chatCompleto>)Session["mensagens"])[index];

                e.Row.Cells[10].Text = "<a href='../Anexos/" + mensagem.anexo + "' target='_blank'>Download</a>";
            }

        }

        protected void Insert_Click(object sender, EventArgs e)
        {
            Response.Redirect("Inserir.aspx");
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("../Login/Login.aspx");
        }

        protected void GridView3_RowCommand(object sender, GridViewCommandEventArgs e)
        {
            int index = Convert.ToInt32(e.CommandArgument);
            var docu = (List<Setor>)Session["setores"];
            if (e.CommandName == "SEEDOCUM")
            {
                Response.Redirect("VerDoc.aspx?setor=" + docu[index].nome_setor);

            }
            if (e.CommandName == "NEWDOCUM")
            {
                Response.Redirect("NovoDoc.aspx?setor=" + docu[index].nome_setor);
            }

        }

        protected void GridView3_RowDataBound(object sender, GridViewRowEventArgs e)
        {

        }
    }
}