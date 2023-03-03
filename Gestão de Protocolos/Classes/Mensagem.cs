using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Gestão_de_Protocolos.Classes
{
    public class Mensagem
    {

        public int remetente { get; set; }
        public int destinatario { get; set; }
        public string assunto { get; set; }
        public string mensagem { get; set; }
        public string anexo { get; set; }

        public DateTime hora { get; set; }
    }
}