<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Suporte.aspx.cs" Inherits="Gestão_de_Protocolos.Suporte" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
      <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/8ca27dcaf9.js" crossorigin="anonymous"></script>

     <style>
        .profile-card {
            position: absolute;
            margin-left: -15%;
            margin-top: 0%;
            width: 300px;
            height: 200px;
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            display: none;
            padding: 20px;
            z-index:1000;
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
</head>
<body style="background-image: linear-gradient(to right bottom, #2b3a6b, #303d70, #344075, #39427a, #3e457f, #424a84, #464f8a, #4a548f, #4e5c96, #52649e, #566ca5, #5b74ac);">
    <form id="form1" runat="server">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <div>
            <nav class="navbar navbar-icon-top navbar-expand-lg navbar-dark bg-dark" style="margin-top: 0%">
           <a class="navbar-brand" href="../THome/Home.aspx" style="margin-top: 0%">GESTÃO DE PROTOCOLOS</a>
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
                        <a class="nav-link" href="../Suporte.aspx">
                            <i class="fa-solid fa-phone" style="color: gainsboro;"></i>
                            SUPORTE
                        </a>
                    </li>
                     <li class="nav-item" style="margin-top: 3%">
                    <div class="nome22">
                        <i class='fa-solid fa-id-card' style='color: gainsboro;'></i><asp:Label ID="nome1" Class="" Style="color: white;" Text="" runat="server" />
                        <%--     <a class="nav-link" href="../Perfil.aspx">
                       <i class="fa-solid fa-id-card" style="color: gainsboro;"></i>
                            PERFIL
                        </a>--%>
                    </div>
                     <div class="profile-card">
                         <asp:image imageurl="~/do-utilizador.png" runat="server" style="width:80px;height:80px;position:absolute;margin-top:3%;" />
                <asp:Label ID="Label1" runat="server" class="text-center" Text="nome" Style="font-size: 30px; text-align: center; margin-left: 35%; font-family: Abril Fatface, serif; font-style: oblique;max-width: 6ch;overflow: hidden;text-overflow: clip;white-space: nowrap;"></asp:Label><br />
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
              <div style="text-align: justify">
        <h2><%: Title %></h2>
        <!--<h3>fale com os nossos atendentes agora mesmo.</h3>-->
        <!--<p>fale com os nossos atendentes agora mesmo.</p>-->
        <br />
        <br />
        <br />
        <div style="width:1500px;margin-left:2.5%"><p style="text-align: justify;font-size: 14px;margin-bottom:100px;color:white"> O sistema de gestão de protocolos desenvolvido pela ThreeHarpies é uma solução especializada em prestar serviços digitais para empresas de pequeno e médio porte. Com foco na gestão de protocolos internos, a nossa empresa se preocupa em oferecer uma experiência excepcional aos nossos clientes.

Para isso, estamos sempre empenhados em aprimorar e adaptar nossos sistemas às necessidades em constante mudança do mercado. Como parte desse processo, criamos este espaço para receber feedback de nossos clientes, a fim de identificar oportunidades de melhoria e implementar as mudanças necessárias.

A ThreeHarpies valoriza o apoio de nossos clientes e reconhece a importância de um relacionamento sólido e transparente com eles. Por isso, estamos comprometidos em fornecer soluções de alta qualidade e em constante evolução para atender às suas necessidades empresariais.






             </p></div>

        <div class="row" style="text-align: center">
            <div class="col-md-6">
                <div class="row">
                    <div class="col-sm-1" style="padding-top: 5px">
                        <asp:Label runat="server" ID="lblNome" Text="Nome:" style="color:white"></asp:Label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox runat="server" ID="txtNome" style="Height:33px; Width:270px;font-family:Arial;"  placeholder="Nome Completo"></asp:TextBox>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-sm-1" style="padding-top: 5px">
                        <asp:Label runat="server" ID="lblAssunto" Text="Assunto:" style="color:white"></asp:Label>
                    </div>
                    <div class="col-sm-3">
                        <asp:DropDownList runat="server" ID="Assunto" style="Height:33px; Width:270px;font-family:Arial;" class="btn btn-primary dropdown-toggle">
                            <asp:ListItem Text="infraestrutura do site" Value="infraestrutura do site" />
                            <asp:ListItem Text="recuperação da conta" Value="recuperação da conta" />
                        </asp:DropDownList>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-sm-1" style="padding-top: 5px">
                        <asp:Label runat="server" ID="lblDetalhes" Text="Detalhes:" style="color:white"></asp:Label>
                    </div>
                    <div class="col-sm-3">

                        <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" style="Height:33px; Width:270px;font-family:Arial;" placeholder="Menssagem" TextMode="MultiLine"></asp:TextBox></center>
                    </div>
                </div>


                <br />
                <div class="row">
                    <div class="col-sm-2" style="padding-left: 54px">
                        <asp:Button ID="botao_enviar" Text="Enviar" class="btn btn-outline-success" OnClick="botao_enviar_Click" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="text-align:justify;">
                 <h3 style="color:white"> Contate o nosso suporte por meio dos nossos canais de Atendimento</h3>
                <div id="info" style="text-align:justify; font-size:14px; margin-top:8px">
                    <div class="row">
                        <p style="color:white"><i class="fa-solid fa-envelope" style="color: #1363ec"></i> ThreeHarpies_GP@gmail.com</p> 
                    </div>
                    <div class="row">
                        <p style="color:white"><i class="fa-brands fa-instagram" style="color: #1100ff"></i> @ThreeHarpies_GP</p> 
                    </div>
                    <div class="row">
                        <p style="color:white"><i class="fa-solid fa-phone" style="color: #095cec"></i> (11)4002-8922</p> 
                    </div>
                </div>
                 


            </div>
        </div>
    </div>
    <p style="height: 300px"></p>
        </div>
    </form>
</body>
</html>
