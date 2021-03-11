<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="ProductDetail.aspx.cs" Inherits="EcommerceSneakers.ProductDetail" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title></title>
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <header>
            <nav class="navbar navbar-expand-lg" style="background-color: #0D0D0D">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">Ecommerce</a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarSupportedContent" aria-controls="navbarSupportedContent" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse" id="navbarSupportedContent">
                        <div class="col-3">
                            <ul class="navbar-nav me-auto mb-2 mb-lg-0">
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Home</a>
                                </li>
                                <li class="nav-item">
                                    <a class="nav-link" href="#">Ofertas</a>
                                </li>
                            </ul>
                        </div>
                        <div class="col-6">
                            <div class="row">
                                <div class="input-group col-md-10">
                                    <input class="form-control me-2" type="search" placeholder="Buscar un producto por marca o modelo" />
                                    <span class="input-group-text" id="basic-addon1">
                                        <i class="bi bi-search" style="color: #05AFF2;"></i>
                                    </span>
                                </div>
                                <div class="col-md-2">
                                </div>
                            </div>
                        </div>
                        <div class="col-3">
                            <div class="row">
                                <div class="col-md-2">
                                    <a href="#">
                                        <i class="bi bi-basket3-fill" style="color: #05AFF2;"></i>
                                    </a>
                                </div>
                                <div class="col-md-8">
                                    <a href="#">
                                        <i class="bi bi-person-circle" style="color: #05AFF2;"></i>
                                        <asp:Label ID="Label1" runat="server" Text="Luis Angel Garcia Pineda"></asp:Label>
                                    </a>
                                </div>
                                <%--<div class="col-md-2">
                                    <i class="bi bi-door-open-fill" style="color: #05aff2;"></i>
                                    <asp:Button ID="Button1" runat="server" Text="Salir" />
                                </div>--%>
                            </div>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <div>
            <div class="card mb-3" style="max-width: 50%; margin: auto;">
                <div class="row g-0">
                    <div class="col-md-4">
                        <div id="carouselExampleIndicators" class="carousel slide" data-bs-ride="carousel">
                            <div class="carousel-indicators bg-dark">
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                            </div>
                            <div class="carousel-inner">
                                <div class="carousel-item active">
                                    <img src="https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,w_440/d4452769-d6ac-4121-8f98-96f7cb9e0f68/calzado-air-vapormax-2020-fk-d4X60M.jpg" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/02f6c556-2210-4dcf-a2a1-a0609feeddc1/calzado-air-vapormax-2020-fk-d4X60M.jpg" class="d-block w-100" alt="...">
                                </div>
                                <div class="carousel-item">
                                    <img src="https://static.nike.com/a/images/f_auto,b_rgb:f5f5f5,q_80,w_440/ea302c1e-5463-4d42-9a0f-29c6cdea1f2b/calzado-air-vapormax-2020-fk-d4X60M.jpg" class="d-block w-100" alt="...">
                                </div>
                            </div>
                            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="prev">
                                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Previous</span>
                            </button>
                            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide="next">
                                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                                <span class="visually-hidden">Next</span>
                            </button>
                        </div>
                    </div>
                    <div class="col-md-8">
                        <div class="card-body">
                            <h4 class="card-title">Nike Air VaporMax 2020 FK</h4>
                            <p class="card-text"><small class="text-muted">Materiales sustentables</small></p>
                            <p class="card-text">Selecciona la talla</p>
                            <select class="form-select" aria-label="Default select example">
                                <option selected>25</option>
                                <option value="1">25.5</option>
                                <option value="2">26</option>
                                <option value="3">26.5</option>
                            </select>
                            <asp:Button class="btn bg-dark.bg-gradient" ID="btnagregaralarrito" runat="server" Text="Agregar a la bolsa de compras" />

                            <p>Detalles del envio:</p>
                            <p>Por el momento no disponemos de envio a domicilio</p>

                        </div>
                    </div>
                </div>
            </div>


        </div>
    </form>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <!-- Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <!-- Bootstrap icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
</body>
</html>
