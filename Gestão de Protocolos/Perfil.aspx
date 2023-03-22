<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Perfil.aspx.cs" Inherits="Gestão_de_Protocolos.Perfil" %>

<!DOCTYPE html>
<html>
<head>
    <form runat="server">
    <title>Perfil do Usuário</title>
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/css/bootstrap.min.css" rel="stylesheet" />
    <link href="https://fonts.googleapis.com/css?family=Open+Sans:400,600&display=swap" rel="stylesheet">
    <style>
        body {
            background-color: #f8f9fa;
            font-family: 'Open Sans', sans-serif;
        }
        .profile-card {
            background-color: #fff;
            box-shadow: 0px 0px 10px rgba(0, 0, 0, 0.1);
            border-radius: 10px;
            padding: 20px;
        }
        .profile-card img {
            max-width: 200px;
            border-radius: 50%;
            margin-bottom: 20px;
        }
        .profile-card h1 {
            font-weight: 600;
            font-size: 28px;
            margin-bottom: 10px;
        }
        .profile-card p {
            font-weight: 400;
            font-size: 18px;
            margin-bottom: 5px;
        }
        .profile-card .card-footer {
            background-color: #f8f9fa;
            border-top: none;
            text-align: center;
        }
    </style>
</head>
<body>
    <asp:Button ID="voltar" Text="<< Voltar" runat="server" OnClick="voltar_Click" class="btn btn-warning" /> 
    <div class="container my-5">
        
        <div class="row justify-content-center">
            <div class="col-md-8 col-lg-6">
                <div class="profile-card">
                    <img src="perfil.png" class="mx-auto d-block" alt="Foto do usuário" />
                    <asp:Label ID="nome" runat="server" class="text-center" Text="nome" style="font-size:30px;text-align:center;margin-left:35%; font-family: Abril Fatface, serif; font-style:oblique"></asp:Label><br/>
                    <asp:Label Text="Cargo" ID="cargo" runat="server" class="text-muted text-center" style="font-size:20px;text-align:center;margin-left:40%;" ></asp:Label><br/>
                     <asp:Label Text="setor" ID="setor" runat="server" class="text-muted text-center" style="font-size:20px;text-align:center;margin-left:40%;" ></asp:Label><br/>
                 
                    <hr />
                    <div class="row">
                        <div class="col-sm-6">
                            <p>Matrícula:</p>
                        </div>
                        <div class="col-sm-6">
                             <asp:Label Text="matricula" ID="matricula" runat="server" class="text-muted text-center"  ></asp:Label>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </div>
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js"></script>
    <script src="https://cdn.jsdelivr.net/npm/popper.js@1.16.0/dist/umd/popper.min.js"></script>
    <script src="https://stackpath.bootstrapcdn.com/bootstrap/4.5.2/js/bootstrap.min.js"></script>
    </form>
</body>
</html>