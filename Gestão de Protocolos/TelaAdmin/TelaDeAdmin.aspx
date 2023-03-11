<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaDeAdmin.aspx.cs" Inherits="Gestão_de_Protocolos.TelaAdmin.TelaDeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>

    <form id="form1" runat="server">
        <div>
            <h1 style="margin-left:25%;margin-top:5%">PAGINA DE ADIMINISTRADOR</h1>
            <h4 style="margin-left:30%;margin-top:5%">SETORES/FUNCIONARIOS</h4>
            <div style="width:800px;height:400px;margin-top:2%;margin-left:20%">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="" AutoGenerateColumns="false" Width="100%" Height="100%" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound"  >
    <Columns>
        <asp:BoundField DataField="id" HeaderText="ID" />
        <asp:BoundField DataField="setor" HeaderText="setor" />
        <asp:BoundField DataField="matricula_func" HeaderText="Matricula Funcionario" />
        <asp:BoundField DataField="senha" HeaderText="Senha" />
        <asp:ButtonField ButtonType="Link" CommandName="Editar"  HeaderText="" ControlStyle-CssClass="btn btn-info"  Text="EDITAR" />  
        <asp:ButtonField ButtonType="Link" CommandName="Excluir"  HeaderText="" ControlStyle-CssClass="btn btn-warning"  Text="EXCLUIR" /> 
    </Columns>
                </asp:GridView>
                </div>
            <h4 style="margin-left:30%;margin-top:0%">ENVIOS/RECEBIMENTO/ANEXOS</h4>
                <div style="width:800px;height:400px;margin-top:1%;margin-left:20%">
<asp:GridView ID="GridView2" runat="server" DataSourceID="" AutoGenerateColumns="false" Width="100%" Height="100%" OnRowCommand="GridView2_RowCommand" OnRowDataBound="GridView2_RowDataBound"  >
    <Columns>
        
        <asp:BoundField DataField="Remetente" HeaderText="Remetente" />
        <asp:BoundField DataField="Destinatario" HeaderText="Destinatario" />
        <asp:BoundField DataField="assunto" HeaderText="assunto" />
        <asp:BoundField DataField="mensagem" HeaderText="mensagem" />
        <asp:BoundField DataField="anexo" HeaderText="Anexo" />
        <asp:BoundField DataField="hora" HeaderText="hora" />
        
        <asp:ButtonField ButtonType="Link" CommandName="Excluir"  HeaderText="" ControlStyle-CssClass="btn btn-danger"  Text="EXCLUIR" /> 
    </Columns>

</asp:GridView>
                </div>
        </div>
    </form>
</body>
</html>
