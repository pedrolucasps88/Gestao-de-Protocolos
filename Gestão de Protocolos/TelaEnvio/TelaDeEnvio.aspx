<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaDeEnvio.aspx.cs" Inherits="Gestão_de_Protocolos.TelaEnvio.TelaDeEnvio" %>

<!DOCTYPE html>

<html lang="pt-br">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Enviar mensagem</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
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
                            <i class="fa fa-home"></i>
                            Home
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
                                <span class="badge badge-info">11</span>
                            </i>
                            Test
                        </a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="#">
                            <i class="fa fa-globe">
                                <span class="badge badge-success">11</span>
                            </i>
                            Test
                        </a>
                    </li>
                </ul>
              
            </div>
        </nav>
    
    <div class="container" style="margin-top:0%;margin-left:35%;background-color:lightgray;width:400px;height:550px">
        <form runat="server">
            <h1>Enviar mensagem</h1>

            <div class="form-group">
                <label for="to">Para:</label>
                <asp:DropDownList runat="server" ID="setores" AutoPostBack="true" OnSelectedIndexChanged="setores_SelectedIndexChanged" >
                    <asp:ListItem Text="RH" Value="1" />
                    <asp:ListItem Text="Manutenção" Value="2" />
                    <asp:ListItem Text="Secretaria" Value="3" />
                    <asp:ListItem Text="Qualidade" Value="4" />
                </asp:DropDownList>
            </div>
             <div class="form-group">
                <label for="to">Para:</label>
                <asp:DropDownList runat="server" ID="funcionarios">
                    <asp:ListItem Text="setor1"  Value="setor1" />
                    <asp:ListItem Text="setor2" Value="setor2"/>
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="subject">Assunto:</label>
                <asp:TextBox runat="server" ID="assuntos" class="form-control" placeholder="Digite o assunto da mensagem" />
            </div>

            <div class="form-group">
                <label for="body">Mensagem:</label>
              
                <asp:TextBox runat="server" ID="mensagema" class="form-control" TextMode="MultiLine" Rows="5" Placeholder="Digite a mensagem" />  
            </div>

            <div class="form-group">
                <label for="attachment">Anexar arquivo:</label>
                <asp:FileUpload runat="server" ID="arqui" />              
            </div>

            <asp:Button runat="server" type="submit" OnClick="Unnamed_Click" Text="Enviar" class="btn btn-primary" style="background-color:black;width:100px;height:50px;font-size:16px;border-radius: 30px;margin-left:35%;"></asp:Button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
