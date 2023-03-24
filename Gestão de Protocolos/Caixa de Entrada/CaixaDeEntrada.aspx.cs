using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using Image = iTextSharp.text.Image;
using MySqlConnector;
using System;
using Gestão_de_Protocolos.Classes;

namespace Gestão_de_Protocolos.Caixa_de_Entrada
{
    public partial class CaixaDeEntrada1 : System.Web.UI.Page
    {
        private MySqlConnection connection;
        private MySqlConnection connection2;
        protected void Page_Load(object sender, EventArgs e)
        {

            if (Session["usuariologado"] == null)
            {
                Response.Redirect("../Login.aspx");
            }
            else
            {
                Session["usuariologado"].ToString();
            }

            connection = new MySqlConnection(SiteMaster.ConnectionString);
            connection.Open();
            var comando = new MySqlCommand($@"SELECT c.matricula_remetente,f.nome_Func,f.cargo,s.nome_setor,c.matricula_destinatario,c.assunto,c.mensagem,c.anexo,c.hora 
                                           FROM chat c
                                           INNER JOIN funcionarios f ON c.matricula_remetente= f.Matricula_Func
                                           INNER JOIN setor s on f.id_Setor=s.id
                                           WHERE `matricula_destinatario`=" + Session["usuariologado"].ToString(), connection);
            List<Mensagem> mensagemrece = new List<Mensagem>();


            using (var reader = comando.ExecuteReader())
            {
                while (reader.Read())
                {
                    Mensagem recebidos = new Mensagem();
                    recebidos.destinatario = reader.GetInt32("matricula_remetente");
                    recebidos.nomeremetente = reader.GetString("nome_Func");
                    recebidos.cargo = reader.GetString("cargo");
                    recebidos.setorreme = reader.GetString("nome_setor");
                    recebidos.assunto = reader.GetString("assunto");
                    recebidos.mensagem = reader.GetString("mensagem");
                    recebidos.anexo = reader.GetString("anexo");
                    recebidos.hora = reader.GetDateTime("hora");
                    mensagemrece.Add(recebidos);
                }
            }

            Session["mensagens"] = mensagemrece;
            GridView1.DataSource = mensagemrece;
            GridView1.DataBind();
        }

        protected void GridView1_RowCommand(object sender, GridViewCommandEventArgs e)
        {

            int index = Convert.ToInt32(e.CommandArgument);
            var mensagem = ((List<Mensagem>)Session["mensagens"]);
            if (e.CommandName == "AssinaturaDigital")
            {
                string fileName = mensagem[index].anexo;


                string fileExtension = Path.GetExtension(fileName);

                if (fileExtension.ToLower() == ".pdf")
                {
                    string filePath = Server.MapPath("~/Anexos/" + fileName);


                    using (Stream inputPdfStream = new FileStream(filePath, FileMode.Open, FileAccess.Read, FileShare.Read))
                    using (Stream outputPdfStream = new FileStream(filePath.Replace(".pdf", "") + "_carimbado.pdf", FileMode.Create, FileAccess.Write, FileShare.None))
                    {
                        PdfReader reader = new PdfReader(inputPdfStream);
                        PdfStamper stamper = new PdfStamper(reader, outputPdfStream);

                        Image image = Image.GetInstance(Server.MapPath("~/Anexos/carimbo.png"));
                        image.ScaleAbsolute(400, 400); // ajuste o tamanho da imagem conforme necessário

                        int numPages = reader.NumberOfPages;
                        for (int i = 1; i <= numPages; i++)
                        {
                            Rectangle pageSize = reader.GetPageSize(i);
                            PdfContentByte content = stamper.GetOverContent(i);
                            image.SetAbsolutePosition(pageSize.Width - 280, 40); // ajuste a posição do carimbo conforme necessário
                            content.AddImage(image);
                        }

                        stamper.Close();
                        reader.Close();

                        // Exibe um link para download do arquivo carimbado

                        this.ClientScript.RegisterStartupScript(
                        this.GetType(),
                        "Window" + Guid.NewGuid(),
                        "<script language='javascript'>window.open('" + "../Anexos/" + fileName.Replace(".pdf", "") + "_carimbado.pdf" + "','_blank');</script>"

                     );
                    }
                }
                else
                {
                    //lblMessage.Text = "Por favor, selecione um arquivo PDF para carimbar.";
                }
            }

        }

        protected void GridView1_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var index = e.Row.RowIndex;
                var mensagem = ((List<Mensagem>)Session["mensagens"])[index];

                e.Row.Cells[6].Text = "<a href='../Anexos/" + mensagem.anexo + "' target='_blank'>Download</a>";
            }
        }

        protected void RECEBIDOS_Click(object sender, EventArgs e)
        {
            GridView1.Visible = true;
            GridView2.Visible = false;
            TITU.Text = "ARQUIVOS/MENSAGENS RECEBIDOS";
        }

        protected void ENVIADOS_Click(object sender, EventArgs e)
        {
            GridView1.Visible = false;
            GridView2.Visible = true;
            TITU.Text = "ARQUIVOS/MENSAGENS ENVIADOS";
            connection2 = new MySqlConnection(SiteMaster.ConnectionString);
            connection2.Open();
            var comando = new MySqlCommand($@"SELECT c.matricula_destinatario,f.nome_Func,f.cargo cargodesti,s.nome_setor,c.assunto,c.mensagem,c.anexo,c.hora 
                                           FROM chat c
                                           INNER JOIN funcionarios f ON c.matricula_destinatario= f.Matricula_Func
                                           INNER JOIN setor s on f.id_Setor=s.id
                                           WHERE matricula_remetente =" + Session["usuariologado"].ToString(), connection2);
            List<chatCompleto> mensagemenviada = new List<chatCompleto>();


            using (var reader = comando.ExecuteReader())
            {
                while (reader.Read())
                {
                    chatCompleto enviados = new chatCompleto();
                    enviados.destinatario = reader.GetInt32("matricula_destinatario");
                    enviados.nomedestinatario = reader.GetString("nome_Func");
                    enviados.cargodesti = reader.GetString("cargodesti");
                    enviados.setordesti = reader.GetString("nome_setor");
                    enviados.assunto = reader.GetString("assunto");
                    enviados.mensagem = reader.GetString("mensagem");
                    enviados.anexo = reader.GetString("anexo");
                    enviados.hora = reader.GetDateTime("hora");
                    mensagemenviada.Add(enviados);
                }
            }

            Session["enviado"] = mensagemenviada;
            GridView2.DataSource = mensagemenviada;
            GridView2.DataBind();
        }

        protected void GridView2_RowCommand(object sender, GridViewCommandEventArgs e)
        {

        }

        protected void GridView2_RowDataBound(object sender, GridViewRowEventArgs e)
        {
            if (e.Row.RowType == DataControlRowType.DataRow)
            {
                var index = e.Row.RowIndex;
                var mensagem = ((List<chatCompleto>)Session["enviado"])[index];

                e.Row.Cells[6].Text = "<a href='../Anexos/" + mensagem.anexo + "' target='_blank'>Download</a>";
            }
        }
    }
}