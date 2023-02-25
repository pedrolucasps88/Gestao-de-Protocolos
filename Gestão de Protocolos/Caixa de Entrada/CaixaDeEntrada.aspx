<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="CaixaDeEntrada.aspx.cs" Inherits="Gestão_de_Protocolos.Caixa_de_Entrada.CaixaDeEntrada" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    <html>
<head>
    <title>Caixa de Entrada</title>
    <!-- Incluindo os arquivos do Bootstrap -->
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</head>
<body>
    <div class="container mt-3">
        <div class="row">
            <div class="col-sm-3">
                <!-- Menu de navegação -->
                <ul class="list-group">
                    <li class="list-group-item active">Caixa de Entrada</li>
                    <li class="list-group-item">Enviadas</li>
                    <li class="list-group-item">Rascunhos</li>
                    <li class="list-group-item">Lixeira</li>
                </ul>
            </div>
            <div class="col-sm-9">
                <!-- Lista de mensagens -->
                <table class="table table-hover">
                    <thead>
                        <tr>
                            <th scope="col">Remetente</th>
                            <th scope="col">Assunto</th>
                            <th scope="col">Data</th>
                            <th scope="col">Anexos</th>
                        </tr>
                    </thead>
                    <tbody>
                        <tr>
                            <td>joao@gmail.com</td>
                            <td>Convite para reunião</td>
                            <td>23/02/2023</td>
                            <td><a href="#">arquivo.pdf</a></td>
                        </tr>
                        <tr>
                            <td>maria@hotmail.com</td>
                            <td>Pedido de orçamento</td>
                            <td>22/02/2023</td>
                            <td></td>
                        </tr>
                        <tr>
                            <td>pedro@yahoo.com.br</td>
                            <td>Confirmação de pagamento</td>
                            <td>20/02/2023</td>
                            <td><a href="#">recibo.pdf</a></td>
                        </tr>
                    </tbody>
                </table>
            </div>
        </div>
    </div>
</body>
</html>
</asp:Content>
