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
            if (!IsPostBack)
            {
                string[] arquivos = Directory.GetFiles(Server.MapPath("~/Arquivos"));
                List<string> miniaturas = new List<string>();
                foreach (string arquivo in arquivos)
                {
                    if (Path.GetExtension(arquivo).ToLower() == ".pdf")
                    {
                        string miniatura = GerarMiniatura(arquivo);
                        if (!string.IsNullOrEmpty(miniatura))
                        {
                            miniaturas.Add(miniatura);
                        }
                    }
                }
                rptMiniaturas.DataSource = miniaturas;
                rptMiniaturas.DataBind();
            }
        }

        private string GerarMiniatura(string arquivo)
        {
            string miniatura = string.Empty;
            try
            {
                GhostscriptVersionInfo gvi = new GhostscriptVersionInfo(@"C:\Program Files\gs\gs9.53.3\bin\gswin64c.exe");
                using (var rasterizer = new GhostscriptRasterizer())
                {
                    //rasterizer.Open(arquivo, gvi, false);
                    //Image img = rasterizer.GetPage(100, 100, 1);
                    //using (MemoryStream ms = new MemoryStream())
                    //{
                    //    img.Save(ms, System.Drawing.Imaging.ImageFormat.Png);
                    //    miniatura = "data:image/png;base64," + Convert.ToBase64String(ms.ToArray());
                    //}
                }
            }
            catch (Exception ex)
            {
                miniatura = string.Empty;
            }
            return miniatura;
        }

        protected void rptMiniaturas_ItemDataBound(object sender, RepeaterItemEventArgs e)
        {
            if (e.Item.ItemType == ListItemType.Item || e.Item.ItemType == ListItemType.AlternatingItem)
            {
                string miniatura = e.Item.DataItem.ToString();
                Image imgMiniatura = e.Item.FindControl("imgMiniatura") as Image;
                imgMiniatura.Attributes["onclick"] = "MostrarPDF('" + miniatura + "')";
            }
        }
    }
}