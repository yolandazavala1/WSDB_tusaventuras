<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Moroleon.aspx.cs" Inherits="tusaventuras.Formularios.Moroleon" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
        <meta charset="utf-8" />
        <link rel="stylesheet" href="../Content/bootstrap.css" type="text/css" />
	    <link rel="stylesheet" type="text/css" href="../css/estilo.css" />
	    <title>Moroleón</title>
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
    <div class="row mt-5" >
            <div class="col-md-6">
                <div class="card text-white">
                    <img src="../../img/mc1.png" class="card-img-top img-fluid" alt="..." />
                    <div class="card-img-overlay d-flex align-items-end">
                        <div class="card-body" style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
                            <h3 class="card-title">  
                                <asp:GridView ID="GridView1" runat="server" OnSelectedIndexChanged="GridView1_SelectedIndexChanged" >
                                </asp:GridView>

                            </h3>
                            <p class="card-text mb-2">    </p>

                        </div>
                    </div>
                </div>
                    </div>
        </div>

        <div class="row mt-5" >
            <div class="col-md-6">
                <div class="card text-white">
                    <img src="../../img/mc2.jpg" class="card-img-top img-fluid" alt="..." />
                    <div class="card-img-overlay d-flex align-items-end">
                        <div class="card-body" style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
                            <h3 class="card-title">  
                                <asp:GridView ID="GridView2" runat="server" >
                                </asp:GridView>

                            </h3>
                            <p class="card-text mb-2">    </p>

                        </div>
                    </div>
                </div>
            </div>
        </div> 


            <div class="row mt-5" >
            <div class="col-md-6">
                <div class="card text-white">
                    <img src="../../img/mc3.jpg" class="card-img-top img-fluid" alt="..." />
                    <div class="card-img-overlay d-flex align-items-end">
                        <div class="card-body" style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
                            <h3 class="card-title">  
                                <asp:GridView ID="GridView3" runat="server" >
                                </asp:GridView>

                            </h3>
                            <p class="card-text mb-2">    </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
            <div class="row mt-5" >
            <div class="col-md-6">
                <div class="card text-white">
                    <img src="../../img/mc4.jpg" class="card-img-top img-fluid" alt="..." />
                    <div class="card-img-overlay d-flex align-items-end">
                        <div class="card-body" style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
                            <h3 class="card-title">  
                                <asp:GridView ID="GridView4" runat="server" >
                                </asp:GridView>

                            </h3>
                            <p class="card-text mb-2">    </p>

                        </div>
                    </div>
                </div>
            </div>
        </div>
	    <asp:Button ID="btnBackEnd" runat="server" Text="Editar" Class="nav-link" ForeColor="Black" OnClick="btnBackEnd_Click"   />
            <asp:ScriptManager ID="ScriptManager1" runat="server">
            </asp:ScriptManager>
            <asp:UpdatePanel ID="UpdatePanel1" runat="server">
                <ContentTemplate>
                    <asp:Button ID="btnCrearRespaldo" runat="server"  Text="Crear Respaldo" OnClick="btnCrearRespaldo_Click" />
                    <asp:Label ID="lblAjax" runat="server" Text=""></asp:Label>
                    
                </ContentTemplate>
            </asp:UpdatePanel>
            <asp:Button ID="btnWebService" runat="server"  Text="WebService" OnClick="btnWebService_Click"  />
            <asp:GridView ID="GridView5" runat="server" >
                                </asp:GridView>
<%--        <button type="button" onclick="loadDoc()">Respaldar</button>
        <script  >
            function loadDoc() {


            };
        </script>--%>

    </form>
</body>
</html>
