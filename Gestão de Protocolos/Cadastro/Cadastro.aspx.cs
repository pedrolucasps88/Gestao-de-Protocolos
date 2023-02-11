using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using MySqlConnector;

namespace Gestão_de_Protocolos.Cadastro
{
    public partial class Cadastro : System.Web.UI.Page
    {


        public static int setores;
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void criarbd_Click(object sender, EventArgs e)
        {
            EMPRESA.Visible = false;
           divSETORES.Visible = true;
            string cnpj =txt_empresa_cnpj.Text;
            string bd = nome_empresa.Text;
            string connectionString = "server=localhost;user id=root;password=;";
            string createDbQuery = $"CREATE DATABASE IF NOT EXISTS  {bd};";

            string createTableQuery = $@"CREATE TABLE {bd}.setores (
                                        id_setor INT (2) PRIMARY KEY,
                                        nome_setor VARCHAR (200)
                                    );";

            string conexao_2 = "server = localhost; user id = root; password =; Database= empresas_cadastradas";
          

            using (var connection = new MySqlConnection(conexao_2))
            {
                connection.Open();
                string inserir = $"INSERT INTO empresas ( cnpj, nome_empresa) VALUES ('{cnpj}' ,'{bd}')";
                using (var command = new MySqlCommand(inserir, connection))
                {
                    int result = command.ExecuteNonQuery();
                    if (result == 1)
                    {
                        lbl_bd_aviso.Text = "Empresa Registrada no sistema!";

                    }
                    else
                    {
                        lbl_bd_aviso.Text = "Erro ao registrar a empresa no sistema!";

                    }
                }
            }




            using (var connection = new MySqlConnection(connectionString))
            {
                connection.Open();

                using (var command = new MySqlCommand(createDbQuery, connection))
                {
                    command.ExecuteNonQuery();
                }

                using (var command = new MySqlCommand(createTableQuery, connection))
                {
                    command.ExecuteNonQuery();
                }

            }


        }



        protected void voltar_Click(object sender, EventArgs e)
        {
            EMPRESA.Visible = true ;
            divSETORES.Visible = false;
        }


        protected void Numerodesetores_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void continuar_Click(object sender, EventArgs e)
        {
            
            aqui.Visible = true;
            setores = Convert.ToInt32(Numerodesetores.Text);
            continuar.Enabled = false;
            
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {

            string bd = nome_empresa.Text;
            string id_setor = id_SETOR.Text;
            string nome_setor = nome_Setor.Text;
            string connectionString = "server=localhost;user id=root;password=;Database=" + bd + "";


            using (var connection= new MySqlConnection(connectionString))
            {
                connection.Open();
                string query = $"INSERT INTO setores ( id_setor, nome_setor) VALUES ('{id_setor}' ,'{nome_setor}')";
                using (var command = new MySqlCommand(query, connection))
                {
                    int result = command.ExecuteNonQuery();
                    if (result == 1)
                    {
                        lbl_aviso.Text = "Setor cadastrado com sucesso!";
                        
                    }
                    else
                    {
                        lbl_aviso.Text = "Erro ao cadastrar o setor,tente novamente!";
                       
                    }
                }
            }

            setores = setores - 1;
            nome_Setor.Text = "";
            id_SETOR.Text = "";
            if (setores==0)
            {
                nome_Setor.Text = "deu certo cabação";
            }



        }
    }
}