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
</head>
<body>
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
                       <i class="fa-solid fa-house" style="color: #005af5;"></i>
                            HOME
          <span class="sr-only">(current)</span>
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Caixa de Entrada/CaixaDeEntrada.aspx">
                       <i class="fa-solid fa-envelope" style="color: #0058f0;"></i>
                            Caixa de Entrada
                        </a>
                    </li>
                    <li class="nav-item">

                        <a class="nav-link" href="../TelaEnvio/TelaDeEnvio.aspx">
                            <i class="fa-solid fa-share-from-square" style="color: #0452d7;"></i>
                            Envios de Mensagens
                        </a>
                    </li>
                   <li class="nav-item">
                       
                        <a class="nav-link" href="../DocumentosPadroes/DocumentosPadroes.aspx">
                            <i class="fa-solid fa-file" style="color: #0d5de7;"></i>
                            Documentação Padrão
                        </a>
                    </li>
                </ul>
                   <ul class="navbar-nav ">
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="fa-solid fa-phone" style="color: #0257e8;"></i>
                            SUPORTE
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="../Perfil.aspx">
                       <i class="fa-solid fa-id-card" style="color: #0f5adb;"></i>
                            PERFIL
                        </a>
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
  <h1 style="margin-left:35%;margin-top:3%">Documentos Padrões</h1>
  <p style="margin-left:35%;margin-top:5%"> Bem Vindo,</p><asp:Label ID="nome" Text="fulano"  runat="server" style="margin-left:40%;font-size:26px;"></asp:Label>
  <p style="margin-left:35%;margin-top:5%;">Documentos Padrões do setor:</p>
    <asp:Label ID="setor" Text="setor" runat="server" style="margin-left:40%;font-size:26px;" />
    <br/>
  <button class="btn btn-outline-dark" type="button" data-bs-toggle="offcanvas" data-bs-target="#demo" style="margin-left:40%;margin-top:2%">
   < VER DOCUMENTOS >
  </button>
</div>
    </form>
</body>
</html>
