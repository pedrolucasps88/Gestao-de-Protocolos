<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaInicial.aspx.cs" Inherits="Gestão_de_Protocolos.TelaInicial.TelaInicial" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>

    <%--    <!-- Bootstrap CSS -->
<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" integrity="sha384-Gn5384xqQ1aoWXA+058RXPxPg6fy4IWvTNh0E263XmFcJlSAwiGgFAW/dAiS6JXm" crossorigin="anonymous">

<!-- jQuery -->
<script src="https://code.jquery.com/jquery-3.2.1.slim.min.js" integrity="sha384-KJ3o2DKtIkvYIK3UENzmM7KCkRr/rE9/Qpg6aAZGJwFDMVNA/GpGFF93hXpG5KkN" crossorigin="anonymous"></script>

<!-- Popper.js -->
<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.12.9/umd/popper.min.js" integrity="sha384-ApNbgh9B+Y1QKtv3Rn7W3mgPxhU9K/ScQsAP7hUibX39j7fakFPskvXusvfa0b4Q" crossorigin="anonymous"></script>

<!-- Bootstrap JavaScript -->
<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js" integrity="sha384-JZR6Spejh4U02d8jOt6vLEHfe/JQGiRRSQQxSfFWpi1MquVdAyjUar5+76PVCmYl" crossorigin="anonymous"></script>--%>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <link href="Style.css" rel="stylesheet" />
    <title></title>
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
                    <img src="essa.jpg" alt="Los Angeles" class="d-block" style="width: 100%; height: 600px">
                    <div class="carousel-caption">
                        <h3>Gestão segura</h3>
                        <p>We love the Big Apple!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="guarda-documentos.jpg" alt="Chicago" class="d-block" style="width: 100%; height: 600px">
                    <div class="carousel-caption">
                        <h3>New York</h3>
                        <p>We love the Big Apple!</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="documentos-espalhados.jpg" alt="New York" class="d-block" style="width: 100%; height: 600px">
                    <div class="carousel-caption">
                        <h3>dbabdashdb</h3>
                        <p>We love the Big Apple!</p>
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

        <div style="width: 100%; height: 300px; margin-top: 0%; margin-left: 0.5%; background-color: white">
            <h5 style="margin-left: 60%; top: 18%;position:relative;">SUA EMPRESA JA TA CADASTRADA?FAÇA O LOGIN </h5>
            <div class="text-box">

                <a href="/Login/Login.aspx" class="btn btn-white btn-animate" style="margin-left: 70%; margin-top: 6.5%;">Login >></a>
            </div>
                <h5 style="margin-left: 10%; top: 10%;position:relative;">QUER VERIFICAR O ORÇAMENTO PARA SUA EMPRESA? </h5>
            <div class="text-box">
                <a href="../Cadastramento.aspx" class="btn2 btn-white btn-animate" style="margin-left: 18%; margin-top: 5%;"><< Orçamento >></a>
            </div>
        </div>
         
        
       
        <div style="width: 99%; height: 400px; margin-top: 5%; margin-left: 0.5%; background-color: transparent">
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
            <asp:Image ImageUrl="~/arquivotela.jpg" runat="server" style="height:100%;width:600px;margin-left:0%;position:relative" />
            <h3 style="margin-top:-25%;margin-left:40%">CONTROLE SEUS ARQUIVOS E MELHORE O DESEMPENHO DA SUA EMPRESA</h3>
            <br />
            <p style="margin-left:40%">Envio e recebimento de arquivo com segurança garantida, automatizando processos de envio,recebimento,assinatura e controle</p>
        </div>
        <div style="width: 100%; height: 400px; margin-top: 5%; margin-left: 0.5%; background-color: transparent">

            <h3 style="color: white;">OBJETIVOS DO SOFTWARE</h3>
            <asp:Image ImageUrl="~/TelaInicial/automacao.png" runat="server" Class="subi" Style="margin-left: 15%; margin-top: 15%; width: 200px; height: 200px; position: absolute" />
            <h3 style="margin-top: 20%; margin-left: 10%; color: white; position: absolute;">Automatização dos processos</h3>
            <asp:Image ImageUrl="~/TelaInicial/imediato.png" runat="server" Class="desce" Style="margin-left: 45%; margin-top: 0%; width: 200px; height: 200px; position: absolute" />
            <h3 style="margin-top: 20%; margin-left: 45%; color: white; position: absolute;">Serviço rapido</h3>
            <asp:Image ImageUrl="~/TelaInicial/escudo-seguro.png" runat="server" Class="outro" Style="margin-left: 75%; margin-top: 10%; width: 200px; height: 200px; position: absolute" />
            <h3 style="margin-top: 20%; margin-left: 74%; color: white; position: absolute;">Seguro e confiavel</h3>
        </div>

        <footer id="footer" style="width: 99%; margin-top: 1%; margin-left: 0.5%; background-image: linear-gradient(to right top, #12202e, #162434, #1a283a, #1e2d41, #233147, #26344c, #2a3850, #2d3b55, #303e59, #33415d, #374362, #3a4666); border: 2px solid; padding: 10px; box-shadow: 6px 4px inset; border-radius: 10px; text-align: left">
            <div class="footerTop">
                <div class="limit">
                    <nav>
                        <h6 style="color: aliceblue">Atendimento</h6>
                        <ul>
                            <li class="ico-helpDesk"><a href="#" style="color: aliceblue">HelpDesk</a></li>
                            <li class="ico-chat"><a href="#" style="color: aliceblue">Chat</a></li>
                            <li class="ico-phone"><a href="#" style="color: aliceblue">Telefone</a></li>
                        </ul>
                        <a href="#" class="lnkArrow lnkArrowWhite fright" style="color: aliceblue">Ver todas as formas de atendimento</a>
                    </nav>
                </div>
            </div>
            <div class="subfooter">
                <div class="limit">
                    <span class="lastAccess" style="color: aliceblue"><strong style="color: aliceblue">Último acesso:</strong> 7/8/2011 22:35:49   
      <strong style="color: aliceblue">IP:</strong> 201.87.65.217
      <p class="copyRight fright" style="color: aliceblue">Copyright © 1997-2013 Locaweb Serviços de Internet S/A.</p>
                </div>
            </div>
        </footer>
    </form>
</body>
</html>
