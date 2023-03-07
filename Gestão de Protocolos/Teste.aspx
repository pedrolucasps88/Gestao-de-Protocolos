<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Teste.aspx.cs" Inherits="Gestão_de_Protocolos.Teste" %>

<!DOCTYPE html>
<html>
<head>
	<title>Minha Página Inicial</title>
	<meta charset="utf-8">
	<meta name="viewport" content="width=device-width, initial-scale=1">
	<link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css">
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
</head>
<body>
	<nav class="navbar navbar-expand-md bg-dark navbar-dark">
		<a class="navbar-brand" href="#">Minha Empresa</a>
		<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#collapsibleNavbar">
			<span class="navbar-toggler-icon"></span>
		</button>
		<div class="collapse navbar-collapse" id="collapsibleNavbar">
			<ul class="navbar-nav">
				<li class="nav-item">
					<a class="nav-link" href="#">Início</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Sobre Nós</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Produtos</a>
				</li>
				<li class="nav-item">
					<a class="nav-link" href="#">Contato</a>
				</li>
			</ul>
		</div>
	</nav>
	
	<div class="container" runat="server" >
        <form runat="server">
		 <asp:FileUpload ID="fileUpload" runat="server" />
		 <asp:Button runat="server" type="submit" OnClick="Unnamed_Click" Text="Enviar" class="btn btn-primary"></asp:Button>
            <asp:Label Text="text" runat="server" ID="lblAssinatura"/>

            <asp:LinkButton runat="server" ID="lnkDownload" Visible="false" ></asp:LinkButton>
            
	</form>
            </div>
		 
</body>
</html>