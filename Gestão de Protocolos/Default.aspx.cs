using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestão_de_Protocolos
{
    public partial class _Default : Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {

        }

        protected void Envio_Click(object sender, EventArgs e)
        {
            Response.Redirect("/TelaEnvio/TelaDeEnvio.aspx");
        }

        protected void CaixaE_Click(object sender, EventArgs e)
        {
            Response.Redirect("/Caixa de Entrada/CaixaDeEntrada.aspx");
        }
    }
}