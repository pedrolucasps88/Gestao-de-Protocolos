<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaPrincipal.aspx.cs" Inherits="Gestão_de_Protocolos.TelaPrincipal.TelaPrincipal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    
<html lang="en">
<head>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1.0" />
    <title>Enviar mensagem</title>
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
    <div class="container" style="margin-left:35%;background-color:lightgray;width:360px;height:380px">
        <form>
            <h1>Enviar mensagem</h1>

            <div class="form-group">
                <label for="to">Para:</label>
                <asp:DropDownList runat="server">
                    <asp:ListItem Text="setor1" />
                    <asp:ListItem Text="setor2" />
                </asp:DropDownList>
            </div>
             <div class="form-group">
                <label for="to">Para:</label>
                <asp:DropDownList runat="server">
                    <asp:ListItem Text="setor1" />
                    <asp:ListItem Text="setor2" />
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
                <asp:FileUpload runat="server" ID="arqui"/>              
            </div>

            <asp:Button runat="server" type="submit" OnClick="Unnamed_Click" Text="Enviar" class="btn btn-primary" style="background-color:black;width:100px;height:30px;font-size:16px;border-radius: 30px"></asp:Button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
</asp:Content>
