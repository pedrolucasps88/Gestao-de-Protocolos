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

       string connectionString = "Server=127.0.0.1;User ID=root;Password=;Database=empresa_pablo";

        protected void Page_Load(object sender, EventArgs e)
        {

        }
        protected void btngo_Click(object sender, EventArgs e)
        {
             string id_setor = txtid_setor.Text;
             string senha_setor = txtpassword.Text;
            
            using (var connection = new MySqlConnection(connectionString))
            {
                connection.Open();

                string sql = "SELECT COUNT(*) FROM setores WHERE id_setor = @id_setor AND senha_setor = @senha_setor";
                var command = new MySqlCommand(sql, connection);
                command.Parameters.AddWithValue("@id_setor", id_setor);
                command.Parameters.AddWithValue("@senha_setor", senha_setor);

                int result = (int)command.ExecuteScalar();
                if (result > 0)
                {
                    lbl_aviso.Text = "Login realizado com sucesso!";
                }
                else
                {
                    lbl_aviso.Text ="Id do setor ou senha incorretos.";
                }
            }



        }
    }
}







   