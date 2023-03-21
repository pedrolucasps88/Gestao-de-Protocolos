<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="VerDoc.aspx.cs" Inherits="Gestão_de_Protocolos.TelaAdmin.VerDoc" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
     <link rel="stylesheet" href="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" />
	<script src="https://ajax.googleapis.com/ajax/libs/jquery/3.5.1/jquery.min.js"></script>
	<script src="https://cdnjs.cloudflare.com/ajax/libs/popper.js/1.16.0/umd/popper.min.js"></script>
	<script src="https://maxcdn.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
     <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
</head>
<body>
    <form id="form1" runat="server">
        <asp:Button Text="<< Voltar" runat="server" OnClick="Unnamed_Click" class="btn btn-warning" />  
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
  <p style="margin-left:35%;margin-top:5%"> Bem Vindo,</p><label style="margin-left:40%;font-size:26px;">ADMIN</label>
  <p style="margin-left:35%;margin-top:5%;">Documentos Padrões do setor:</p>
    <asp:Label ID="setor" Text="setor" runat="server" style="margin-left:40%;font-size:26px;" />
    <br/>
  <button class="btn btn-outline-dark" type="button" data-bs-toggle="offcanvas" data-bs-target="#demo" style="margin-left:40%;margin-top:2%">
   < VER DOCUMENTOS >
  </button>
</div>
    </form>
</body>
</html>
