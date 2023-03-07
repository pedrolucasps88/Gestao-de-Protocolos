using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.Security.Cryptography.X509Certificates;
using System.IO;
using iTextSharp.text;
using iTextSharp.text.pdf;
using Image = iTextSharp.text.Image;

namespace Gestão_de_Protocolos
{
    public partial class Teste : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if (fileUpload.HasFile)
            {
                string fileName = Path.GetFileName(fileUpload.PostedFile.FileName);
                string fileExtension = Path.GetExtension(fileName);

                if (fileExtension.ToLower() == ".pdf")
                {
                    string filePath = Server.MapPath("~/Anexos/" + fileName);
                    fileUpload.SaveAs(filePath);

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
                        lnkDownload.Text = "Clique aqui para baixar o arquivo carimbado";
                       
                        lnkDownload.Visible = true;
                        

                        this.ClientScript.RegisterStartupScript(
                        this.GetType(),
                        "Window" + Guid.NewGuid(),
                        "<script language='javascript'>window.open('" + "Anexos/" + fileName.Replace(".pdf", "") + "_carimbado.pdf" + "','_blank');</script>"
                     );
                    }
                }
                else
                {
                    //lblMessage.Text = "Por favor, selecione um arquivo PDF para carimbar.";
                }
            }
        }

    }
}