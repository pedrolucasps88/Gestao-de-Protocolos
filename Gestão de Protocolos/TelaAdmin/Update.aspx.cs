using Gestão_de_Protocolos.Classes;
using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestão_de_Protocolos.TelaAdmin
{
    public partial class Update : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {
                var matricula = Request.QueryString["matricula"].ToString();
                connection = new MySqlConnection("Server = 127.0.0.1; User ID = root; Password=;Database=unibr");
                connection.Open();
                var comando = new MySqlCommand($@"SELECT `cargo`, `nome_Func`, `senha`, `id_Setor` FROM `funcionarios` WHERE `Matricula_Func`= "+ Convert.ToInt32(matricula), connection);
                int num_setor;
                using (var reader = comando.ExecuteReader())
                {
                    while (reader.Read())
                    {
                        Funcionarios recebidos = new Funcionarios();
                        Cargo.Text = reader.GetString("cargo");
                        nome.Text = reader.GetString("nome_Func");
                        psw.Text = reader.GetString("senha");
                        num_setor = reader.GetInt32("id_Setor");
                        setores.SelectedValue = Convert.ToString(num_setor);
                    }
                }
               
                      
            }
        }

        protected void update_Click(object sender, EventArgs e)
        {
            var matricula = Request.QueryString["matricula"].ToString();
            connection = new MySqlConnection("Server = 127.0.0.1; User ID = root; Password=;Database=unibr");
            connection.Open();
            var comando = new MySqlCommand($@"UPDATE `funcionarios` SET `cargo`=@cargo,`nome_Func`=@nome_Func,`senha`=@senha,`id_Setor`=@id_Setor WHERE `Matricula_Func`="+ Convert.ToInt32(matricula), connection);
            comando.Parameters.Add(new MySqlParameter("cargo", Cargo.Text));
            comando.Parameters.Add(new MySqlParameter("nome_Func", nome.Text));
            comando.Parameters.Add(new MySqlParameter("senha", psw.Text));
            comando.Parameters.AddWithValue("id_Setor", setores.SelectedValue);
            comando.ExecuteNonQuery();
            SiteMaster.ExibirAlert(this, "Dados do Funcionario atualizado com sucesso!", "TelaDeAdmin.aspx");

            connection.Close();

        }

        protected void setores_SelectedIndexChanged(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("TelaDeAdmin.aspx");
        }
    }
}