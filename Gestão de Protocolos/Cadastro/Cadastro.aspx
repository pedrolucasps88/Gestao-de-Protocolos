<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Cadastro.aspx.cs" Inherits="Gestão_de_Protocolos.Cadastro.Cadastro" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
  <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet"/>
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
      <div runat="server" id="EMPRESA" class="container mt-3" visible="true">
  <h2>CADASTRAR EMPRESA</h2>
  
    <div class="mb-3 mt-3">
      <label for="email">NOME DA EMPRESA:</label>
      <asp:TextBox runat="server" type="email" class="form-control" id="nome" placeholder="Enter email" name="email"></asp:TextBox>
    </div>
    <div class="mb-3 mt-3">
      <label for="email">CNPJ:</label>
      <asp:TextBox runat="server" type="email" class="form-control" id="cnpj" placeholder="Enter email" name="email"></asp:TextBox>
    </div>
    <div class="mb-3">
      <label for="pwd">EMAIL:</label>
     <asp:TextBox runat="server" type="password" class="form-control" id="email" placeholder="Enter password" name="pswd"></asp:TextBox>
    </div>
   
    <div class="row">
      <div class="col">
      <asp:CheckBox runat="server" class="form-check-input" type="checkbox" name="remember" Text="Confirmo que tudo é veridico" />  
      </div>
      <div class="col">
          <asp:Button Text="Confirmar" runat="server" OnClick="Unnamed_Click" />
      </div>
    </div>  
</div>


          <div runat="server" id="SETORES" class="container mt-3" visible="false">
  <h2>CADASTRAR SETORES</h2>
  
    <div class="mb-3 mt-3">
      <label for="email">NUMERO DE SETORES:</label>
      <asp:TextBox runat="server" id="Numerodesetores" TextMode="Number" OnTextChanged="Numerodesetores_TextChanged" >
      </asp:TextBox>
    </div>
    <div class="mb-3 mt-3">
 
    </div>
      <div class="row">
      <div class="col">
         <asp:Button runat="server" Text="<< voltar" OnClick="Unnamed_Click1"/> 
      </div>
      <div class="col">
          <asp:Button runat="server" Text="continuar >>"/>
      </div>
    </div>  
</div>

        <br/>
        <div runat="server" id="aqui" visible="false" style="width:1000px;">   


        </div>
       
    
  

        

    </form>
</body>
</html>
