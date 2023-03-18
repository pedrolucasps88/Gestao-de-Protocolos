using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;
using System.IO;
using Ghostscript.NET;
using Ghostscript.NET.Rasterizer;

namespace Gestão_de_Protocolos
{
    public partial class Teste : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {
            string pasta = Server.MapPath("~/DocumentosPadroes/Thumbs"); 
            string[] arquivos = Directory.GetFiles(pasta);

            for (int i = 0; i < arquivos.Length; i++)
            {
                string nomeArquivo = Path.GetFileName(arquivos[i]);
                if (Path.GetExtension(nomeArquivo) == ".png")
                {
                    
                     docpadro.InnerHtml +="<br/> <a href='/DocumentosPadroes/Documentos/"+ nomeArquivo.Replace(".png",".pdf") + "' target='_blank' ><img src='/test/"+ nomeArquivo +"'style='width: 200px; height: 250px;'/> </a><br/> ";
                }
            }


        }

    }
}