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
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
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
    <form runat="server">
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
    
   <div class="offcanvas offcanvas-start text-bg-dark" id="demo">
  <div class="offcanvas-header">
    <h1 class="offcanvas-title">Documentos</h1>
    <asp:button runat="server" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" ></asp:button>
  </div>
  <div class="offcanvas-body" runat="server" >
      <div runat="server" id="docpadro">

      </div>
      
  
       
  </div>
</div>

<div class="container-fluid mt-3">
  <h1 style="margin-left:35%;margin-top:3%">Documentos Padrões</h1>
  <p> </p>
  <p style="margin-left:30%;margin-top:5%;">Documentos Padrões do setor:</p>
    <asp:Label ID="setor" Text="setor" runat="server" style="margin-left:40%;font-size:26px;" />
    <br/>
  <button class="btn btn-outline-dark" type="button" data-bs-toggle="offcanvas" data-bs-target="#demo" style="margin-left:40%">
    TESTE
  </button>
</div>
        </form>
</body>

</html>