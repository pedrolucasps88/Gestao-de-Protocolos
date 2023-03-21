<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="NovoDoc.aspx.cs" Inherits="Gestão_de_Protocolos.TelaAdmin.NovoDoc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Button ID="voltar" Text="<< Voltar" runat="server" OnClick="voltar_Click" class="btn btn-warning" />  
            <h1 style="margin-left:30%">Adicionar Novo Documento Padrão</h1>
            <p style="margin-left:35%;margin-top:5%;font-size:26px;">Para o setor:</p>
            <asp:Label Text="setor" ID="nome_set" runat="server" style="margin-left:40%;font-size:26px;" />
                 <div class="form-group"  style="margin-left:35%;margin-top:5%;">
                <label for="subject">Nome Documento:</label>
                <asp:TextBox runat="server" ID="Nome_doc" class="form-control" placeholder="Digite o Nome do Documento" style="width:300px;" />
            </div>
            <div class="form-group" style="margin-left:35%;margin-top:5%;">
                <label for="attachment" style="font-size:26px;">Escolher Capa(Só png):</label>
                <asp:FileUpload runat="server" ID="pngzin" /> 
            </div>

            <div class="form-group" style="margin-left:35%;margin-top:5%;">
                <label for="attachment" style="font-size:26px;">Escolher Documento para ser padrão(Só pdf):</label>
                <asp:FileUpload runat="server" ID="pdf" /> 
            </div>
                <asp:Button runat="server" type="submit" OnClick="Unnamed_Click" Text="Enviar" class="btn btn-primary" style="background-color:black;width:100px;height:50px;font-size:16px;border-radius: 30px;margin-left:45%;"></asp:Button>
        </div>
    </form>
</body>
</html>
