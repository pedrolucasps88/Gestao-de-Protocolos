using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Data.SqlClient;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;


namespace Gestão_de_Protocolos.TelaEnvio
{
    public partial class TelaDeEnvio : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (Session["usuariologado"] == null)
            {
                Response.Redirect("Login.aspx");

            }
            else
            {

            }

            int num_matricu;
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            connection.Open();
            MySqlCommand commandinho = new MySqlCommand("SELECT f.Matricula_Func,f.cargo, f.nome_Func,s.nome_setor FROM funcionarios f INNER JOIN setor s ON f.id_Setor=s.id WHERE `Matricula_Func`=" + Session["usuariologado"].ToString(), connection);
            using (var reader1 = commandinho.ExecuteReader())
            {
                while (reader1.Read())
                {

                    nome.Text = " " + reader1.GetString("nome_Func");
                    Label1.Text = reader1.GetString("nome_Func");
                    cargo.Text = reader1.GetString("cargo");
                    setor.Text = reader1.GetString("nome_setor");
                    num_matricu = reader1.GetInt32("Matricula_Func");
                    matricula.Text = Convert.ToString(num_matricu);
                }

                string selectedValue = setores.SelectedValue;

                //Conecta com o banco de dados e realiza a consulta.
                MySqlConnection conexão = new MySqlConnection("Server=127.0.0.1;User ID=root;Password=;Database=gestaodeprotocolos");
                MySqlCommand command = new MySqlCommand("SELECT f.nome_Func FROM funcionarios f INNER JOIN setor s ON s.id = f.id_Setor WHERE `id`= @selectedValue", conexão);
                command.Parameters.Add(new MySqlParameter("selectedValue", selectedValue));
                conexão.Open();
                
                MySqlDataReader reader = command.ExecuteReader();

                //Limpa o dropdown list antes de preencher.
                funcionarios.Items.Clear();

                //Preenche o dropdown list com os resultados da consulta.
                while (reader.Read())
                {
                    ListItem item = new ListItem();
                    item.Text = reader["nome_Func"].ToString();
                    item.Value = reader["nome_Func"].ToString();
                    funcionarios.Items.Add(item);
                }

                conexão.Close();
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
          
            DateTime horaagora = DateTime.Today;
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            string arquivo = "";
            if (arqui.HasFile)
            {
                var FileExtension = Path.GetExtension(arqui.PostedFile.FileName).Substring(1);
                arquivo = Guid.NewGuid() + "." + FileExtension;
                arqui.SaveAs(Server.MapPath("~") + "/Anexos/" + arquivo);
            }


            string mensagem = mensagema.Text;
            string assunto = assuntos.Text;
            int matricularemetente = Convert.ToInt32(Session["usuariologado"].ToString()); ;
            int matriculadestinatario = Convert.ToInt32(funcionarios.SelectedValue);


            connection.Open();
            var comando = new MySqlCommand($@"INSERT INTO chat (matricula_remetente,matricula_destinatario,assunto,mensagem,anexo,hora) VALUES (@matricula_remetente,@matricula_destinatario,@assunto,@mensagem,@anexo,@hora)", connection);
            comando.Parameters.Add(new MySqlParameter("matricula_remetente", matricularemetente));
            comando.Parameters.Add(new MySqlParameter("matricula_destinatario", matriculadestinatario));
            comando.Parameters.Add(new MySqlParameter("assunto", assunto));
            comando.Parameters.Add(new MySqlParameter("mensagem", mensagem));
            comando.Parameters.Add(new MySqlParameter("anexo", arquivo));
            comando.Parameters.Add(new MySqlParameter("hora", horaagora));
            comando.ExecuteNonQuery();
            connection.Close();

           

        }

        protected void setores_SelectedIndexChanged(object sender, EventArgs e)
        {
            string selectedValue = setores.SelectedValue;

            //Conecta com o banco de dados e realiza a consulta.
            MySqlConnection conexão = new MySqlConnection("Server=127.0.0.1;User ID=root;Password=;Database=gestaodeprotocolos");
            MySqlCommand command = new MySqlCommand("SELECT f.nome_Func FROM funcionarios f INNER JOIN setor s ON s.id = f.id_Setor WHERE `id`= @selectedValue", conexão);
            command.Parameters.AddWithValue("@selectedValue", selectedValue);

            conexão.Open();
            MySqlDataReader reader = command.ExecuteReader();

            //Limpa o dropdown list antes de preencher.
            funcionarios.Items.Clear();

            //Preenche o dropdown list com os resultados da consulta.
            while (reader.Read())
            {
                ListItem item = new ListItem();
                item.Text = reader["nome_Func"].ToString();
                item.Value = reader["nome_Func"].ToString();
                funcionarios.Items.Add(item);
            }

            conexão.Close();
        }
    }
}