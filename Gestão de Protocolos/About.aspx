<%@ Page Title="Página de reclamações e suporte" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Gestão_de_Protocolos.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/8ca27dcaf9.js" crossorigin="anonymous"></script>
    <div style="text-align: center">
        <h2><%: Title %></h2>
        <!--<h3>fale com os nossos atendentes agora mesmo.</h3>-->
        <!--<p>fale com os nossos atendentes agora mesmo.</p>-->
        <br />
        <br />
        <br />
        <div><h3> O sistema de gestão de protocolos é especializado em prestar serviços digitais para empresas de pequeno e médio porte.<br /> 
            Voltado para gestão de protocolos internos, a ThreeHarpies se preocupa com a experiência de seus clientes! Pensando nisso desenvolvemos<br />
             esse espaço para que possamos receber o feedback dos nossos sistemas e trabalharmos para constantes melhorias e futuras adaptações. Agradecemos o apoio de todos.
             </h3></div>

        <div class="row" style="text-align: center">
            <div class="col-md-6" style="margin-top:10%; margin-left:-2%">
                <div class="row">
                    <div class="col-sm-1" style="padding-top: 5px">
                        <asp:Label runat="server" ID="lblNome" Text="Nome:"></asp:Label>
                    </div>
                    <div class="col-sm-3">
                        <asp:TextBox runat="server" ID="txtNome" style="Height:33px; Width:270px;font-family:Arial;"  placeholder="Nome Completo"></asp:TextBox>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-sm-1" style="padding-top: 5px">
                        <asp:Label runat="server" ID="lblAssunto" Text="Assunto:"></asp:Label>
                    </div>
                    <div class="col-sm-3">
                        <asp:DropDownList runat="server" ID="Assunto" style="Height:33px; Width:270px;font-family:Arial;" class="btn btn-primary dropdown-toggle">
                            <asp:ListItem Text="infraestrutura do site" Value="infraestrutura do site" />
                            <asp:ListItem Text="recuperação da conta" Value="recuperação da conta" />
                        </asp:DropDownList>
                    </div>
                </div>
                <br />

                <div class="row">
                    <div class="col-sm-1" style="padding-top: 5px">
                        <asp:Label runat="server" ID="lblDetalhes" Text="Detalhes:"></asp:Label>
                    </div>
                    <div class="col-sm-3">

                        <asp:TextBox runat="server" ID="TextBox1" CssClass="form-control" style="Height:33px; Width:270px;font-family:Arial;" placeholder="Menssagem" TextMode="MultiLine"></asp:TextBox></center>
                    </div>
                </div>


                <br />
                <div class="row">
                    <div class="col-sm-2" style="padding-left: 54px">
                        <asp:Button ID="botao_enviar" Text="Enviar" class="btn btn-outline-dark" OnClick="botao_enviar_Click" runat="server" />
                    </div>
                </div>
            </div>
            <div class="col-md-6" style="position:absolute; margin-left:35%; margin-top:9%">
                 <h3> Contate o nosso suporte por meio dos nossos canais de Atendimento</h3>
                <div id="info" style="text-align:justify">
                    <div class="row">
                        <h3><i class="fa-solid fa-envelope" style="color: #1363ec;margin-left:30%"></i> ThreeHarpies_GP@gmail.com</h3> 
                    </div>
                    <div class="row">
                        <h3><i class="fa-brands fa-instagram" style="color: #1100ff;margin-left:30%"></i> @ThreeHarpies_GP</h3> 
                    </div>
                    <div class="row">
                        <h3><i class="fa-solid fa-phone" style="color: #095cec;margin-left:30%"></i> (11)4002-8922</h3> 
                    </div>
                </div>
                 


            </div>
        </div>
    </div>
    <p style="height: 300px"></p>
</asp:Content>
