<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Moroleon_editar.aspx.cs" Inherits="tusaventuras.Formularios.Moroleon_editar" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
<meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <title>Editar Moroleon</title>
    <link rel="stylesheet" href="../Content/bootstrap.css" />

    <link rel="stylesheet" href="../css/all.css" />

    <!--Custom styles-->
    <link rel="stylesheet" href="../css/login.css" />
</head>
<body>
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
                        <asp:Label ID="lblIdUsuario" runat="server"></asp:Label>
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
            <div >
                <div class="card-header text-center">
                    <h3>Editar Moroleon</h3>
                </div>
                <div class="card-body"> 
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><asp:Label ID="lblId" runat="server" Text="Id:"></asp:Label></span>
                            </div>
                            <asp:TextBox ID="txtId"  class="form-control" runat="server" Width="500px"></asp:TextBox>
                            
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><asp:Label ID="lblNombre" runat="server" Text="Nombre:"></asp:Label></span>
                            </div>
                            <asp:TextBox ID="txtNombre"  class="form-control" runat="server" Width="996px"></asp:TextBox>
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><asp:Label ID="lblDireccion" runat="server" Text="Direccion:"></asp:Label></span>
                            </div>
                            <asp:TextBox ID="txtDireccion"  class="form-control" runat="server" Width="996px"></asp:TextBox>
                        </div>
                        <div class="input-group form-group">
                            <div class="input-group-prepend">
                                <span class="input-group-text"><asp:Label ID="lblDescripcion" runat="server" Text="Descripcion:"></asp:Label></span>
                            </div>
                            <asp:TextBox ID="txtDescripcion"  class="form-control" runat="server" Width="996px"></asp:TextBox>
                        </div>
                        <div class="form-group">
                            <asp:Button ID="btnEditar" class="btn btn-primary btn-block" runat="server" Text="Editar" OnClick="btnEditar_Click"  />
                            
                        </div>
                </div>
            </div>
        </div>
    </div>
    </form>
</body>
</html>
