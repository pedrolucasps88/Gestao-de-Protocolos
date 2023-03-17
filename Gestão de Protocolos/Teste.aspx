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
		<%--<script type="text/javascript">
            function MostrarPDF(miniatura) {
                var visualizacao = document.getElementById('<%=pnlVisualizacao.ClientID %>');
        visualizacao.innerHTML = "<embed src='" + miniatura.replace("data:image/png;base64,", "") + "' width='100%' height='100%'></embed>";
        var tabContainer = $find('<%=TabContainer1.ClientID %>');
                tabContainer.set_activeTabIndex(1);
            }
        </script>--%>
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
	<ajaxToolkit:TabContainer ID="TabContainer1" ClientID="TabContainer1" runat="server" ActiveTabIndex="0">
    <ajaxToolkit:TabPanel runat="server" HeaderText="Miniaturas" ID="TabPanel1">
        <asp:Repeater ID="rptMiniaturas" runat="server">
            <ItemTemplate>
                <asp:Image ID="imgMiniatura" runat="server" ImageUrl='<%# Container.DataItem %>' />
            </ItemTemplate>
        </asp:Repeater>
    </ajaxToolkit:TabPanel>
    <ajaxToolkit:TabPanel runat="server" HeaderText="Visualização" ID="TabPanel2">
        <asp:Panel ID="pnlVisualizacao" runat="server" />
    </ajaxToolkit:TabPanel>
</ajaxToolkit:TabContainer>
</body>

</html>