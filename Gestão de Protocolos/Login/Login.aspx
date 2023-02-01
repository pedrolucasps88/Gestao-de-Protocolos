<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="Gestão_de_Protocolos.Login.Login" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
         <div class="initalpage">
           
    <div class="container-fluid" >
        <div class="row">
            <div class="col-sm-6 "><img src="" style="width: 300px; margin-top:-30px;" alt=""></div>
          
        </div>
     <asp:Button ID="BtnCadast" runat="server" style="margin-top:20px;margin-left:1000px;"  text="CADASTRAR" ></asp:Button>
    </div>
    <div class="container-sm text-center pt-1">
    <h1 style="font-size: 40pt;margin-top: 0 px;margin-left:600px " > LOGIN</h1>
        <div style="margin-left:550px;margin-top:200px;border-style: solid;height:250px;width:300px;";>
    <div class="container-lg text-center pt-1">
        <label style="margin-left:100px">LOGIN</label>
        <br/>
        <label >CNPJ:</label>
         <br/>
       <asp:TextBox ID="txtCnpj" runat="server" name="cnpj" placeholder="Insira o cnpj da empresa" value=""></asp:TextBox>
       <br/>
        <label >EMAIL OU NOME:</label>
        <br/>
       <asp:TextBox ID="txtemail" runat="server" TextMode="email" name="emailorname" CssClass="txtEmail" placeholder="Insira seu email ou nome" value=""></asp:TextBox>
       <br/>
       <label class="label">SENHA:</label>
       <br/>
       <asp:TextBox ID="txtpassword" runat="server" TextMode="password" name="password" CssClass="password" placeholder="senha" value=""></asp:TextBox>
       <br/>
       <asp:Button ID="btngo" runat="server"  text="VAMOS LÁ" ></asp:Button>
    </div>
        </div>
    </div>
    
    
    
        </div>
    </form>
</body>
</html>
