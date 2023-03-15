using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;
using System.Data.SqlClient;
using System.Windows.Forms;
//using Serilog;

namespace Gestão_de_Protocolos.Login
{
    public partial class Login : System.Web.UI.Page
    {

      
        protected void Page_Load(object sender, EventArgs e)
        {
           // Session["usuariologado"] = Convert.ToInt32(txtid_funcionario.Text);
        }
        protected void btngo_Click(object sender, EventArgs e)
        {

            string bd = txtbanco.Text;
            string connectionString = "Server=127.0.0.1;User ID=root;Password=;Database=gestaodeprotocolos";
            string id_funcionario = txtid_funcionario.Text;
             string senha_funcionario = txtpassword.Text;
           // Log.Logger = new LoggerConfiguration().WriteTo.File("C:\\Users\\Desktop\\Nova pasta (6)\\Gestao-de-Protocolos\\myapp.txt", restrictedToMinimumLevel: Serilog.Events.LogEventLevel.Information, rollingInterval: RollingInterval.Hour).CreateLogger();
            try
            {
                using (var connection = new MySqlConnection(connectionString))
                {
                    connection.Open();
                   // Log.Information("Iniciando pesquisa no Banco de Dados!");
                    string sql = "SELECT * FROM `funcionarios` WHERE Matricula_Func = @matricula_func AND senha = @senha";
                    var command = new MySqlCommand(sql, connection);
                    command.Parameters.AddWithValue("@matricula_func", Convert.ToInt32(id_funcionario));
                    command.Parameters.AddWithValue("@senha",senha_funcionario);
                   // Log.Information("verificação dos parametros!");

                    int result = Convert.ToInt32(command.ExecuteScalar());
                    if (result > 0)
                    {
                        lbl_aviso.Text = "Login realizado com sucesso!";
                        Session["usuariologado"] = Convert.ToInt32(txtid_funcionario.Text);
                        //Response.Redirect("../TelaPrincipal/TelaPrincipal.aspx");
                        Response.Redirect("../THome/Home.aspx");
                    }
                    else
                    {
                        lbl_aviso.Text = "Id do funcionário ou senha incorretos.";
                    }
                   // Log.Information("verificação concluida!");
                   // Log.Information("finalizando processo de login!");
                }
            }
            catch (Exception erro)
            {

              //  Log.Error("Deu ruim" + erro.Message);
            }
            finally
            {
                //Log.Warning("FIM!");
            }




        }
    }
}







   