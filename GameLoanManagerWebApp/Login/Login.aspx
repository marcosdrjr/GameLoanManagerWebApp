<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Login.aspx.cs" Inherits="GameLoanManagerWebApp.Login.WebForm1" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta charset="utf-8">
    <meta name="description" content="">
    <meta name="viewport" content="width=device-width">
    <link rel="stylesheet" href="../Content/bootstrap.css" />
    <link rel="stylesheet" href="../CssAux/style.css" />
    <title>Login</title>
</head>
<body>
    <form id="form1" runat="server">
        <div>
            </br>
        </div>
        <div class="login-page" style="align-content:center; vertical-align:middle">
            <div class="row">
                <div class="col-md-4 col-lg-4 col-md-offset-4 col-lg-offset-4" >
                    </br>
                <h1><mark>Sistema de Emprestimo de jogos</mark><small>   versão 000.001.010</small></h1>
                    <form role="form" ng-submit="submit()">
                        <div class="form-content">
                            <div class="form-group">
                                <asp:TextBox ID="txtCpf" type="Numeric" class="form-control input-underline input-lg" placeholder="CPF" runat="server" MaxLength="11"></asp:TextBox>
                            </div>
                            <div class="form-group">
                                <asp:TextBox ID="txtPass" type="password" class="form-control input-underline input-lg" placeholder="Password" runat="server" MaxLength="30"></asp:TextBox>
                            </div>
                        </div>
                        <div>
                            <asp:Button ID="btlEntrar" class="btn btn-white btn-outline btn-lg btn-rounded" runat="server" OnClick="btlEntrar_Click" Text="Entrar" />
                        </div>
                        <div>
                            <asp:Label ID="lblMsgs" runat="server" Text=""></asp:Label>
                        </div>

                    </form>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
