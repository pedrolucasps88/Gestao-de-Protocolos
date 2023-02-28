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
 <asp:GridView ID="GridView1" runat="server" DataSourceID="">
    <Columns>
        <asp:BoundField  DataField="Remetente" HeaderText="Remetente" />
        <asp:BoundField DataField="Setor" HeaderText="Setor" />
        <asp:BoundField DataField="assunto" HeaderText="assunto" />
        <asp:BoundField DataField="mensagem" HeaderText="mensagem" />
        <asp:TemplateField HeaderText="Anexo">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDownload" Text = "Download" CommandArgument = '<%# Eval("Value") %>' runat="server" ></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>
        <asp:BoundField DataField="anexo" HeaderText="Idade"  />
        <asp:BoundField DataField="hora" HeaderText="Idade" />
    </Columns>
</asp:GridView>


            </div>
        </div>
    </div>
</body>
</html>
</asp:Content>
