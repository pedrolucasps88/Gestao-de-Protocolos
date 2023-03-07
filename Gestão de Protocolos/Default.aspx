<%@ Page Title="Home Page" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="Default.aspx.cs" Inherits="Gestão_de_Protocolos._Default" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">

  

         <div class="container body-content">
            <div class="jumbotron">
                <h1>Welcome to File Sharing Site!</h1>
                <p class="lead">We make it easy to send and receive files securely and quickly.</p>
                <p><a class="btn btn-primary btn-lg" href="#" role="button">Get started today</a></p>
            </div>
            <div class="row">
                <div class="col-md-4">
                    <h2>Upload files with ease</h2>
                    <p>Our simple and intuitive interface makes it easy to upload your files and send them securely to your intended recipient.</p>
                <asp:LinkButton Text="Envio" runat="server" class="btn btn-info" ID="Envio" OnClick="Envio_Click" href=""/>
                </div>
                <div class="col-md-4">
                    <h2>Receive files instantly</h2>
                    <p>With our fast and reliable servers, you can receive your files in seconds, no matter where you are in the world.</p>
               <asp:LinkButton Text="Caixa de entrada" runat="server" class="btn btn-warning" ID="CaixaE" OnClick="CaixaE_Click" href="/Caixa de Entrada/CaixaDeEntrada.aspx"/>
                    </div>
                <div class="col-md-4">
                    <h2>Secure and reliable</h2>
                    <p>We take your privacy and security seriously, using the latest encryption and security measures to ensure your files are safe and secure.</p>
                    <asp:Button Text="Sobre nós e o site" runat="server" class="btn btn-dark" href="#"/>
                </div>
            </div>
            <hr />
        </div>

        <script src="Scripts/jquery-3.3.1.min.js"></script>
        <script src="Scripts/bootstrap.min.js"></script>


</asp:Content>
