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
                
                <div class="btn-group-vertical" style="margin-top:20%">
                <asp:Button Text="RECEBIDOS" ID="RECEBIDOS" runat="server" class="btn btn-outline-success" OnClick="RECEBIDOS_Click"  style="width:100px;height:50px;"/>
                <asp:Button Text="ENVIADOS" ID="ENVIADOS" runat="server" class="btn btn-outline-info" OnClick="ENVIADOS_Click" style="width:100px;height:50px" />
                <asp:Button Text="RASCUNHOS" ID="RASCUNHOS" runat="server" class="btn btn-outline-warning" style="width:100px;height:50px" />
</div>
            </div>
            <div class="col-sm-9">
                <!-- Lista de mensagens -->
 <asp:GridView ID="GridView1" runat="server" DataSourceID="" AutoGenerateColumns="false" Width="100%" Height="300px" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound"  >
    <Columns>
        <asp:BoundField DataField="Remetente" HeaderText="Remetente" />
        <asp:BoundField DataField="assunto" HeaderText="assunto" />
        <asp:BoundField DataField="mensagem" HeaderText="mensagem" />
        <asp:BoundField DataField="anexo" HeaderText="Anexo" />
   <%--     <asp:TemplateField HeaderText="Anexo">
                    <ItemTemplate>
                        <asp:LinkButton ID="lnkDownload" Text = "Download" OnClick="lnkDownload_Click" runat="server" ></asp:LinkButton>
                    </ItemTemplate>
                </asp:TemplateField>--%>
        
        <asp:BoundField DataField="hora" HeaderText="hora" />
        <asp:ButtonField ButtonType="Link" CommandName="AssinaturaDigital"  HeaderText="ASSINE AGORA" ControlStyle-CssClass="btn btn-success"  Text="ASSINATURA DIGITAL" />  
    </Columns>
</asp:GridView>
     


            </div>
        </div>
    </div>
</body>
</html>
</asp:Content>
