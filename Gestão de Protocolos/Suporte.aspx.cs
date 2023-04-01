using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Net;
using System.Net.Mail;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestão_de_Protocolos
{
    public partial class Suporte : System.Web.UI.Page
    {
        private MySqlConnection connection3;
        protected void Page_Load(object sender, EventArgs e)
        {
            int num_matricu;
            connection3 = new MySqlConnection(SiteMaster.ConnectionString);
            connection3.Open();
            MySqlCommand commandinho = new MySqlCommand("SELECT f.Matricula_Func,f.cargo, f.nome_Func,s.nome_setor FROM funcionarios f INNER JOIN setor s ON f.id_Setor=s.id WHERE `Matricula_Func`=" + Session["usuariologado"].ToString(), connection3);
            using (var reader1 = commandinho.ExecuteReader())
            {
                while (reader1.Read())
                {

                    nome1.Text = "" + " " + reader1.GetString("nome_Func");
                    Label1.Text = reader1.GetString("nome_Func");
                    cargo.Text = reader1.GetString("cargo");
                    setor.Text = reader1.GetString("nome_setor");
                    num_matricu = reader1.GetInt32("Matricula_Func");
                    matricula.Text = Convert.ToString(num_matricu);
                }

            }


        }

        protected void botao_enviar_Click(object sender, EventArgs e)
        {
            string nome = txtNome.Text;
            string assunto = Assunto.SelectedValue;
            string detalhes = TextBox1.Text;


            // Configure as credenciais do remetente do e-mail
            string remetente = "0000887274@senaimgaluno.com.br";
            string destinatario = "danieldssc2204@gmail.com";
            string senha = "bombardino12";

            var smtpClient = new SmtpClient("smtp.gmail.com");
            smtpClient.Port = 587;
            smtpClient.UseDefaultCredentials = false;
            smtpClient.EnableSsl = true;
            smtpClient.Timeout = 10000;
            smtpClient.DeliveryMethod = SmtpDeliveryMethod.Network;
            smtpClient.Credentials = new NetworkCredential(remetente, senha);

            var mailMessage = new MailMessage();
            mailMessage.From = new MailAddress(remetente);
            mailMessage.To.Add(destinatario);
            mailMessage.Subject = assunto;
            mailMessage.Body = detalhes;

            try
            {
                smtpClient.Send(mailMessage);
                SiteMaster.ExibirAlert(this, "Enviado com sucesso!");
            }
            catch (Exception ex)
            {
                SiteMaster.ExibirAlert(this, "Não Enviado! " + ex.Message);
            }

            Response.Redirect("confirmacao.aspx");
        }
    }
}