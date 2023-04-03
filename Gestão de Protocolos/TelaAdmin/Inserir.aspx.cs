using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestão_de_Protocolos.TelaAdmin
{
    public partial class Inserir : System.Web.UI.Page
    {
        private MySqlConnection connection;
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void setores_SelectedIndexChanged(object sender, EventArgs e)
        {
            
        }

        protected void inserir_Click(object sender, EventArgs e)
        {
            connection = new MySqlConnection("Server = 127.0.0.1; User ID = root; Password=;Database=unibr");
            connection.Open();
            var comando = new MySqlCommand($@"INSERT INTO `funcionarios`(`cargo`, `nome_Func`, `senha`, `id_Setor`) VALUES(@cargo, @nome_Func, @senha, @id_Setor)", connection);
            comando.Parameters.Add(new MySqlParameter("cargo", Cargo.Text));
            comando.Parameters.Add(new MySqlParameter("nome_Func", nome.Text));
            comando.Parameters.Add(new MySqlParameter("senha", psw.Text));
            comando.Parameters.AddWithValue("id_Setor", setores.SelectedValue);
            comando.ExecuteNonQuery();
            SiteMaster.ExibirAlert(this, "Funcionario cadastrado com sucesso!", "TelaDeAdmin.aspx");

            connection.Close();
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("TelaDeAdmin.aspx");
        }
    }
}