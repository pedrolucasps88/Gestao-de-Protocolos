<%@ Page Title="Página de reclamações e suporte" Language="C#" MasterPageFile="~/Site.Master" AutoEventWireup="true" CodeBehind="About.aspx.cs" Inherits="Gestão_de_Protocolos.About" %>

<asp:Content ID="BodyContent" ContentPlaceHolderID="MainContent" runat="server">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <script src="https://kit.fontawesome.com/8ca27dcaf9.js" crossorigin="anonymous"></script>
    <div style="text-align: justify">
        <h2><%: Title %></h2>
        <!--<h3>fale com os nossos atendentes agora mesmo.</h3>-->
        <!--<p>fale com os nossos atendentes agora mesmo.</p>-->
        <br />
        <br />
        <br />
        <div><p style="text-align: justify;font-size: 14px;margin-bottom:100px"> O sistema de gestão de protocolos desenvolvido pela ThreeHarpies é uma solução especializada em prestar serviços digitais para empresas de pequeno e médio porte. Com foco na gestão de protocolos internos, a nossa empresa se preocupa em oferecer uma experiência excepcional aos nossos clientes.

Para isso, estamos sempre empenhados em aprimorar e adaptar nossos sistemas às necessidades em constante mudança do mercado. Como parte desse processo, criamos este espaço para receber feedback de nossos clientes, a fim de identificar oportunidades de melhoria e implementar as mudanças necessárias.

A ThreeHarpies valoriza o apoio de nossos clientes e reconhece a importância de um relacionamento sólido e transparente com eles. Por isso, estamos comprometidos em fornecer soluções de alta qualidade e em constante evolução para atender às suas necessidades empresariais.






             </p></div>

        <div class="row" style="text-align: center">
            <div class="col-md-6">
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
            <div class="col-md-6" style="text-align:justify;">
                 <h3> Contate o nosso suporte por meio dos nossos canais de Atendimento</h3>
                <div id="info" style="text-align:justify; font-size:14px; margin-top:8px">
                    <div class="row">
                        <p><i class="fa-solid fa-envelope" style="color: #1363ec"></i> ThreeHarpies_GP@gmail.com</p> 
                    </div>
                    <div class="row">
                        <p><i class="fa-brands fa-instagram" style="color: #1100ff"></i> @ThreeHarpies_GP</p> 
                    </div>
                    <div class="row">
                        <p><i class="fa-solid fa-phone" style="color: #095cec"></i> (11)4002-8922</p> 
                    </div>
                </div>
                 


            </div>
        </div>
    </div>
    <p style="height: 300px"></p>
</asp:Content>
