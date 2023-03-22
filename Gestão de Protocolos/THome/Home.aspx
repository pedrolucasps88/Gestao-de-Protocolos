<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Gestão_de_Protocolos.THome.Home" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
    
        <script src="Scripts/jquery-3.3.1.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>
     <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<body style="background-image: linear-gradient(to bottom, #474a4e, #5e5f63, #757679, #8d8d8f, #a5a5a6);">
    <%--background-image: linear-gradient(to bottom, #474a4e, #6b6e73, #929499, #bbbcc2, #e6e6ec);--%>
 <%--   #474A4E // #E6E6EC--%>
    <%--#474A4E // #A5A5A6--%>


     <nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark" style="margin-top: 0%">
            <a class="navbar-brand" href="../THome/Home.aspx" style="margin-top: 0%">GESTÃO DE PROTOCOLOS</a>
            <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>

            <div class="collapse navbar-collapse" id="navbarSupportedContent">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item active">
                        <a class="nav-link" href="../THome/Home.aspx">
                            <i class="fa fa-home"></i>
                            HOME
          <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Caixa de Entrada/CaixaDeEntrada.aspx">
                            <i class="fa fa-envelope-o">
                                <span class="badge badge-danger">11</span>
                            </i>
                            Caixa de Entrada
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../TelaEnvio/TelaDeEnvio.aspx">Envios de Mensagens
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../DocumentosPadroes/DocumentosPadroes.aspx">Documentação Padrão
                        </a>
                    </li>
                </ul>
                <ul class="navbar-nav ">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="fa fa-bell">
                                <span class="badge badge-info">+</span>
                            </i>
                            SUPORTE
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Perfil.aspx">
                            <i class="fa fa-globe">
                                <span class="badge badge-success">@</span>
                            </i>
                            PERFIL
                        </a>
                    </li>
                       <li class="nav-item">
                        <a class="nav-link" href="../Login/Login.aspx">
                            <i class="fa fa-globe">
                                <span class="badge badge-danger"><<</span>
                            </i>
                            SAIR
                        </a>
                    </li>
                </ul>
            </div>
        </nav>

    <form id="form1" runat="server">
        <div class="container body-content">
            <div class="jumbotron" style="margin-top:0%;width:1100px;height:400px;">
                <img src="../arquivos.jpg" alt="" style="width:100%;height:100%;opacity:0.5;z-index:1;" />
                <h1  style="position:absolute;margin-top:-15%;margin-left:15%;">Welcome to File Sharing Site!</h1>
                <p class="lead" style="position:absolute;margin-top:-10%;margin-left:15%;">We make it easy to send and receive files securely and quickly.</p>
                <p style="position:absolute;margin-top:-5%;margin-left:25%;"><a class="btn btn-primary btn-lg" href="#" role="button"  style="z-index:2;" >Get started today</a></p>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <h2>Upload files with ease</h2>
                    <p>Our simple and intuitive interface makes it easy to upload your files and send them securely to your intended recipient.</p>
                <asp:LinkButton Text="Envio" runat="server" class="btn btn-info" ID="Envio" href="../TelaEnvio/TelaDeEnvio.aspx"/>
                </div>
                <div class="col-md-4">
                    <h2>Receive files instantly</h2>
                    <p>With our fast and reliable servers, you can receive your files in seconds, no matter where you are in the world.</p>
               <asp:LinkButton Text="Caixa de entrada" runat="server" class="btn btn-warning" ID="CaixaE" href="/Caixa de Entrada/CaixaDeEntrada.aspx"/>
                    </div>
                <div class="col-md-4">
                    <h2>Secure and reliable</h2>
                    <p>We take your privacy and security seriously, using the latest encryption and security measures to ensure your files are safe and secure.</p>
                    <asp:Button Text="Sobre nós e o site" runat="server" class="btn btn-dark" href="#"/>
                </div>
            </div>
            <br />
            <hr />
              <footer>
                <p>&copy; <%: DateTime.Now.Year %> - Gestão de Protocolos</p>
            </footer>
        </div>

    </form>
</body>
</html>
