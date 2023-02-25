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
    <div class="container">
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
                <label for="subject">Assunto:</label>
                <input type="text" class="form-control" id="subject" placeholder="Digite o assunto da mensagem">
            </div>

            <div class="form-group">
                <label for="body">Mensagem:</label>
                <textarea class="form-control" id="body" rows="5"></textarea>
            </div>

            <div class="form-group">
                <label for="attachment">Anexar arquivo:</label>
                <input type="file" class="form-control-file" id="attachment">
            </div>

            <button type="submit" class="btn btn-primary">Enviar</button>
        </form>
    </div>

    <script src="https://code.jquery.com/jquery-3.3.1.slim.min.js"></script>
    <script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.14.7/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.3.1/js/bootstrap.min.js"></script>
</body>
</html>
</asp:Content>
