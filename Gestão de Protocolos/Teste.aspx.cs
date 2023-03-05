using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using iTextSharp.text;
using iTextSharp.text.pdf;
using System.Security.Cryptography.X509Certificates;
using System.IO;
using iTextSharp.text.pdf.security;
using Org.BouncyCastle.Crypto.Generators;
using Org.BouncyCastle.Crypto;
using Org.BouncyCastle.OpenSsl;
using Org.BouncyCastle.Security;
using Image = iTextSharp.text.Image;

namespace Gestão_de_Protocolos
{
    public partial class Teste : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        private void CarimbarPDF(string filePath)
        {
            // Cria uma nova instância do objeto PdfReader para ler o arquivo PDF
            PdfReader pdfReader = new PdfReader(filePath);

            // Cria uma nova instância do objeto MemoryStream para armazenar o PDF carimbado
            MemoryStream outputStream = new MemoryStream();

            // Cria uma nova instância do objeto PdfStamper para carimbar o PDF
            PdfStamper pdfStamper = new PdfStamper(pdfReader, outputStream);

            // Cria uma nova instância do objeto PdfContentByte para adicionar o carimbo ao PDF
            PdfContentByte pdfContentByte = pdfStamper.GetOverContent(1);

            // Define as informações do carimbo
            string text = "Assinado Digitalmente";
            BaseFont baseFont = BaseFont.CreateFont(BaseFont.HELVETICA, BaseFont.CP1252, BaseFont.NOT_EMBEDDED);
            Font font = new Font(baseFont, 12, Font.BOLD);
            Phrase phrase = new Phrase(text, font);
            Rectangle rectangle = new Rectangle(100, 100, 200, 200);

            // Adiciona o carimbo ao PDF
            ColumnText.ShowTextAligned(pdfContentByte, Element.ALIGN_CENTER, phrase, rectangle.Left, rectangle.Bottom, 0);

            // Finaliza o carimbo e salva o PDF
            pdfStamper.Close();

            // Salva o PDF carimbado em um arquivo
            File.WriteAllBytes(filePath, outputStream.ToArray());
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            //// Lê o arquivo enviado pelo usuário para um objeto MemoryStream
            //Stream fileStream = fileUpload.FileContent;
            //MemoryStream memoryStream = new MemoryStream();
            //fileStream.CopyTo(memoryStream);
            //memoryStream.Position = 0;

            //// Cria um objeto PdfReader a partir do MemoryStream
            //PdfReader pdfReader = new PdfReader(memoryStream);

            ////
            //// Cria uma chave privada e pública autoassinada
            //var keypair = CryptoHelper.GenerateRSAKeyPair(2048);
            //var certificate = CryptoHelper.GenerateSelfSignedCertificate(keypair, "CN=Exemplo de Certificado");

            //// Cria um objeto PdfStamper para adicionar a assinatura
            //PdfStamper pdfStamper = PdfStamper.CreateSignature(pdfReader, memoryStream, '\0');
            //PdfSignatureAppearance signatureAppearance = pdfStamper.SignatureAppearance;

            //// Define a posição da assinatura no arquivo
            //signatureAppearance.SetVisibleSignature(new Rectangle(100, 100, 200, 200), pdfReader.NumberOfPages, "signature");

            //// Define o texto que será exibido como a descrição da assinatura
            //string signerName = "Pedro Pirocão";
            //signatureAppearance.Layer2Text = "Assinado por " + signerName;

            //// Define o formato da assinatura
            //signatureAppearance.SignatureRenderingMode = PdfSignatureAppearance.RenderingMode.DESCRIPTION;

            //// Carrega o certificado digital do usuário
            //X509Certificate2 cert = null;
            //X509Store store = new X509Store(StoreLocation.CurrentUser);
            //store.Open(OpenFlags.ReadOnly);
            //X509Certificate2Collection collection = store.Certificates;
            //X509Certificate2Collection collection1 = collection.Find(X509FindType.FindBySubjectName, "ASSINATURA DO RH", true);
            //if (collection1.Count == 0)
            //    throw new Exception("Não foi possível encontrar o certificado digital.");
            //cert = collection1[0];
            //store.Close();

            //// Cria a assinatura digital
            //Org.BouncyCastle.X509.X509CertificateParser cp = new Org.BouncyCastle.X509.X509CertificateParser();
            //Org.BouncyCastle.X509.X509Certificate[] chain = new Org.BouncyCastle.X509.X509Certificate[] { cp.ReadCertificate(cert.RawData) };

            //IExternalSignature externalSignature = new X509Certificate2Signature(cert, "SHA-256");

            //MakeSignature.SignDetached(signatureAppearance, externalSignature, chain, null, null, null, 0, CryptoStandard.CMS);

            //// Salva o arquivo assinado em um novo MemoryStream
            //MemoryStream signedMemoryStream = new MemoryStream();
            //pdfReader.Close();
            //pdfStamper.Close();
            //memoryStream.CopyTo(signedMemoryStream);
            //signedMemoryStream.Position = 0;

            //// Faz o download do arquivo assinado
            //Response.ContentType = "application/pdf";
            //Response.AddHeader("content-disposition", "attachment;filename=signed.pdf");
            //Response.BinaryWrite(signedMemoryStream.ToArray());
            //Response.End();

            // Verificar se um arquivo foi selecionado
            //if (fileUpload.HasFile)
            //{
            //    // Ler o documento que será assinado
            //    byte[] documentBytes = fileUpload.FileBytes;

            //    // Criar uma chave RSA falsa para assinar o documento
            //    RsaKeyPairGenerator keyGenerator = new RsaKeyPairGenerator();
            //    keyGenerator.Init(new KeyGenerationParameters(new SecureRandom(), 2048));
            //    AsymmetricCipherKeyPair keyPair = keyGenerator.GenerateKeyPair();

            //    // Converter a chave para o formato PEM
            //    StringWriter stringWriter = new StringWriter();
            //    PemWriter pemWriter = new PemWriter(stringWriter);
            //    pemWriter.WriteObject(keyPair.Private);
            //    pemWriter.Writer.Flush();
            //    string privateKey = stringWriter.ToString();

            //    // Assinar o documento com a chave falsa
            //    ISigner signer = SignerUtilities.GetSigner("SHA256withRSA");
            //    signer.Init(true, keyPair.Private);
            //    signer.BlockUpdate(documentBytes, 0, documentBytes.Length);
            //    byte[] signature = signer.GenerateSignature();

            //    // Converter a assinatura para base64 para exibir na página web
            //    string base64Signature = Convert.ToBase64String(signature);

            //    // Exibir a assinatura na página web
            //    lblAssinatura.Text = base64Signature;

            if (fileUpload.HasFile)
            {
                // Define o diretório temporário onde o arquivo será salvo
                string tempPath = Path.Combine(Server.MapPath("~/Anexos"), fileUpload.FileName);

                // Salva o arquivo no diretório temporário
                fileUpload.SaveAs(tempPath);

                // Chama a função que irá carimbar o arquivo PDF
                CarimbarPDF(tempPath);

                // Remove o arquivo temporário após o processamento
                File.Delete(tempPath);
            }
        }
    }
}