<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EcommerceSneakers.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Home</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="css/footer.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!--INICIO DE NAV-->
        <nav class="navbar navbar-expand-lg  navbar-dark bg-primary ">
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
                        <button class="btn btn-primary" type="submit">Search</button>
                    </form>
                </div>
            </div>
        </nav>
        <!--FIN DE NAVBAR-->

        <!--FILTROS-->
        <div class="card" style="width: 17.5rem; padding: 1rem; margin: .5rem;">
            <p>
                Ordenar por
                    <a data-bs-toggle="collapse" href="#order" role="button" aria-expanded="false" aria-controls="order">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                            <path d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
                        </svg>
                    </a>
            </p>
            <div class="collapse" id="order">
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault1">
                    <label class="form-check-label" for="flexRadioDefault1">
                        Nuevos Lanzamientos
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                    <label class="form-check-label" for="flexRadioDefault2">
                        Populares
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                    <label class="form-check-label" for="flexRadioDefault2">
                        Mayor precio - Menor precio
                    </label>
                </div>
                <div class="form-check">
                    <input class="form-check-input" type="radio" name="flexRadioDefault" id="flexRadioDefault2" checked>
                    <label class="form-check-label" for="flexRadioDefault2">
                        Menor precio - Mayor precio
                    </label>
                </div>
            </div>
        </div>

        <!-- FILTROS -->
        <div class="card" style="width: 17.5rem; padding: 1rem; margin: .5rem;">
            <p>Filtros</p>
            <div>
                <div class="form-check">
                    <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                    <label class="form-check-label" for="flexCheckDefault">
                        En rebaja
                    </label>
                </div>
            </div>
            <br />
            <div>
                <p>
                    Color 
                        <a data-bs-toggle="collapse" href="#colors" role="button" aria-expanded="false" aria-controls="colors">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                                <path d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
                            </svg>
                        </a>
                </p>
                <div class="collapse" id="colors">
                    <button type="button" class="btn btn-primary"></button>
                    <button type="button" class="btn btn-secondary"></button>
                    <button type="button" class="btn btn-success"></button>
                    <button type="button" class="btn btn-danger"></button>
                    <button type="button" class="btn btn-warning"></button>
                    <button type="button" class="btn btn-info"></button>
                    <button type="button" class="btn btn-light"></button>
                    <button type="button" class="btn btn-dark"></button>
                </div>
            </div>
            <br />
            <div>
                <p>
                    Marca 
                        <a data-bs-toggle="collapse" href="#marcas" role="button" aria-expanded="false" aria-controls="marcas">
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                                <path d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
                            </svg>
                        </a>
                </p>
                <div class="collapse" id="marcas">
                    <select class="form-select" aria-label="Seleccionar">
                        <option selected>Nike</option>
                        <option value="mc1">Nike</option>
                        <option value="mc2">Puma</option>
                        <option value="mc3">Jordan</option>
                        <option value="mc4">Adidas</option>
                        <option value="mc5">Reebok</option>
                    </select>
                </div>
            </div>
            <br />
            <div>
                <div>
                    <label for="customRange2" class="form-label">Rango de precio</label><br />
                    <input type="range" class="form-range" min="0" max="5" id="customRange2" />
                </div>
                <div>
                    <p>
                        Sexo 
                            <a data-bs-toggle="collapse" href="#sex" role="button" aria-expanded="false" aria-controls="sex">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                                    <path d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
                                </svg>
                            </a>
                    </p>
                    <div class="collapse" id="sex">
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckDefault">
                            <label class="form-check-label" for="flexCheckDefault">
                                Mujer
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                            <label class="form-check-label" for="flexCheckChecked">
                                Hombre
                            </label>
                        </div>
                        <div class="form-check">
                            <input class="form-check-input" type="checkbox" value="" id="flexCheckChecked" checked>
                            <label class="form-check-label" for="flexCheckChecked">
                                Unisex
                            </label>
                        </div>
                    </div>
                </div>
                <br />
                <div>
                    <p>
                        Talla
                            <a data-bs-toggle="collapse" href="#talla" role="button" aria-expanded="false" aria-controls="talla">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="currentColor" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                                    <path d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z" />
                                </svg>
                            </a>
                    </p>
                    <div class="collapse" id="talla">
                        <select class="form-select" aria-label="Tallas">
                            <option selected>Tallas</option>
                            <option value="23.5">23.5</option>
                            <option value="24">24</option>
                            <option value="25">25</option>
                            <option value="26">26</option>
                            <option value="27">27</option>
                        </select>
                    </div>
                </div>
            </div>
        </div>
        <!--FIN FILTROS-->

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

    <script src="Scripts/bootstrap.min.js"></script>
    <script src="Scripts/jquery-3.0.0.min.js"></script>

</body>
</html>
