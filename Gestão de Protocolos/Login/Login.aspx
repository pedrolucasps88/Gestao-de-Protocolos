<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gestão_de_Protocolos.Login.Login" %>

<!DOCTYPE html>

    <html xmlns="http://www.w3.org/1999/xhtml">
    <head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
        <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
         <script src="https://kit.fontawesome.com/8ca27dcaf9.js" crossorigin="anonymous"></script>
    <title>Login</title>
    </head>
<body style="background-image: radial-gradient(circle, #2b3a6b, #303d70, #344075, #39427a, #3e457f, #424a84, #464f8a, #4a548f, #4e5c96, #52649e, #566ca5, #5b74ac);">
    <form id="form1" runat="server">
         <div class="initalpage">
                <asp:Button Text="<< Voltar" runat="server" class="btn btn-outline-dark" OnClick="Unnamed_Click"/>
           
    <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-6 "><img src="" style="width: 300px; margin-top:-30px;" alt=""></div>
        </div>
    </div>
    <div class="container-sm text-center pt-1">
    <h1 style="font-size: 40pt;margin-top: 2%;margin-left:3%;color:aliceblue;font-family: Arial;"><b>LOGIN</b> </h1>
        <asp:Image ImageUrl="~/arquivo.png" runat="server" style="margin-left:2%;width:100px;height:100px;" />
        <div style="margin-left:40%;margin-top:100px;border-style: solid;height:250px;width:300px;";>
    <div class="container-lg text-center pt-1">
        <label style="margin-left:5%;color:aliceblue;font-family: Arial;">LOGIN</label>
        <br /><br />
        
        <label style="color:aliceblue;font-family: Arial;" >Matricula do Funcionário:</label>
        <br/>
       <asp:TextBox ID="txtid_funcionario" runat="server" name="id_funcionario" CssClass="id_funcionario" placeholder="Insira sua Matricula" value=""></asp:TextBox>
       <br/>
       <label class="label" style="color:aliceblue;font-family: Arial;">Senha:</label>
       <br/>
       <asp:TextBox ID="txtpassword" runat="server" TextMode="password" name="password" CssClass="password" placeholder="Insira sua senha" value=""></asp:TextBox>
       <br/><br />
       <asp:LinkButton ID="btngo" runat="server" OnClick="btngo_Click" class="btn btn-success"  text="Entrar <i class='fa-solid fa-key' style='color: white;'></i>" > </asp:LinkButton>
        <br />
        <asp:Label runat="server" ForeColor="Red" ID="lbl_aviso"></asp:Label>
    </div>
        </div>
    </div>
    
    
    
        </div>
    </form>
</body>
</html>
