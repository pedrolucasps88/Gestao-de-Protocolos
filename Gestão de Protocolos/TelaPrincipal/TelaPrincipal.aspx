<%@ Page Title="" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="TelaPrincipal.aspx.cs" Inherits="Gestão_de_Protocolos.TelaPrincipal.TelaPrincipal" %>
<asp:Content ID="Content1" ContentPlaceHolderID="MainContent" runat="server">
    

    <div class="container" style="margin-left:35%;background-color:lightgray;width:360px;height:380px">

            <h1>Enviar mensagem</h1>

            <div class="form-group">
                <label for="to">Para:</label>
                <asp:DropDownList runat="server">
                    <asp:ListItem Text="setor1" />
                    <asp:ListItem Text="setor2" />
                </asp:DropDownList>
            </div>
             <div class="form-group">
                <label for="to">Para:</label>
                <asp:DropDownList runat="server">
                    <asp:ListItem Text="setor1" />
                    <asp:ListItem Text="setor2" />
                </asp:DropDownList>
            </div>

            <div class="form-group">
                <label for="subject">Assunto:</label>
                <asp:TextBox runat="server" ID="assuntos" class="form-control" placeholder="Digite o assunto da mensagem" />
            </div>

            <div class="form-group">
                <label for="body">Mensagem:</label>
              
                <asp:TextBox runat="server" ID="mensagema" class="form-control" TextMode="MultiLine" Rows="5" Placeholder="Digite a mensagem" />  
            </div>

            <div class="form-group">
                <label for="attachment">Anexar arquivo:</label>
                <asp:FileUpload runat="server" ID="arqui"/>              
            </div>
        <asp:LinkButton runat="server" ID="btnteste" OnClick="btnteste_Click">dsfgfdgsdfg</asp:LinkButton>

            <asp:LinkButton runat="server" OnClick="Unnamed_Click" Text="Enviar" class="btn btn-primary" style="background-color:black;width:100px;height:30px;font-size:16px;border-radius: 30px"></asp:LinkButton>
        <asp:TextBox runat="server" ID="testee"></asp:TextBox>
    </div>

</asp:Content>
