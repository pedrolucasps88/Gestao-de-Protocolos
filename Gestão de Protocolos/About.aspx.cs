using System;
using System.Collections.Generic;
using System.Linq;
using System.Net.Mail;
using System.Net;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using Ubiety.Dns.Core;

namespace Gestão_de_Protocolos
{
    public partial class About : Page
    {


        public void botao_enviar_Click(object sender, EventArgs e)
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
                SiteMaster.ExibirAlert(this,"Enviado com sucesso!");
            }
            catch (Exception ex)
            {
                SiteMaster.ExibirAlert(this,"Não Enviado! "+ex.Message);
            }

            Response.Redirect("confirmacao.aspx");


        }

    }
}