<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Inicio.aspx.cs" Inherits="tusaventuras.Inicio" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <link rel="stylesheet" type="text/css" href="../Content/bootstrap.css"/>
	<link rel="stylesheet" type="text/css" href="../css/estilo.css"/>
	<title>Proyecto Final turism</title>
    
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
        <main>
            <div class="jumbotron text-white p-m- rounded" style="background-image: linear-gradient(to right bottom, rgba(252,252,252,0.1), rgba(32, 32, 32, 0.8)),url('')">
                <div class="card-body" >
                    <h2 class="display-4 mt-4">Turismo en la región sur de gto</h2>
                </div>
            </div>
            <%--Fin del jumbotron--%>
            <%--Slider--%>
            <div class="container-fluid">
                <div class="col-md-12-sm-12">
                    <div id="carouselExampleIndicators" class="carousel slide" data-ride="carousel">
                        <ol class="carousel-indicators">
                            <li data-target="carouselExampleIndicators" data-slide-to="0" class="active"></li>
                            <li data-target="carouselExampleIndicators" data-slide-to="1"></li>
                            <li data-target="carouselExampleIndicators" data-slide-to="2"></li>
                            <li data-target="carouselExampleIndicators" data-slide-to="3"></li>
                            <li data-target="carouselExampleIndicators" data-slide-to="4"></li>
                            <li data-target="carouselExampleIndicators" data-slide-to="5"></li>
                        </ol>
                        <div class="carousel-inner">
                            <div class="carousel-item active">
                                <img src="../pic/aca-5.jpg" class="d-block w-100" alt="" />
                                <div class="carousel-caption d-none d-md-block color-fondo" style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
                                    <h5>Santuario de Guadalupe, Acámbaro gto</h5>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="../pic/aca-2.jpg" class="d-block w-100 h-100" alt="..." />
                                <div class="carousel-caption d-none d-md-block color-fondo" style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
                                    <h5>Taj Majal en Acámbaro</h5>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="../pic/yuri-4.jpg" class="d-block w-100 h-100" alt="..." />
                                <div class="carousel-caption d-none d-md-block color-fondo" style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
                                    <h5>Yuriria, gto</h5>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="../pic/aca-3.jpg" class="d-block w-100 h-100" alt="..." />
                                <div class="carousel-caption d-none d-md-block color-fondo" style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
                                    <h5>Templo del Hospital, Acámbaro gto</h5>
                                </div>
                            </div>
                            <div class="carousel-item">
                                <img src="../pic/aca-4.jpg" class="d-block w-100 h-100" alt="..." />
                            <div class="carousel-caption d-none d-md-block color-fondo" style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
                                <h5>Templo de la promesa, Acámbaro gto</h5>
                            </div>
                        </div>
                        <div class="carousel-item">
                            <img src="../pic/aca-1.jpg" class="d-block w-100 h-100" alt="..." />
                            <div class="carousel-caption d-none d-md-block color-fondo" style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
                                <h5>Nuevo Chupícuaro, Acámbaro gto</h5>
                            </div>
                        </div>
                    </div>
                    <a class="carousel-control-prev" href="#carouselExampleIndicators" role="button" data-slide="prev">
                        <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                        <span class="sr-only">Previous</span>
                    </a>
                    <a class="carousel-control-next" href="#carouselExampleIndicators" role="button" data-slide="next">
                        <span class="carousel-control-next-icon" aria-hidden="true"></span>
                        <span class="sr-only">Next</span>
                    </a>
                </div>
                </div>
            </div>
            <hr />
            <div class="row mt-5">
      <div class="col-md-6">
        <div class="card text-white">
          <img src="../pic/uri-1.jpg" class="card-img-top" alt="..." />
          <div class="card-img-overlay d-flex align-items-end">
            <div class="card-body" style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
              <strong class="d-inline-block mb-2 text-warning" >Uriangato</strong>
              <h3 class="card-title">Uriangato Guanjuato, México</h3>
              <p class="card-text mb-2">
                Uriangato es uno de los 46 municipios del estado de Guanajuato, ubicado al sur del estado, limitando al poniente con el municipio de Moroleón, al norte y oriente con el municipio de Yuriria y al sur con el estado de Michoacán. Tiene una población de 62,761 habitantes.
              </p>
               <a href="admin/Uriangato.php">Ir al link</a>
              </div>
            </div>
          </div>
        </div>
        <div class="col-md-6">
          <div class="card text-white">
            <img src="../pic/moro-1.jpg" class="card-img-top" alt="..." />
            <div class="card-img-overlay d-flex align-items-end">
            <div class="card-body"  style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
            <strong class="d-inline-block mb-2 text-light">Moroleón</strong>
              <h3 class="card-title">Moroleón, Guanajuato México.</h3>
                  <p class="card-text mb-2">
                    Moroleón es una ciudad ubicada en el municipio del mismo nombre del estado de Guanajuato, adyacente a la frontera con el estado de Michoacán, en México. Se encuentra directamente al oeste de la ciudad de Uriangato y forma parte del área metropolitana de Uriangato-Moroleón que incluye los dos municipios.
                  </p>
                  <a href="admin/Uriangato.php">Ir al link</a>
              </div>
            </div>
          </div>
        </div>
       
        <div class="col-md-6">
          <div class="card text-white">
            <img src="../pic/yuri-1.jpg" class="card-img-top" alt="..." />
            <div class="card-img-overlay d-flex align-items-end">
            <div class="card-body"  style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
            <strong class="d-inline-block mb-2 text-light">Yuriria</strong>
              <h3 class="card-title">Yuriria, Guanajuato México.</h3>
                  <p class="card-text mb-2">
                    El municipio de Yuriria es uno de los 46 municipios del estado mexicano de Guanajuato. La cabecera municipal es la ciudad de Yuriria, que destaca por su localización y por su importancia histórica. Antiguamente era conocida como San Pablo Yuririhapúndaro.
                  </p>
                  <a href="admin/Yuriria.php">Ir al link</a>
              </div>
            </div>
          </div>
        </div>

        <div class="col-md-6">
          <div class="card text-white">
            <img src="../pic/aca-1.jpg" class="card-img-top" alt="..." />
            <div class="card-img-overlay d-flex align-items-end">
            <div class="card-body"  style="background-image: linear-gradient(rgba(252, 252, 252, 0.1),rgba(32, 32, 32, 0.8));">
            <strong class="d-inline-block mb-2 text-light">Acámbaro</strong>
              <h3 class="card-title">Acámbaro, Guanjuato México.</h3>
                  <p class="card-text mb-2">
                    El municipio de Yuriria es uno de los 46 municipios del estado mexicano de Guanajuato. La cabecera municipal es la ciudad de Yuriria, que destaca por su localización y por su importancia histórica. Antiguamente era conocida como San Pablo Yuririhapúndaro.
                  </p>
                  <a href="admin/Acambaro.php">Ir al link</a>
              </div>
            </div>
          </div>
        </div>

      </div>
        </main>
        <hr />
        <footer id="sticky-footer" class="py-3 bg-dark text-white-50">
        <div class="footer-copyright text-center py-3">
            Todos los derechos Reservados - 2019
            <br />
            Desarrollado por Yolanda Zavala Magaña - PW - ISC - ITSUR
    </div>
</footer>
	<script type="text/javascript" src="../js/jquery-3.4.1.min.js"></script>
	<script type="text/javascript" src="../js/bootstrap.min.js"> </script>
    
    </form>
</body>
</html>
