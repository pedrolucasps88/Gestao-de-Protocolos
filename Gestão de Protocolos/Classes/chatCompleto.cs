using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

namespace Gestão_de_Protocolos.Classes
{
    public class chatCompleto
    {
        public int id { get; set; }
        public int remetente { get; set; }
        public string nomeremetente { get; set; }
        public string cargoreme { get; set; }
        public string setorreme { get; set; }
        public int destinatario { get; set; }
        public string nomedestinatario { get; set; }
        public string cargodesti { get; set; }
        public string setordesti { get; set; }

        public string assunto { get; set; }
        public string mensagem { get; set; }
        public string anexo { get; set; }

        public DateTime hora { get; set; }
    }
}