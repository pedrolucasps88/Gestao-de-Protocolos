using MySqlConnector;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestão_de_Protocolos.DocumentosPadroes
{
    public partial class DocumentosPadroes : System.Web.UI.Page
    {
        private MySqlConnection connection;
       public string nomeFunci;
       public int id_setor;
       public string nome_setor;
        protected void Page_Load(object sender, EventArgs e)
        {
           
            if (Session["usuariologado"] == null)
            {
                Response.Redirect("Login.aspx");

            }
            else
            {

            }
            connection = new MySqlConnection(SiteMaster.ConnectionString);
            connection.Open();
            MySqlCommand command = new MySqlCommand("SELECT f.nome_Func, s.id , s.nome_setor FROM funcionarios f INNER JOIN setor s ON f.id_Setor=s.id WHERE `Matricula_Func`="+Session["usuariologado"].ToString(), connection);
            using (var reader = command.ExecuteReader())
            {
                while (reader.Read())
                {
                    nome_setor = reader.GetString("nome_setor");
                    id_setor = reader.GetInt32("id");
                    nomeFunci = reader.GetString("nome_Func");
                }
            }
            nome.Text = nomeFunci;
            setor.Text = nome_setor;
            string pasta = Server.MapPath("~/DocumentosPadroes/Thumbs/"+ nome_setor);
            string[] arquivos = Directory.GetFiles(pasta);

            for (int i = 0; i < arquivos.Length; i++)
            {
                string nomeArquivo = Path.GetFileName(arquivos[i]);
                if (Path.GetExtension(nomeArquivo) == ".png")
                {

                    docpadro.InnerHtml += "<br/> <a href='/DocumentosPadroes/Documentos/"+ nome_setor + "/" + nomeArquivo.Replace(".png", ".pdf") + "' target='_blank' ><img src='/DocumentosPadroes/Thumbs/" + nomeArquivo + "'style='width: 200px; height: 250px;'/> </a><br/> ";
                }
            }


        }
    }
}