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
        public static int setores;
        protected void Page_Load(object sender, EventArgs e)
        {
            

        }

        protected void Unnamed_Click(object sender, EventArgs e)
        {
            EMPRESA.Visible = false;
           divSETORES.Visible = true;
        }

        protected void Unnamed_Click1(object sender, EventArgs e)
        {
            EMPRESA.Visible = true;
            divSETORES.Visible = false;
        }

        protected void Numerodesetores_TextChanged(object sender, EventArgs e)
        {
           
        }

        protected void Unnamed_Click2(object sender, EventArgs e)
        {
            
            aqui.Visible = true;
            setores = Convert.ToInt32(Numerodesetores.Text);
            CONTINU.Enabled = false;
            
        }

        protected void Confirm_Click(object sender, EventArgs e)
        {

            setores = setores - 1;

            setor.Text = "";
            id.Text = "";
            if (setores==0)
            {
                setor.Text = "deu certo cabação";
            }



        }
    }
}