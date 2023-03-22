<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gestão_de_Protocolos.Login.Login" %>

<!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
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
    <h1 style="font-size: 40pt;margin-top: 0 px;margin-left:0%;"><b>LOGIN</b> </h1>
        <div style="margin-left:40%;margin-top:200px;border-style: solid;height:250px;width:300px;";>
    <div class="container-lg text-center pt-1">
        <label style="margin-left:5%">LOGIN</label>
        <br /><br />
        
        <label >Matricula do Funcionário:</label>
        <br/>
       <asp:TextBox ID="txtid_funcionario" runat="server" name="id_funcionario" CssClass="id_funcionario" placeholder="Insira sua Matricua" value=""></asp:TextBox>
       <br/>
       <label class="label">Senha:</label>
       <br/>
       <asp:TextBox ID="txtpassword" runat="server" TextMode="password" name="password" CssClass="password" placeholder="Insira sua senha" value=""></asp:TextBox>
       <br/><br />
       <asp:Button ID="btngo" runat="server" OnClick="btngo_Click" class="btn btn-success"  text="Entrar >>" > </asp:Button>
        <br />
        <asp:Label runat="server" ForeColor="Red" ID="lbl_aviso"></asp:Label>
    </div>
        </div>
    </div>
    
    
    
        </div>
    </form>
</body>
</html>
