<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="DocumentosPadroes.aspx.cs" Inherits="Gestão_de_Protocolos.DocumentosPadroes.DocumentosPadroes" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/8ca27dcaf9.js" crossorigin="anonymous"></script>
    <title></title>
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
<body style="background-image: linear-gradient(to top, #2b3a6b, #303d70, #344075, #39427a, #3e457f, #424a84, #464f8a, #4a548f, #4e5c96, #52649e, #566ca5, #5b74ac);">
    <form id="form1" runat="server">
        <link href="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/css/bootstrap.min.css" rel="stylesheet" id="bootstrap-css">
        <script src="//maxcdn.bootstrapcdn.com/bootstrap/4.1.1/js/bootstrap.min.js"></script>
        <script src="//cdnjs.cloudflare.com/ajax/libs/jquery/3.2.1/jquery.min.js"></script>
        <!------ Include the above in your HEAD tag ---------->

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
                        <a class="nav-link" href="#">
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
                <asp:Label ID="Label1" runat="server" class="text-center" Text="nome" Style="font-size: 30px; text-align: center; margin-left: 35%; font-family: Abril Fatface, serif; font-style: oblique"></asp:Label><br />
                <asp:Label Text="Cargo" ID="cargo" runat="server" class="text-muted text-center" Style="font-size: 20px; text-align: center; margin-left: 40%;"></asp:Label><br />
                <asp:Label Text="setor" ID="Label3" runat="server" class="text-muted text-center" Style="font-size: 20px; text-align: center; margin-left: 40%;"></asp:Label><br />

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
    
    
   <div class="offcanvas offcanvas-start text-bg-dark" id="demo">
  <div class="offcanvas-header">
    <h1 class="offcanvas-title">Documentos</h1>
    <asp:button runat="server" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" ></asp:button>
  </div>
  <div class="offcanvas-body" runat="server" >
      <div runat="server" id="docpadro">

      </div>
      
  
       
  </div>
</div>

<div class="container-fluid mt-3">
  <h1 style="margin-left:35%;margin-top:3%;color:aliceblue ">Documentos Padrões</h1>
  <p style="margin-left:35%;margin-top:5%;color:aliceblue ;"> Bem Vindo,</p><asp:Label ID="nome" Text="fulano"  runat="server" style="margin-left:40%;font-size:26px;color:aliceblue ;"></asp:Label>
  <p style="margin-left:35%;margin-top:5%;color:aliceblue ;">Documentos Padrões do setor:</p>
    <asp:Label ID="setor" Text="setor" runat="server" style="margin-left:40%;font-size:26px;color:aliceblue ;" />
    <br/>
  <button class="btn btn-dark" type="button" data-bs-toggle="offcanvas" data-bs-target="#demo" style="margin-left:40%;margin-top:2%">
   < VER DOCUMENTOS >
  </button>
</div>
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        <br />
        
    </form>
</body>
</html>
