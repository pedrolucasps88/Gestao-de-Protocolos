using MySqlConnector;
using System;
using System.Collections.Generic;
using System.Linq;
using System.Text.RegularExpressions;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

namespace Gestao_de_Protocolos.Login
{
    public partial class Login : System.Web.UI.Page
    {
        private MySqlConnection connection;
        public void Page_Load(object sender, EventArgs e)
        {

        }

        public static bool IsCNPJ(string cnpj)
        {
            int[] multiplicador1 = new int[12] { 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
            int[] multiplicador2 = new int[13] { 6, 5, 4, 3, 2, 9, 8, 7, 6, 5, 4, 3, 2 };
            int soma;
            int resto;
            string digito;
            string tempCnpj;
            cnpj = cnpj.Trim();
            cnpj = cnpj.Replace(".", "").Replace("-", "").Replace("/", "");
            if (cnpj.Length != 14)
                return false;
            tempCnpj = cnpj.Substring(0, 12);
            soma = 0;
            for (int i = 0; i < 12; i++)
                soma += int.Parse(tempCnpj[i].ToString()) * multiplicador1[i];
            resto = (soma % 11);
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = resto.ToString();
            tempCnpj = tempCnpj + digito;
            soma = 0;
            for (int i = 0; i < 13; i++)
                soma += int.Parse(tempCnpj[i].ToString()) * multiplicador2[i];
            resto = (soma % 11);
            if (resto < 2)
                resto = 0;
            else
                resto = 11 - resto;
            digito = digito + resto.ToString();
            //  return cnpj.EndsWith(digito); 
            return true;
        }

        public void btngo_Click(object sender, EventArgs e)
        {

            if (IsCNPJ(txtCnpj.Text))
            {
                //throw new Exception("CNPJ VÁLIDO");
                connection = new MySqlConnection(SiteMaster.ConnectionString);
                SiteMaster.ExibirAlert(this, "vamos verificar suas informações");

                connection.Open();

                string sql = "select count(*) FROM empresa_cadastrada WHERE CNPJ = 05552995000117";

                connection.Close();
                if (txtCnpj.Text == "05552995000117")
                {
                    SiteMaster.ExibirAlert(this, "Empresa cadastrada no sistema");

                }
                else
                {
                    SiteMaster.ExibirAlert(this, "Empresa não cadastrada no sistema");
                }
            }
            else
            {
                throw new Exception("CNPJ INVÁLIDO");
            }
        }
    }

}
