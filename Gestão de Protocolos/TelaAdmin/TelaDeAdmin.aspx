<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="TelaDeAdmin.aspx.cs" Inherits="Gestão_de_Protocolos.TelaAdmin.TelaDeAdmin" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body style="background-image: radial-gradient(circle, #2c4262, #374e75, #445a88, #53679b, #6273af);">

    <form id="form1" runat="server">
        <div>
             <asp:Button Text="<< Voltar" runat="server" class="btn btn-outline-dark" OnClick="Unnamed_Click"/>
            <h1 style="margin-left:25%;margin-top:5%;color:white">PAGINA DE ADIMINISTRADOR</h1>
            <h4 style="margin-left:32%;margin-top:5%;color:white">SETORES/FUNCIONARIOS</h4>
            <asp:Button ID="Insert" Text="Cadastrar Funcionario" class="btn btn-success" runat="server" style="margin-top:3%;margin-left:55%;" OnClick="Insert_Click" />
            <div style="width:800px;height:900px;margin-top:1%;margin-left:20%;color:white">
            <asp:GridView ID="GridView1" runat="server" DataSourceID="" AutoGenerateColumns="false" Width="100%" Height="100%" OnRowCommand="GridView1_RowCommand" OnRowDataBound="GridView1_RowDataBound"   >
    <Columns>
        <asp:BoundField DataField="matricula" HeaderText="Matricula" />
        <asp:BoundField DataField="nome" HeaderText="Nome do Funcionario" />
        <asp:BoundField DataField="setor" HeaderText="setor" />
        <asp:BoundField DataField="cargo" HeaderText="Cargo" />
        <asp:BoundField DataField="senha" HeaderText="Senha" />
        <asp:ButtonField ButtonType="Link" CommandName="Editar"  HeaderText="" ControlStyle-CssClass="btn btn-info"  Text="EDITAR" />  
        <asp:ButtonField ButtonType="Link" CommandName="Excluir"  HeaderText="" ControlStyle-CssClass="btn btn-warning"  Text="EXCLUIR" /> 
    </Columns>
                </asp:GridView>
                </div>
            <h4 style="margin-left:30%;margin-top:5%;color:white">ENVIOS/RECEBIMENTO/ANEXOS</h4>
                <div style="width:800px;height:500px;margin-top:5%;margin-left:20%;color:white">
<asp:GridView ID="GridView2" runat="server" DataSourceID="" AutoGenerateColumns="false" Width="100%" Height="100%" OnRowCommand="GridView2_RowCommand" OnRowDataBound="GridView2_RowDataBound"  >
    <Columns>
        <asp:BoundField DataField="id" HeaderText="id" />
         <asp:BoundField DataField="Remetente" HeaderText="Remetente" />
        <asp:BoundField DataField="nomeremetente" HeaderText="Nome do Remetente" />
        <asp:BoundField DataField="cargoreme" HeaderText="cargo do Remetente" />
        <asp:BoundField DataField="setorreme" HeaderText="setor do remetente" />
        <asp:BoundField DataField="nomedestinatario" HeaderText="Nome do Destinatario" />
        <asp:BoundField DataField="cargodesti" HeaderText="cargo do Destinatario" />
        <asp:BoundField DataField="setordesti" HeaderText="setor do Destinatario" />
        <asp:BoundField DataField="assunto" HeaderText="assunto" />
        <asp:BoundField DataField="mensagem" HeaderText="mensagem" />
        <asp:BoundField DataField="anexo" HeaderText="Anexo" />
        <asp:BoundField DataField="hora" HeaderText="hora" />
        
        <asp:ButtonField ButtonType="Link" CommandName="Excluir"  HeaderText="" ControlStyle-CssClass="btn btn-danger"  Text="EXCLUIR" /> 
    </Columns>

</asp:GridView>

                </div>
              <h4 style="margin-left:30%;margin-top:5%;color:white">SETORES E DOCUMENTOS PADRÕES</h4>
                <div style="width:800px;height:400px;margin-top:5%;margin-left:20%;color:white">
                    <asp:GridView ID="GridView3" AutoGenerateColumns="false" runat="server"  Width="100%" Height="100%" OnRowCommand="GridView3_RowCommand" OnRowDataBound="GridView3_RowDataBound" >
                   <Columns>
                        <asp:BoundField DataField="id" HeaderText="id" />
                       <asp:BoundField DataField="nome_setor" HeaderText="Nome do Setor" />
                           <asp:ButtonField ButtonType="Link" CommandName="SEEDOCUM"  HeaderText="Ver Documentos Padrões" ControlStyle-CssClass="btn btn-outline-primary"  Text="Ver documentos" /> 
                        <asp:ButtonField ButtonType="Link" CommandName="NEWDOCUM"  HeaderText="Adicionar Documentos" ControlStyle-CssClass="btn btn-outline-info"  Text="Adicionar Documentos" /> 
                       </Columns>

                    </asp:GridView>

                    </div>
        </div>
    </form>
</body>
</html>
