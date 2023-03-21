using System;
using System.Collections.Generic;
using System.IO;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestão_de_Protocolos.TelaAdmin
{
    public partial class NovoDoc : System.Web.UI.Page
    {
        public static string setorsele;
        protected void Page_Load(object sender, EventArgs e)
        {
            if (!IsPostBack)
            {

                 setorsele = Request.QueryString["setor"].ToString();
                nome_set.Text = setorsele;
            }
        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            if (pngzin.HasFile)
            {
                var FileExtension = Path.GetExtension(pngzin.PostedFile.FileName).Substring(1);
                pngzin.SaveAs(Server.MapPath("~") + "/DocumentosPadroes/Thumbs/" + setorsele +"/"+ Nome_doc.Text + "." + FileExtension);
            }
            if (pdf.HasFile)
            {
                var FileExtension2 = Path.GetExtension(pdf.PostedFile.FileName).Substring(1);
                pdf.SaveAs(Server.MapPath("~") + "/DocumentosPadroes/Documentos/" + setorsele + "/" + Nome_doc.Text + "." + FileExtension2);
            }
            SiteMaster.ExibirAlert(this, "Documentos adicionados!", "TelaDeAdmin.aspx");
        }

        protected void voltar_Click(object sender, EventArgs e)
        {
            Response.Redirect("TelaDeAdmin.aspx");
        }
    }
}