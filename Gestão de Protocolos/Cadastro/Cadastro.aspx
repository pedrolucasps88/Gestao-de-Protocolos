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
      <label">NOME DA EMPRESA:</label>
      <asp:TextBox runat="server" class="form-control" id="nome_empresa" placeholder="Digite o nome da empresa" name="nome_empresa"></asp:TextBox>
    </div>
    <div class="mb-3 mt-3">

      <label>CNPJ:</label>
      <asp:TextBox runat="server" id="txt_empresa_cnpj" placeholder="Digite o CNPJ da Empressa" value = " " name="txt_empresa_cnpj"></asp:TextBox>
    </div>

    <div class="mb-3">
      <label >EMAIL:</label>
     <asp:TextBox runat="server" type="email" class="form-control" id="email" placeholder="Digite o email da empresa" name="email"></asp:TextBox>
    </div>
   
    <div class="row">
      <div class="col">
      <asp:CheckBox runat="server" class="form-check-input" type="checkbox" name="remember" Text="Confirmo que tudo é veridico" />  
      </div>
      <div class="col">
          <asp:Button Text="Confirmar" runat="server" OnClick="criarbd_Click" />
      </div>
    </div>  
</div>


          <div runat="server" id="divSETORES" class="container mt-3" visible="false">
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
         <asp:Button runat="server"  Id= "voltar" Text ="<< voltar" OnClick="voltar_Click"/> 
      </div>
      <div class="col">
          <asp:Button runat="server" ID="continuar" Text="continuar >>" OnClick="continuar_Click"/>
      </div>
    </div>  
</div>
        
        <br/>
        <div runat="server" id="aqui" visible="false" style="width:1000px;height:1000px;margin-left:10%">   
            <div style='width: 500px;height:300px; margin-left:10%; margin-top:10%; border: 5px solid black; '>
                
                <asp:Label Text="SETOR" runat="server" ID="titu" />

      <label for='NomeSetor'>Nome Setor:</label>
      <asp:TextBox runat="server"  CssClass='form-control' id='nome_Setor' placeholder='Nome do Setor' />
   
   
      <label>ID DO SETOR:</label>
      <asp:TextBox runat="server" TextMode="number" CssClass='form-control' id='id_SETOR' placeholder='Digite o Id do setor' />

      <asp:CheckBox Text = 'Assinatura online?' runat='server' />

                <asp:Button Text="Confirmar" name="CONFIRM" ID="Confirm" runat="server" OnClick="Confirm_Click" />
                  <br />
        <asp:Label runat="server" ForeColor="Red" ID="lbl_aviso"></asp:Label>
           </div>

        </div>

       
  

        

    </form>
</body>
</html>
