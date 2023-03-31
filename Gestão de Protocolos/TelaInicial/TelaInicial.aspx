<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaInicial.aspx.cs" Inherits="Gestão_de_Protocolos.TelaInicial.TelaInicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

  

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="Style.css" rel="stylesheet" />
    <script src="https://kit.fontawesome.com/8ca27dcaf9.js" crossorigin="anonymous"></script>
    <title></title>
    <style>
        .site-footer
{
  background-color:#26272b;
  padding:45px 0 20px;
  font-size:15px;
  line-height:24px;
  color:#737373;
}
.site-footer hr
{
  border-top-color:#bbb;
  opacity:0.5
}
.site-footer hr.small
{
  margin:20px 0
}
.site-footer h6
{
  color:#fff;
  font-size:16px;
  text-transform:uppercase;
  margin-top:5px;
  letter-spacing:2px
}
.site-footer a
{
  color:#737373;
}
.site-footer a:hover
{
  color:#3366cc;
  text-decoration:none;
}
.footer-links
{
  padding-left:0;
  list-style:none
}
.footer-links li
{
  display:block
}
.footer-links a
{
  color:#737373
}
.footer-links a:active,.footer-links a:focus,.footer-links a:hover
{
  color:#3366cc;
  text-decoration:none;
}
.footer-links.inline li
{
  display:inline-block
}
.site-footer .social-icons
{
  text-align:right
}
.site-footer .social-icons a
{
  width:40px;
  height:40px;
  line-height:40px;
  margin-left:6px;
  margin-right:0;
  border-radius:100%;
  background-color:#33353d
}
.copyright-text
{
  margin:0
}
@media (max-width:991px)
{
  .site-footer [class^=col-]
  {
    margin-bottom:30px
  }
}
@media (max-width:767px)
{
  .site-footer
  {
    padding-bottom:0
  }
  .site-footer .copyright-text,.site-footer .social-icons
  {
    text-align:center
  }
}
.social-icons
{
  padding-left:0;
  margin-bottom:0;
  list-style:none
}
.social-icons li
{
  display:inline-block;
  margin-bottom:4px
}
.social-icons li.title
{
  margin-right:15px;
  text-transform:uppercase;
  color:#96a2b2;
  font-weight:700;
  font-size:13px
}
.social-icons a{
  background-color:#eceeef;
  color:#818a91;
  font-size:16px;
  display:inline-block;
  line-height:44px;
  width:44px;
  height:44px;
  text-align:center;
  margin-right:8px;
  border-radius:100%;
  -webkit-transition:all .2s linear;
  -o-transition:all .2s linear;
  transition:all .2s linear
}
.social-icons a:active,.social-icons a:focus,.social-icons a:hover
{
  color:#fff;
  background-color:#29aafe
}
.social-icons.size-sm a
{
  line-height:34px;
  height:34px;
  width:34px;
  font-size:14px
}
.social-icons a.facebook:hover
{
  background-color:#3b5998
}
.social-icons a.twitter:hover
{
  background-color:#00aced
}
.social-icons a.linkedin:hover
{
  background-color:#007bb6
}
.social-icons a.dribbble:hover
{
  background-color:#ea4c89
}
@media (max-width:767px)
{
  .social-icons li.title
  {
    display:block;
    margin-right:0;
    font-weight:600
  }
}
    </style>
</head>
<%--#C9D6F4 // #A3ADD4--%>
<body style="background-image: radial-gradient(circle, #353639, #292a2d, #1e1e21, #131315, #010104);">

    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-sm bg-transparent navbar-transparent sticky-top" style="color: transparent;">
            <div class="container-fluid">
                <a class="navbar-brand" href="#" style="margin-left: 42%; color: aliceblue; font-size: 26px">Gestão de Protocolos</a>
                <a class="" href="/Login/Login.aspx" style="margin-left:20%; color:aliceblue; font-size: 16px">LOGIN</a>
            </div>
        </nav>

        <!-- Carousel -->
        <div id="demo" class="carousel slide" data-bs-ride="carousel" style="width: 100%; height: 600px;">

            <!-- Indicators/dots -->
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#demo" data-bs-slide-to="0" class="active"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="1"></button>
                <button type="button" data-bs-target="#demo" data-bs-slide-to="2"></button>
            </div>

            <!-- The slideshow/carousel -->
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="muitodoc.jpg" alt="Los Angeles" class="d-block" style="width: 100%; height: 600px" />
                    <div class="carousel-caption">
                        <h3>Gestão segura de documentos</h3>
                        <p>Nosso software vai proporcionar menos papelada</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="assinatura-digital.jpg" alt="Chicago" class="d-block" style="width: 100%; height: 600px">
                    <div class="carousel-caption">
                        <h3 style="color:black">Agilizar processos</h3>
                        <p style="color:black">Implementando nosso software sua empresa terá mais eficacia e eficiencia </p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="documentos-espalhados.jpg" alt="New York" class="d-block" style="width: 100%; height: 600px">
                    <div class="carousel-caption">
                        <h3>Assinatura Online de documentos</h3>
                        <p>Utilize assinatura digitais de documentos na sua empresa, diminuindo o tempo de trabalho manual e burocracias</p>
                    </div>
                </div>
            </div>

            <!-- Left and right controls/icons -->
            <button class="carousel-control-prev" type="button" data-bs-target="#demo" data-bs-slide="prev">
                <span class="carousel-control-prev-icon"></span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#demo" data-bs-slide="next">
                <span class="carousel-control-next-icon"></span>
            </button>
        </div>

        <div style="width: 100%; height: 300px; margin-top: 0%; background-color: white">
            <h5 style="margin-left: 60%; top: 20%;position:relative;">SUA EMPRESA JA TA CADASTRADA?FAÇA O LOGIN </h5>
            <div class="text-box">

                <a href="/Login/Login.aspx" class="btn btn-white btn-animate" style="margin-left: 70%; margin-top: 7%;">Login >></a>
            </div>
                <h5 style="margin-left: 10%; top: 10%;position:relative;">QUER VERIFICAR O ORÇAMENTO PARA SUA EMPRESA? </h5>
            <div class="text-box">
                <a href="../Cadastramento.aspx" class="btn2 btn-white btn-animate" style="margin-left: 18%; margin-top: 5%;"><< Orçamento >></a>
            </div>
            <asp:Image ImageUrl="~/TelaInicial/seta.png" runat="server" class="seta" style="margin-left:50%" />
        </div>
         
        
       
        <div style="width: 99%; height: 400px; margin-top: 5%;margin-left:2%; background-color: transparent">
            <h2 style="color: aliceblue">Gestão de Arquivos Fácil e Segura</h2>
            <p style="color: aliceblue">
                Com nosso site de gestão de arquivos, você pode enviar e receber arquivos com facilidade e segurança. Nossos recursos incluem:
      <br />
                Upload e download de arquivos
      <br />
                Gerenciamento de arquivos em nuvem
      <br />
                Acesso seguro com criptografia de ponta a ponta
      <br />
                Compatibilidade com diversos tipos de arquivos
            </p>
            <asp:Image ImageUrl="~/TelaInicial/caixa-de-entrada.png" runat="server" Class="arqui" Style="margin-left: 80%; margin-top: -15%; width: 200px; height: 200px" />
        </div>

        <div style="width: 100%; margin-top: -10%; height: 400px; background-color: white;">
            <asp:Image ImageUrl="~/arquivotela.jpg" runat="server" style="height:100%;width:500px;margin-left:0%;position:relative" />
            <h3 style="margin-top:-25%;margin-left:40%">CONTROLE SEUS ARQUIVOS E MELHORE O DESEMPENHO DA SUA EMPRESA</h3>
            <br />
            <p style="margin-left:40%">Envio e recebimento de arquivo com segurança garantida, automatizando processos de envio,recebimento,assinatura e controle</p>
        </div>
        <div style="width: 100%; height: 400px; margin-top: 5%; margin-left: 0.5%; background-color: transparent">

            <h3 style="color: white;margin-top:-2%;margin-left:35%">QUALIDADES DO SOFTWARE</h3>
            <asp:Image ImageUrl="~/TelaInicial/automacao.png" runat="server" Class="subi" Style="margin-left: 15%; margin-top: 15%; width: 200px; height: 200px; position: absolute" />
            <h3 style="margin-top: 20%; margin-left: 10%; color: white; position: absolute;">Automatização dos processos</h3>
            <asp:Image ImageUrl="~/TelaInicial/imediato.png" runat="server" Class="desce" Style="margin-left: 45%; margin-top: 0%; width: 200px; height: 200px; position: absolute" />
            <h3 style="margin-top: 20%; margin-left: 45%; color: white; position: absolute;">Serviço rapido</h3>
            <asp:Image ImageUrl="~/TelaInicial/escudo-seguro.png" runat="server" Class="outro" Style="margin-left: 75%; margin-top: 10%; width: 200px; height: 200px; position: absolute" />
            <h3 style="margin-top: 20%; margin-left: 74%; color: white; position: absolute;">Seguro e confiavel</h3>
        </div>

         <div style="width: 100%; margin-top:28%; height: 557px; background-color: white;">
            
            <h3 style="margin-top:-28%;margin-left:28%">PERSONALIZAÇÃO DO SOFTWARE POR EMPRESA</h3>
            <br />
              <p style="margin-left:5%">Inicialmente é feito um estudo da empresa e de sua estrutura interna de troca de informações e documentos,logo é implementada de forma personalizada e que busque melhorar o desempenho e automatizar o processo protocolal desta empresa </p>
             <div class="row">
                 <div style="margin-left:5%;margin-top:2%;width:300px;height:400px;position:absolute;border-radius:10px;z-index:1;background-image: radial-gradient(circle, #353639, #292a2d, #1e1e21, #131315, #010104);" >
                     <h5 style="color:white;margin-top:90%">Estudo dirigido por empresa</h5>
                     <p style="margin-top:10%;color:white">buscando entender a estrutura da empresa e buscando adequar da melhor forma o software</p>
                 </div>
                  <div style="margin-left:5%;margin-top:2%;width:300px;height:400px;position:absolute;border-radius:10px;z-index:1;background-image: radial-gradient(circle, #353639, #292a2d, #1e1e21, #131315, #010104);" >
                     <h5 style="color:white;margin-top:90%">Estudo dirigido por empresa</h5>
                     <p style="margin-top:10%;color:white">buscando entender a estrutura da empresa e buscando adequar da melhor forma o software</p>
                 </div>
                  <div style="margin-left:40%;margin-top:2%;width:300px;height:400px;position:absolute;border-radius:10px;z-index:1;background-image: radial-gradient(circle, #353639, #292a2d, #1e1e21, #131315, #010104);" >
                     <h5 style="color:white;margin-top:90%">Implementação rapida</h5>
                     <p style="margin-top:10%;color:white">Implementamos o software na empresa de forma segura,rapida e em etapas para que não aja problemas</p>
                 </div>
                  <div style="margin-left:75%;margin-top:2%;width:300px;height:400px;position:absolute;border-radius:10px;z-index:1;background-image: radial-gradient(circle, #353639, #292a2d, #1e1e21, #131315, #010104);" >
                     <h5 style="color:white;margin-top:90%">Melhora no desempenho</h5>
                     <p style="margin-top:10%;color:white">software pensado para agilizar e automatizar processos garantindo um serviço mais eficaz</p>
                 </div>
             <asp:Image ImageUrl="~/estudodiri.jpg" runat="server" style="margin-left:5%;margin-top:2%;width:300px;height:250px;z-index:3;"/>
             <asp:Image ImageUrl="~/Implementação.jpg" runat="server"  style="margin-left:12.5%;margin-top:2%;width:300px;height:250px;z-index:3;" />
             <asp:Image ImageUrl="~/desempenho.jpg" runat="server" style="margin-left:12.5%;margin-top:2%;width:300px;height:250px;z-index:3;" />
                 </div>
        </div>

        <div style="width: 100%; height: 300px; margin-top: 5%; background-color: transparent;text-align:center">
            <h2 style="color:white;margin-left:0%">Ficou Interessado pelo nosso software?</h2>
            <h5 style="color:white;margin-left:0%">Deixe-nos fazer parte da historia da sua empresa!</h5>
            <p style="color:white;margin-left:0%">clique no botão a baixo para verificar o orçamento!</p>
             <div class="text-box">
                <a href="../Cadastramento.aspx" class="btn2 btn-white btn-animate" style="margin-left: -8.5%; margin-top: 5%;"><< Orçamento >></a>
            </div>
        </div>

         <!-- Site footer -->
    <footer class="site-footer">
      <div class="container">
        <div class="row">
          <div class="col-sm-12 col-md-6">
            <h6>About</h6>
            <p class="text-justify">Scanfcode.com <i>CODE WANTS TO BE SIMPLE </i> is an initiative  to help the upcoming programmers with the code. Scanfcode focuses on providing the most efficient code or snippets as the code wants to be simple. We will help programmers build up concepts in different programming languages that include C, C++, Java, HTML, CSS, Bootstrap, JavaScript, PHP, Android, SQL and Algorithm.</p>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Categories</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/category/c-language/">C</a></li>
              <li><a href="http://scanfcode.com/category/front-end-development/">UI Design</a></li>
              <li><a href="http://scanfcode.com/category/back-end-development/">PHP</a></li>
              <li><a href="http://scanfcode.com/category/java-programming-language/">Java</a></li>
              <li><a href="http://scanfcode.com/category/android/">Android</a></li>
              <li><a href="http://scanfcode.com/category/templates/">Templates</a></li>
            </ul>
          </div>

          <div class="col-xs-6 col-md-3">
            <h6>Quick Links</h6>
            <ul class="footer-links">
              <li><a href="http://scanfcode.com/about/">About Us</a></li>
              <li><a href="http://scanfcode.com/contact/">Contact Us</a></li>
              <li><a href="http://scanfcode.com/contribute-at-scanfcode/">Contribute</a></li>
              <li><a href="http://scanfcode.com/privacy-policy/">Privacy Policy</a></li>
              <li><a href="http://scanfcode.com/sitemap/">Sitemap</a></li>
            </ul>
          </div>
        </div>
        <hr>
      </div>
      <div class="container">
        <div class="row">
          <div class="col-md-8 col-sm-6 col-xs-12">
            <p class="copyright-text">Copyright &copy; 2017 All Rights Reserved by 
         <a href="#">Scanfcode</a>.
            </p>
          </div>

          <div class="col-md-4 col-sm-6 col-xs-12">
            <ul class="social-icons">
              <li><a class="facebook" href="#"><i class="fa fa-facebook"></i></a></li>
              <li><a class="twitter" href="#"><i class="fa fa-twitter"></i></a></li>
              <li><a class="dribbble" href="#"><i class="fa fa-dribbble"></i></a></li>
              <li><a class="linkedin" href="#"><i class="fa fa-linkedin"></i></a></li>   
            </ul>
          </div>
        </div>
      </div>
</footer>
    </form>
</body>
</html>
