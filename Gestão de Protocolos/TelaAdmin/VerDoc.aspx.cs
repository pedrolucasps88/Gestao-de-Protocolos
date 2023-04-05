using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestão_de_Protocolos.TelaAdmin
{
    public partial class VerDoc : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                var setorsele = Request.QueryString["setor"].ToString();
                setor.Text = setorsele;
                string pasta = Server.MapPath("~/DocumentosPadroes/Thumbs/" + setorsele);
                string[] arquivos = Directory.GetFiles(pasta);

                for (int i = 0; i < arquivos.Length; i++)
                {
                    string nomeArquivo = Path.GetFileName(arquivos[i]);
                    if (Path.GetExtension(nomeArquivo) == ".png")
                    {

                        docpadro.InnerHtml += "<br/> <a href='../DocumentosPadroes/Documentos/" + setorsele + "/" + nomeArquivo.Replace(".png", ".pdf") + "' target='_blank' ><img src='../DocumentosPadroes/Thumbs/" + setorsele + "/" + nomeArquivo + "'style='width: 200px; height: 250px;'/> </a><br/> ";
                    }
                }
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            Response.Redirect("TelaDeAdmin.aspx");
        }
    }
}