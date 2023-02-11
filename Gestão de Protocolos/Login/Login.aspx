<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gestão_de_Protocolos.Login.Login" %>

<!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login</title>
    </head>
<body>
    <form id="form1" runat="server">
         <div class="initalpage">
           
    <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-6 "><img src="" style="width: 300px; margin-top:-30px;" alt=""></div>
        </div>
    </div>
    <div class="container-sm text-center pt-1">
    <h1 style="font-size: 40pt;margin-top: 0 px;margin-left:600px"><b>LOGIN</b> </h1>
        <div style="margin-left:550px;margin-top:200px;border-style: solid;height:250px;width:300px;";>
    <div class="container-lg text-center pt-1">
        <label style="margin-left:100px">LOGIN</label>
        <br /><br />

          <label class="label">Nome empresa:</label>
       <br/>
       <asp:TextBox ID="txtbanco" runat="server" placeholder="Insira o nome da empresa conforme foi cadastrado" value=""></asp:TextBox>
       <br/>
        
        <label class="label">CNPJ:</label>
       <br/>
       <asp:TextBox ID="txt_cnpj" runat="server" placeholder="Insira o CNPJ da empresa" value=""></asp:TextBox>
       <br/>


        <label >Id Funcionário:</label>
        <br/>
       <asp:TextBox ID="txtid_funcionario" runat="server" name="id_funcionario" CssClass="id_funcionario" placeholder="Insira seu id" value=""></asp:TextBox>
       <br/>
       <label class="label">Senha:</label>
       <br/>
       <asp:TextBox ID="txtpassword" runat="server" TextMode="password" name="password" CssClass="password" placeholder="Insira sua senha" value=""></asp:TextBox>
       <br/><br />
       <asp:Button ID="btngo" runat="server" OnClick="btngo_Click"  text="Entrar" ></asp:Button>
        <br />
        <asp:Label runat="server" ForeColor="Red" ID="lbl_aviso"></asp:Label>
        <br />
        <asp:Label runat="server" ForeColor="Red" ID="lbl_aviso2"></asp:Label>
    </div>
        </div>
    </div>
    
    
    
        </div>
    </form>
</body>
</html>
