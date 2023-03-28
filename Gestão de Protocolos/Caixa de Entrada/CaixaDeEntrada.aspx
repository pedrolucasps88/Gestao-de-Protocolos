﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="CaixaDeEntrada.aspx.cs" Inherits="Gestão_de_Protocolos.Caixa_de_Entrada.CaixaDeEntrada1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
    <script src="https://kit.fontawesome.com/8ca27dcaf9.js" crossorigin="anonymous"></script>
    <title></title>
</head>
<body style="background-image: linear-gradient(to left bottom, #2b3a6b, #303d70, #344075, #39427a, #3e457f, #424a84, #464f8a, #4a548f, #4e5c96, #52649e, #566ca5, #5b74ac);">
    <form id="form1" runat="server">
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
                    <li class="nav-item">
                        <a class="nav-link" href="../Perfil.aspx">
                       <i class="fa-solid fa-id-card" style="color: gainsboro;"></i>
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
    <div class="container mt-3">
        <asp:Label Text="ARQUIVOS/MENSAGENS RECEBIDOS" style="margin-left:25%;font-size:26px;color:aliceblue;" ID="TITU" runat="server" />
        <div class="row">
            <div class="col-sm-3">
                <!-- Menu de navegação -->
                
                <div class="btn-group-vertical" style="margin-top:20%">
                <asp:Button Text="RECEBIDOS" ID="RECEBIDOS" runat="server" class="btn btn-outline-success" OnClick="RECEBIDOS_Click"  style="width:100px;height:50px;"/>
                <asp:Button Text="ENVIADOS" ID="ENVIADOS" runat="server" class="btn btn-outline-info" OnClick="ENVIADOS_Click" style="width:100px;height:50px" />
                
            </div>
            <div class="col-sm-9">
                <!-- Lista de mensagens -->
 <asp:GridView ID="GridView1" runat="server" DataSourceID="" AutoGenerateColumns="false" Width="100%" Height="200px" style="margin-left:20%;margin-top:10%;position:absolute" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" RowStyle-BackColor="#FFFFFF" AlternatingRowStyle-BackColor="#F2F2F2" HeaderStyle-BackColor="White"  >
    <Columns>
        <asp:BoundField DataField="Remetente" HeaderText="Remetente" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="nomeremetente" HeaderText="Nome do Remetente" ItemStyle-HorizontalAlign="Center"/>
        <asp:BoundField DataField="cargo" HeaderText="cargo" />
        <asp:BoundField DataField="setorreme" HeaderText="setor do remetente"  ItemStyle-HorizontalAlign="Center"/>
        <asp:BoundField DataField="assunto" HeaderText="assunto" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="mensagem" HeaderText="mensagem" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="anexo" HeaderText="Anexo" ItemStyle-HorizontalAlign="Center" />
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
                 <div class="col-sm-9">
                <!-- Lista de mensagens -->
 <asp:GridView ID="GridView2" runat="server" DataSourceID="" AutoGenerateColumns="false" Width="100%" Height="200px" style="margin-left:20%;position:absolute;margin-top:8%" OnRowCommand="GridView2_RowCommand" OnRowDataBound="GridView2_RowDataBound" RowStyle-BackColor="#FFFFFF" AlternatingRowStyle-BackColor="#F2F2F2" HeaderStyle-BackColor="White"  >
    <Columns>
        <asp:BoundField DataField="destinatario" HeaderText="Destinatario" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="nomedestinatario" HeaderText="Nome do Demetente" ItemStyle-HorizontalAlign="Center"/>
        <asp:BoundField DataField="cargodesti" HeaderText="cargo" />
        <asp:BoundField DataField="setorreme" HeaderText="setor do Demetente"  ItemStyle-HorizontalAlign="Center"/>
        <asp:BoundField DataField="assunto" HeaderText="assunto" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="mensagem" HeaderText="mensagem" ItemStyle-HorizontalAlign="Center" />
        <asp:BoundField DataField="anexo" HeaderText="Anexo" ItemStyle-HorizontalAlign="Center" />
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
         <br />
         <br />
         <br />
         <br />
    </form>
</body>
</html>
