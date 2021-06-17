<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Signup.aspx.cs" Inherits="tusaventuras.Formularios.Signup" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Login Page</title>
    <!--Made with love by Mutiullah Samim -->

    <!--Bootsrap 4 CDN-->
    <link rel="stylesheet" href="../Content/bootstrap.css" />

    <!--Fontawesome CDN-->
    <link rel="stylesheet" href="../css/all.css" />

    <!--Custom styles-->
    <link rel="stylesheet" href="../css/login.css" />
</head>
<body class="login">
    <form id="form1" runat="server">
        <nav class="navbar navbar-expand-md navbar-dark fixed-top bg-dark">
            <div class="collapse navbar-collapse" id="navbarMenu">
                <ul class="navbar-nav mr-auto">
                    <li class="nav-item">
                        <asp:Button ID="btnInicio" runat="server" Text="Inicio" Class="nav-link" ForeColor="Black" OnClick="btnInicio_Click"  />
                    </li>
                    <li class="nav-item">
                        <asp:Button ID="btnMoroleon" runat="server" Text="Moroleón" Class="nav-link" ForeColor="Black" OnClick="btnMoroleon_Click"  />
                    </li>
                    <li class="nav-item">
                        <asp:Button ID="btnLogin" runat="server" Text="Login" Class="nav-link" ForeColor="Black" OnClick="btnLogin_Click"  />
                    </li> 
                </ul>
            </div>
            <p>
                &nbsp;</p>

        </nav>
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <hr />
        <div class="container login-form">
        <div class="d-flex justify-content-center h-100">
            <div class="card card-login">
                <div class="card-header text-center">
                    <h3>Signup or <a href="Login.aspx">Login</a></h3>
                </div>
                <div class="card-body">
                    
                        <div class="input-group form-group">
<%--                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class=""></i></span>
                            </div>--%>
                             <asp:TextBox ID="txtUsuarios"  class="form-control" runat="server" Width="996px"></asp:TextBox>
                            <%--<input type="text" class="form-control" name="email" placeholder="usuario" />--%>
                        </div>
                        <div class="input-group form-group">
<%--                            <div class="input-group-prepend">
                                <span class="input-group-text"><i class=""></i></span>
                            </div>--%>
                            <%--<input type="password" class="form-control" name="password" placeholder="contraseña" />--%>
                            <asp:TextBox ID="txtContraseña" class="form-control"  runat="server" Width="996px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <%--<input type="submit" value="Entrar" class="btn btn-primary btn-block" />--%>
                            <asp:Button ID="Button1" class="btn btn-primary btn-block" runat="server" Text="Reistrar" OnClick="Button1_Click" />
                        </div>
                </div>
        </div>         
        </div>
        </div>
        <asp:Label ID="Label1" runat="server" Text=""></asp:Label>
    </form>
</body>
</html>
