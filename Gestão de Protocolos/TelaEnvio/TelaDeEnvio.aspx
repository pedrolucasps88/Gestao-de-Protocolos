﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaDeEnvio.aspx.cs" Inherits="Gestão_de_Protocolos.TelaEnvio.TelaDeEnvio" %>

<!DOCTYPE html>

<html lang="pt-br">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Enviar mensagem</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
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
<body style="background-image: linear-gradient(to right, #2b3a6b, #303d70, #344075, #39427a, #3e457f, #424a84, #464f8a, #4a548f, #4e5c96, #52649e, #566ca5, #5b74ac);">
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
                        <i class='fa-solid fa-id-card' style='color: gainsboro;'></i><asp:Label ID="nome" Class="" Style="color: white;" Text="" runat="server" />
                        <%--     <a class="nav-link" href="../Perfil.aspx">
                       <i class="fa-solid fa-id-card" style="color: gainsboro;"></i>
                            PERFIL
                        </a>--%>
                    </div>
                     <div class="profile-card">
                         <asp:image imageurl="~/do-utilizador.png" runat="server" style="width:80px;height:80px;position:absolute;margin-top:3%;" />
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
    
    <div class="container" style="margin-top:1%;margin-left:35%;background-image: linear-gradient(to bottom, #4f6eb7, #637dc5, #768dd3, #899de2, #9cadf0);width:400px;height:600px;border-radius:15px">
        <form runat="server">
            <h1 style="margin-left:5%;color:aliceblue">Enviar mensagem</h1>

            <div class="form-group">
                <label for="to" style="color:aliceblue">Para:</label>
                <asp:DropDownList runat="server" ID="setores" AutoPostBack="true" OnSelectedIndexChanged="setores_SelectedIndexChanged" >
                    <asp:ListItem Text="RH" Value="1" />
                    <asp:ListItem Text="Manutenção" Value="2" />
                    <asp:ListItem Text="Secretaria" Value="3" />
                    <asp:ListItem Text="Qualidade" Value="4" />
                </asp:DropDownList>
            </div>
             <div class="form-group">
                <label for="to"  style="color:aliceblue">Para:</label>
                <asp:DropDownList runat="server" ID="funcionarios">
                    <asp:ListItem Text="setor1"  Value="setor1" />
                    <asp:ListItem Text="setor2" Value="setor2"/>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="subject"  style="color:aliceblue">Assunto:</label>
                <asp:TextBox runat="server" ID="assuntos" class="form-control" placeholder="Digite o assunto da mensagem" />
            </div>

            <div class="form-group">
                <label for="body"  style="color:aliceblue">Mensagem:</label>
              
                <asp:TextBox runat="server" ID="mensagema" class="form-control" TextMode="MultiLine" Rows="5" Placeholder="Digite a mensagem" />  
            </div>

            <div class="form-group">
                <label for="attachment"  style="color:aliceblue">Anexar arquivo:</label>
                <asp:FileUpload runat="server" ID="arqui" />              
            </div>

            <asp:LinkButton runat="server" type="submit" OnClick="Unnamed_Click" Text="<i class='fa-solid fa-paper-plane' style='color: #fafcff;'></i> ENVIAR" class="btn btn-primary" style="background-image: linear-gradient(to right top, #0900cf, #272eda, #3c49e3, #5161ea, #6678f0);width:120px;height:40px;font-size:16px;border-radius: 30px;margin-left:32%;" ></asp:LinkButton>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
