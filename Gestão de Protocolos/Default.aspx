<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Gestão_de_Protocolos._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

    <html>
<head>
    <title>Enviar Arquivos e Mensagens</title>
    <meta charset="utf-8" />
    <meta name="viewport" content="width=device-width, initial-scale=1" />
    <link href="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/css/bootstrap.min.css" rel="stylesheet" />
</head>
<body>
        <div class="container">
            <div class="row">
                <div class="col-sm-6">
                    <h2>Enviar Arquivos</h2>
                    <div class="form-group">
                        <label for="fileUpload">Escolher arquivo</label>
                        <input type="file" id="fileUpload" />
                    </div>
                    <button type="submit" class="btn btn-primary">Enviar</button>
                </div>
                <div class="col-sm-6">
                    <h2>Enviar Mensagem</h2>
                    <div class="form-group">
                        <label for="message">Mensagem</label>
                        <textarea class="form-control" id="message" rows="3"></textarea>
                    </div>
                    <button type="submit" class="btn btn-primary">Enviar</button>
                </div>
            </div>
        </div>
    
    <script src="https://code.jquery.com/jquery-3.2.1.slim.min.js"></script>
    <script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.0.0/js/bootstrap.min.js"></script>
</body>
</html>

</asp:Content>
