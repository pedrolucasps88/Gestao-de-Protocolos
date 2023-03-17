<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Update.aspx.cs" Inherits="Gestão_de_Protocolos.TelaAdmin.Update" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" />
  <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title></title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
             <asp:Button Text="<< Voltar" runat="server" OnClick="Unnamed_Click" class="btn btn-warning" />
            <h1 style="margin-left:35%">Atualizar Dados de Funcionario</h1>
                 <div class="mb-3 mt-3">
    <label for="email" class="form-label">Nome:</label>
    <asp:TextBox runat="server" class="form-control" id="nome" placeholder="Nome do Funcionario" name="email" ></asp:TextBox>
  </div>
  <div class="mb-3">
    <label for="pwd" class="form-label">Cargo:</label>
    <asp:TextBox runat="server" class="form-control" id="Cargo" placeholder="Cargo"  ></asp:TextBox>
  </div>
            <div class="mb-3">
    <label for="pwd" class="form-label">Senha:</label>
    <asp:TextBox runat="server" type="password" class="form-control" id="psw" placeholder="Senha" ></asp:TextBox> 
  </div>
 <div class="form-group">
                <label for="to">Para:</label>
                <asp:DropDownList runat="server" ID="setores" AutoPostBack="true" OnSelectedIndexChanged="setores_SelectedIndexChanged" >
                    <asp:ListItem Text="RH" Value="1" />
                    <asp:ListItem Text="Manutenção" Value="2" />
                    <asp:ListItem Text="Secretaria" Value="3" />
                    <asp:ListItem Text="Qualidade" Value="4" />
                </asp:DropDownList>
            </div>
  <asp:Button runat="server" ID="update" text="Atualizar dados de Funcionario" class="btn btn-outline-info" style="margin-left:45%" OnClick="update_Click"></asp:Button>
        </div>
    </form>
</body>
</html>
