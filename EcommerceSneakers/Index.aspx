<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EcommerceSneakers.Index" %>

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
        <!--INICIO DE BANNER-->
        <div id="carouselExampleCaptions" class="carousel slide  " data-bs-ride="carousel">
            <div class="carousel-indicators">
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="1" aria-label="Slide 2"></button>
                <button type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide-to="2" aria-label="Slide 3"></button>
            </div>
            <div class="carousel-inner">
                <div class="carousel-item active">
                    <img src="images\slide1.jpg" class="d-block w-100" height="600">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>First slide label</h5>
                        <p>Some representative placeholder content for the first slide.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images\slide2.jpg" class="d-block w-100" height="230" />
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Second slide label</h5>
                        <p>Some representative placeholder content for the second slide.</p>
                    </div>
                </div>
                <div class="carousel-item">
                    <img src="images\slide3.jpg" class="d-block w-100" alt="...">
                    <div class="carousel-caption d-none d-md-block">
                        <h5>Third slide label</h5>
                        <p>Some representative placeholder content for the third slide.</p>
                    </div>
                </div>
            </div>
            <button class="carousel-control-prev" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="prev">
                <span class="carousel-control-prev-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Previous</span>
            </button>
            <button class="carousel-control-next" type="button" data-bs-target="#carouselExampleCaptions" data-bs-slide="next">
                <span class="carousel-control-next-icon" aria-hidden="true"></span>
                <span class="visually-hidden">Next</span>
            </button>
        </div>
        <!--FIN DE BANNER-->

        <!--INICO DE FOOTER-->
        <footer class="section bg-footer">
            <div class="container">
                <div class="row">
                    <div class="col-lg-3">
                        <div class="">
                            <h6 class="footer-heading text-uppercase text-white">Information</h6>
                            <ul class="list-unstyled footer-link mt-4">
                                <li><a href="">Pages</a></li>
                                <li><a href="">Our Team</a></li>
                                <li><a href="">Feuchers</a></li>
                                <li><a href="">Pricing</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-3">
                        <div class="">
                            <h6 class="footer-heading text-uppercase text-white">Ressources</h6>
                            <ul class="list-unstyled footer-link mt-4">
                                <li><a href="">Monitoring Grader </a></li>
                                <li><a href="">Video Tutorial</a></li>
                                <li><a href="">Term &amp; Service</a></li>
                                <li><a href="">Zeeko API</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-2">
                        <div class="">
                            <h6 class="footer-heading text-uppercase text-white">Help</h6>
                            <ul class="list-unstyled footer-link mt-4">
                                <li><a href="">Sign Up </a></li>
                                <li><a href="">Login</a></li>
                                <li><a href="">Terms of Services</a></li>
                                <li><a href="">Privacy Policy</a></li>
                            </ul>
                        </div>
                    </div>

                    <div class="col-lg-4">
                        <div class="">
                            <h6 class="footer-heading text-uppercase text-white">Contact Us</h6>
                            <p class="contact-info mt-4">Contact us if need help withanything</p>
                            <p class="contact-info">+01 123-456-7890</p>
                            <div class="mt-5">
                                <ul class="list-inline">
                                    <li class="list-inline-item"><a href="#"><i class="fab facebook footer-social-icon fa-facebook-f"></i></i></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="fab twitter footer-social-icon fa-twitter"></i></i></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="fab google footer-social-icon fa-google"></i></i></a></li>
                                    <li class="list-inline-item"><a href="#"><i class="fab apple footer-social-icon fa-apple"></i></i></a></li>
                                </ul>
                            </div>
                        </div>
                    </div>

                </div>
            </div>

            <div class="text-center mt-5">
                <p class="footer-alt mb-0 f-14">2019 © Anup, All Rights Reserved</p>
            </div>
        </footer>
        <!--FIN DE FOOTER-->
    </form>
    <!-- Bootstrap CSS -->
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous" />
    <!-- Bundle -->
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>
    <!-- Bootstrap icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
</body>
</html>
