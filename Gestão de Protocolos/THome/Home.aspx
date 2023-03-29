<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Home.aspx.cs" Inherits="Gestão_de_Protocolos.THome.Home" %>

<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Strict//EN" "http://www.w3.org/TR/xhtml1/DTD/xhtml1-strict.dtd">

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    
</head>

<script src="Scripts/jquery-3.3.1.min.js"></script>
<script src="Scripts/bootstrap.min.js"></script>
<link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
<script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
<script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
<script src="https://kit.fontawesome.com/8ca27dcaf9.js" crossorigin="anonymous"></script>
    <style>
        .profile-card {
            position: absolute;
            margin-left: 60%;
            margin-top: -47%;
            width: 300px;
            height: 200px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            display: none;
            padding: 20px;
        }

        .nome22:hover + .profile-card {
            display: block;
        }

        .nome22{
            color: white;
        }

        .profile-card img {
            max-width: 200px;
            border-radius: 50%;
            margin-bottom: 20px;
        }

        .profile-card h1 {
            font-weight: 600;
            font-size: 28px;
            margin-bottom: 10px;
        }

        .profile-card p {
            font-weight: 400;
            font-size: 18px;
            margin-bottom: 5px;
        }

        .profile-card .card-footer {
            background-color: #f8f9fa;
            border-top: none;
            text-align: center;
        }
    </style>
<body style="background-image: linear-gradient(to bottom, #2b3a6b, #303d70, #344075, #39427a, #3e457f, #424a84, #464f8a, #4a548f, #4e5c96, #52649e, #566ca5, #5b74ac);">
    <%--background-image: linear-gradient(to bottom, #474a4e, #6b6e73, #929499, #bbbcc2, #e6e6ec);--%>
    <%--   #474A4E // #E6E6EC--%>
    <%--#474A4E // #A5A5A6--%>
    <%-- linear-gradient(to bottom, #483f6f, #4e467a, #534e86, #595592, #5e5d9e, #6366a9, #6970b4, #6e79bf, #7686ca, #7f94d6, #89a1e1, #93afec--%>
    <%-- #483F6F // #6468AF // #93AFEC--%>



    <%-- Cor maneira:   #2B3A6B // #454985 // #5B74AC

    #4F6EB7 //  #9CADF0 --%>
    <nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark" style="margin-top: 0%">
        <a class="navbar-brand" href="../THome/Home.aspx" style="margin-top: 0%;">GESTÃO DE PROTOCOLOS</a>
        <button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
            <span class="navbar-toggler-icon"></span>
        </button>

        <div class="collapse navbar-collapse" id="navbarSupportedContent">
            <ul class="navbar-nav mr-auto">
                <li class="nav-item active">
                    <a class="nav-link" href="../THome/Home.aspx">
                        <i class="fa-solid fa-house" style="color: gainsboro;"></i>
                        HOME
          <span class="sr-only">(current)</span>
                    </a>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../Caixa de Entrada/CaixaDeEntrada.aspx">
                        <i class="fa-solid fa-envelope" style="color: gainsboro;"></i>
                        Caixa de Entrada
                    </a>
                </li>
                <li class="nav-item">

                    <a class="nav-link" href="../TelaEnvio/TelaDeEnvio.aspx">
                        <i class="fa-solid fa-share-from-square" style="color: gainsboro;"></i>
                        Envios de Mensagens
                    </a>
                </li>
                <li class="nav-item">

                    <a class="nav-link" href="../DocumentosPadroes/DocumentosPadroes.aspx">
                        <i class="fa-solid fa-file" style="color: gainsboro;"></i>
                        Documentação Padrão
                    </a>
                </li>
            </ul>
            <ul class="navbar-nav ">
                <li class="nav-item">
                    <a class="nav-link" href="#">
                        <i class="fa-solid fa-phone" style="color: gainsboro;"></i>
                        SUPORTE
                    </a>
                </li>
                <li class="nav-item" style="margin-top: 3%">
                    <div class="nome22">
                        <asp:Label ID="nome" Class="" Style="color: white;" Text="<i class='fa-solid fa-id-card' style='color: gainsboro;'></i>" runat="server" />
                        <%--     <a class="nav-link" href="../Perfil.aspx">
                       <i class="fa-solid fa-id-card" style="color: gainsboro;"></i>
                            PERFIL
                        </a>--%>
                    </div>
                     <div class="profile-card">
                <asp:Label ID="Label1" runat="server" class="text-center" Text="nome" Style="font-size: 30px; text-align: center; margin-left: 35%; font-family: Abril Fatface, serif; font-style: oblique"></asp:Label><br />
                <asp:Label Text="Cargo" ID="cargo" runat="server" class="text-muted text-center" Style="font-size: 20px; text-align: center; margin-left: 40%;"></asp:Label><br />
                <asp:Label Text="setor" ID="setor" runat="server" class="text-muted text-center" Style="font-size: 20px; text-align: center; margin-left: 40%;"></asp:Label><br />

                <hr />
                <div class="row">
                    <div class="col-sm-6">
                        <p>Matrícula:</p>
                    </div>
                    <div class="col-sm-6">
                        <asp:Label Text="matricula" ID="matricula" runat="server" class="text-muted text-center"></asp:Label>
                    </div>
                </div>
            </div>
                </li>
                <li class="nav-item">
                    <a class="nav-link" href="../Login/Login.aspx">
                        <i class="fa-solid fa-person-running" style="color: #eb0017;"></i>
                        SAIR
                    </a>
                </li>
            </ul>

        </div>
    </nav>

    <form id="form1" runat="server">
        <div class="container body-content">

            <img src="../documentos ima.png" alt="" style="width: 1100px; height: 400px; opacity: 0.8; z-index: 1; margin-top: 1%;" />
            <h1 style="position: absolute; margin-top: -25%; margin-left: 8%; color: #0f5adb;">Bem-Vindo ao site de Gestão de Protocolos!</h1>
            <p class="lead" style="position: absolute; margin-top: 1%; margin-left: 15%; color: aliceblue; font-family: fantasy;">Melhor envio e recebimentos de arquivos com segurança garantida</p>
            <p style="position: absolute; margin-top: 4%; margin-left: 27%;"><a class="btn btn-dark" href="#" role="button" style="z-index: 2;"><i class="fa-solid fa-circle-info" style="color: #8dace2;"></i>Rapido Tutorial</a></p>

            <div class="row" style="margin-top: 10%;">
                <div class="col-md-4">
                    <h2 style="color: aliceblue;">Envie os Documentos de forma Facil</h2>
                    <p style="color: aliceblue;">Nossa interface simples e intuitiva facilita o upload de seus arquivos e o envio deles com segurança ao destinatário pretendido.</p>
                    <asp:LinkButton Text="Envio <i class='fa-solid fa-paper-plane' style='color: #fafcff;'></i>" runat="server" class="btn btn-dark" ID="Envio" href="../TelaEnvio/TelaDeEnvio.aspx" Style="margin-left: 20%" />
                </div>
                <div class="col-md-4">
                    <h2 style="color: aliceblue;">Receba arquivos instantaneamente</h2>
                    <p style="color: aliceblue;">Com nossos servidores rápidos e confiáveis, você pode receber seus arquivos em segundos, não importa onde você esteja no mundo.</p>
                    <asp:LinkButton Text="Caixa de entrada <i class='fa-solid fa-envelope' style='color: #ffffff;'></i>" runat="server" class="btn btn-dark" ID="CaixaE" href="/Caixa de Entrada/CaixaDeEntrada.aspx" Style="margin-left: 20%" />
                </div>
                <div class="col-md-4">
                    <h2 style="color: aliceblue;">Seguro e confiável</h2>
                    <p style="color: aliceblue;">Levamos sua privacidade e segurança a sério, usando as mais recentes medidas de criptografia e segurança para garantir que seus arquivos estejam seguros e protegidos.</p>
                    <asp:LinkButton Text="Sobre nós e o site <i class='fa-solid fa-phone' style='color: #f2f2f2;'></i>" runat="server" class="btn btn-dark" href="#" Style="margin-left: 20%; margin-top: 4%" />
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
