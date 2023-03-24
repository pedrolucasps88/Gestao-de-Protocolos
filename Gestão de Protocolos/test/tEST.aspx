﻿<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="tEST.aspx.cs" Inherits="Gestão_de_Protocolos.test.tEST" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
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
 <asp:GridView ID="GridView1" runat="server" DataSourceID="" AutoGenerateColumns="false" Width="100%" Height="200px" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound" RowStyle-BackColor="#FFFFFF" AlternatingRowStyle-BackColor="#F2F2F2"  >
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
        </div>
    </div>
    </form>
</body>
</html>
