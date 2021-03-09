<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EcommerceSneakers.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>SNEAKER</title>
    <link href="css/footer.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!--INICIO DE NAV-->
        <nav class="navbar navbar-expand-lg  navbar-dark bg-dark ">
            <div class="container-fluid">
                <a class="navbar-brand" href="#">Ecommerce</a>
                <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                    <span class="navbar-toggler-icon"></span>
                </button>
                <div class="collapse navbar-collapse" id="navbarSupportedContent">
                    <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="#">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="#">Productos</a>
                        </li>
                        <li class="nav-item dropdown">
                            <a class="nav-link dropdown-toggle" href="#" id="navbarDropdown" role="button" data-bs-toggle="dropdown" aria-expanded="false">Dropdown
                            </a>
                            <ul class="dropdown-menu" aria-labelledby="navbarDropdown">
                                <li><a class="dropdown-item" href="#">Action</a></li>
                                <li><a class="dropdown-item" href="#">Another action</a></li>
                                <li>
                                    <hr class="dropdown-divider">
                                </li>
                                <li><a class="dropdown-item" href="#">Something else here</a></li>
                            </ul>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link disabled" href="#" tabindex="-1" aria-disabled="true">Disabled</a>
                        </li>
                    </ul>
                    <form class="d-flex">
                        <input class="form-control me-2" type="search" placeholder="Search" aria-label="Search">
                        <button class="btn btn-dark" type="submit">Search</button>
                        <input class="btn btn-dark" type="button" data-toggle="modal" data-target="#modal-login" value="Iniciar Sesión" />
                    </form>
                </div>
            </div>
        </nav>
        <!--FIN DE NAVBAR-->

        <!--INICIO DE MODA
        <div class="container">
            
        </div>
        Modal login -->
        <div class="modal fade" id="modal-login" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content bg-dark">
                    <div class="modal-header">
                        <h3>Inicia</h3><h4 class="modal-title" id="myModal-label">Sesión</h4>
                        <button type="button" class="close btn-ligth text-white" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>

                    <div class="modal-body">
                        <center>
                         <img src="images/plug.png" heigt="200" width="200"/>
                            </center>
                        <form role="form">
                            <div class="form-group">
                                <label class="control-label" for="email">Correo Electronico</label>
                                <input type="email" class="form-control" id="email" placeholder="Ingresa tu email">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Contraseña</label>
                                <input type="password" class="form-control" id="password" placeholder="Ingresa tu password">
                            </div>
                            <div class="checkbox">
                                <label>
                                    <input type="checkbox">
                                    Recuérdame
                                </label>
                            </div>
                        </form>
                        <div class="footermodal">
                            <center>
                    <button type="button"  class="btn btn-dark  btn-sm">Iniciar</button>
                    <input class="btn btn-secondary  btn-sm" type="button" data-toggle="modal" data-target="#modal-login-regis" value="¡Registrate!" />
                       </center>
                            <br />
                        </div>

                    </div>

                </div>
            </div>
        </div>

        <!--Modal registro-->
        <div class="modal fade" id="modal-login-regis" tabindex="-1" role="dialog">
            <div class="modal-dialog modal-lg">
                <div class="modal-content">
                    <div class="modal-header">
                        <h3>¡</h3><h4 class="modal-title" id="myModal-label">Registrate!</h4><h3>!</h3>
                        <button type="button" class="close btn-ligth text-white" data-dismiss="modal" aria-hidden="true">&times;</button>
                    </div>

                    <div class="modal-body">
                        <center>
                         <img src="images/plug.png" heigt="200" width="200"/>
                            </center>
                        <form role="form">
                            <div class="form-group">
                                <label class="control-label" for="text">Nombre completo</label>
                                <input type="text" class="form-control" id="text-name" placeholder="Ingresa tu nombre completo">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="email">Correo Electronico</label>
                                <input type="email" class="form-control" id="email" placeholder="Ingresa tu email">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Contraseña</label>
                                <input type="password" class="form-control" id="password" placeholder="Ingresa tu password">
                            </div>
                            <div class="form-group">
                                <label class="control-label" for="password">Confirma tu contraseña</label>
                                <input type="password" class="form-control" id="password" placeholder="Ingresa tu password">
                            </div>
                            <div class="footermodal">
                                <center>
                    <button id="btn2" type="button" class="btn btn-secondary  btn-sm" data-dismiss="modal">¡Crear mi cuenta!</button>
                    </center>
                                <br />
                            </div>
                        </form>
                    </div>


                </div>
            </div>
        </div>

        <!--FIN DE MODAL-->


    </form>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

    <script src="popper/popper.min.js"></script>
    <script src="plugins/sweetAlert2/sweetalert2.all.min.js"></script>
    <script src="codigo.js"></script>
</body>

</html>
