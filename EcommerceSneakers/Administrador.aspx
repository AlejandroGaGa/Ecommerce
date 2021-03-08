<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Administrador.aspx.cs" Inherits="EcommerceSneakers.Administrador" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>Admin</title>
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link href="css/footer.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
</head>
<body>
    <form id="form1" runat="server">
        <!-- CONTENIDO -->
        <!-- LISTA DE PRODUCTOS -->
        <div class="album py-5 bg-light">

            <!--INICIO DE FILTROS-->
            <div class="card" style="width: 17.5rem; padding: 1rem; margin: .5rem;">
                <p>
                    Ordenar por
                    <a data-bs-toggle="collapse" href="#order" role="button" aria-expanded="false" aria-controls="order">
                        <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#212529" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
                            <path d="M7.247 11.14L2.451 5.658C1.885 5.013 2.345 4 3.204 4h9.592a1 1 0 0 1 .753 1.659l-4.796 5.48a1 1 0 0 1-1.506 0z"></path>
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
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#212529" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
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
                            <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#212529" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
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
                        <input fill="#212529" type="range" class="form-range" min="0" max="5" id="customRange2" />
                    </div>
                    <div>
                        <p>
                            Sexo 
                            <a data-bs-toggle="collapse" href="#sex" role="button" aria-expanded="false" aria-controls="sex">
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#212529" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
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
                                <svg xmlns="http://www.w3.org/2000/svg" width="16" height="16" fill="#212529" class="bi bi-caret-down-fill" viewBox="0 0 16 16">
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

            <div class="container">
                <div class="row row-cols-1 row-cols-sm-2 row-cols-md-3 g-3">
                    <div class="card" style="width: 15rem;">
                        <img class="img-fluid img-thumbnail" src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/e3f28dbc-7abe-4176-9cb7-01c1e2440a78/calzado-jordan-delta-GgsBzK.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Jordan Delta</h5>
                            <h6 class="card-subtitle">$1739</h6>
                            <p class="card-text">Created 14/03/21</p>
                            <button type="button" class="btn btn-dark">Consultar</button>
                            <button type="button" class="btn btn-danger">Borrar</button>
                        </div>
                    </div>
                    <div class="card" style="width: 15rem;">
                        <img class="img-fluid img-thumbnail" src="https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/3b23ee15-a3e1-41a7-b7fd-ff1e4f870519/calzado-air-max-2090-XqNbcT.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Jordan Delta</h5>
                            <h6 class="card-subtitle">$1739</h6>
                            <p class="card-text">Created 14/03/21</p>
                            <button type="button" class="btn btn-dark">Consultar</button>
                            <button type="button" class="btn btn-danger">Borrar</button>
                        </div>
                    </div>
                    <div class="card" style="width: 15rem;">
                        <img class="img-fluid img-thumbnail" src="https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/d3bd6c3a-4be7-4555-86cc-fc27fe703fdb/calzado-de-básquetbol-cosmic-unity-nkvMJj.jpg" class="card-img-top" alt="...">
                        <div class="card-body">
                            <h5 class="card-title">Jordan Delta</h5>
                            <h6 class="card-subtitle">$1739</h6>
                            <p class="card-text">Created 14/03/21</p>
                            <button type="button" class="btn btn-dark">Consultar</button>
                            <button type="button" class="btn btn-danger">Borrar</button>
                        </div>
                    </div>
                </div>
            </div>
        </div>
    </form>
</body>
</html>
