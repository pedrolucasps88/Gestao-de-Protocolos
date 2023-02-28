﻿using MySqlConnector;
using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestão_de_Protocolos.TelaPrincipal
{
    public partial class TelaPrincipal : System.Web.UI.Page
    {
        private MySqlConnection connection;

        protected void Page_Load(object sender, EventArgs e)
        {


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
                arqui.SaveAs("Anexos/" + arquivo);
            }
            

            string mensagem = mensagema.Text;
            string assunto = assuntos.Text;
            int matricularemetente=1;
            int matriculadestinatario=2;


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
    }
}