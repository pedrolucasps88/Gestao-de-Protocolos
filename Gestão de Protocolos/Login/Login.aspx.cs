using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;
using System.Data.SqlClient;
using System.Windows.Forms;

namespace Gestão_de_Protocolos.Login
{
    public partial class Login : System.Web.UI.Page
    {

      
        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btngo_Click(object sender, EventArgs e)
        {

            string bd = txtbanco.Text;
            string connectionString = "Server=127.0.0.1;User ID=root;Password=;Database="+bd+"";
            string id_funcionario = txtid_funcionario.Text;
             string senha_funcionario = txtpassword.Text;
            string cnpj = txt_cnpj.Text;
            string conexao_2 = "server = localhost; user id = root; password =; Database= empresas_cadastradas";


            using (var connection = new MySqlConnection(conexao_2))
            {
                connection.Open();

                string procurar = "SELECT COUNT(*) FROM empresas WHERE cnpj = @cnpj";
                var commando_2 = new MySqlCommand(procurar, connection);
                commando_2.Parameters.AddWithValue("@cnpj", cnpj);

                int resultado_1 = Convert.ToInt32(commando_2.ExecuteScalar());
                if (resultado_1 > 0)
                {
                    lbl_aviso.Text = "Empresa encontrada no sistema!";
                }
                else
                {
                    lbl_aviso.Text = "Empresa não encontrada no sistema!";
                }
            }


            using (var connection = new MySqlConnection(connectionString))
            {
                connection.Open();
                
                string sql = "SELECT COUNT(*) FROM funcionarios WHERE id_funcionario = @id_funcionario AND senha_funcionario = @senha_funcionario";
                var command = new MySqlCommand(sql, connection);
                command.Parameters.AddWithValue("@id_funcionario", id_funcionario);
                command.Parameters.AddWithValue("@senha_funcionario", senha_funcionario);

                int result = Convert.ToInt32(command.ExecuteScalar());
                if (result > 0)
                {
                    lbl_aviso2.Text = "Login realizado com sucesso!";
                }
                else
                {
                    lbl_aviso2.Text ="Id do funcionário ou senha incorretos.";
                }
            }




         

          



        }
    }
}







   