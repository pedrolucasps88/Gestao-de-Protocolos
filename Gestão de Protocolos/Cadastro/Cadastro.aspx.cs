using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestão_de_Protocolos.Cadastro
{
    public partial class Cadastro : System.Web.UI.Page
    {
        protected void Page_Load(object sender, EventArgs e)
        {


        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            EMPRESA.Visible = false;
            SETORES.Visible = true;
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            EMPRESA.Visible = true;
            SETORES.Visible = false;
        }

        protected void Numerodesetores_TextChanged(object sender, EventArgs e)
        {
            aqui.Visible = true;
            aqui.InnerHtml= @" <div style='width: 600px; margin - left:10 %; margin - top:10 %; border: 5px solid black; '>
                 < div class='mb-3 mt-3'>
      <label for='NomeSetor'>Nome Setor:</label>
      <input type = 'text' class='form-control' id='setor' placeholder='Nome do Setor' name='Setor'/>
    </div>
    <div class='mb-3'>
      <label for='Email'>Email central:</label>
      <input type = 'email' class='form-control' id='email' placeholder='Email Aqui' name='Email'/>
    </div>
    <div class='form-check mb-3'>
      
        <asp:CheckBox Text = 'Assinatura online?' runat='server' />
     
    </div>";
        }
    }
}