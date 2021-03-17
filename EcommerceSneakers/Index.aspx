<%@ Page Language="C#" AutoEventWireup="true" CodeBehind="Index.aspx.cs" Inherits="EcommerceSneakers.Index" %>

<!DOCTYPE html>

<html xmlns="http://www.w3.org/1999/xhtml">
<head runat="server">
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />
    <title>SNEAKER</title>
    <link href="css/footer.css" rel="stylesheet" />
    <link href="css/style.css" rel="stylesheet" />
    <link href="fontawesome/css/all.css" rel="stylesheet" />
    <!--inicio de carrito-->
    <meta name="viewport" content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <link rel="stylesheet" href="https://stackpath.bootstrapcdn.com/bootstrap/4.1.0/css/bootstrap.min.css" integrity="sha384-9gVQ4dYFwwWSjIDZnLEWnxCjeSWFphJiwGPXr1jddIhOegiu1FwO5qRGvFXOdJZ4" crossorigin="anonymous">
    <script>
        window.onload = function () {
            // Variables
            const baseDeDatos = [
                {
                    id: 1,
                    nombre: 'Sneaker1',
                    precio: 199.99,
                    imagen: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5/2ecf8356-5995-4d40-9822-1f56231b99af/calzado-air-force-1-07-lv8-MHkmkr.jpg'
                },
                {
                    id: 2,
                    nombre: 'Sneaker2',
                    precio: 199.99,
                    imagen: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/5a1a9815-dddd-4101-82fe-9f507ef79b63/air-force-1-react-lv8-herrenschuh-83NTXw.jpg'
                },
                {
                    id: 3,
                    nombre: 'Sneaker3',
                    precio: 199.99,
                    imagen: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/26ac2827-0328-4079-8983-3e3867365671/react-vision-herrenschuh-4cb8Sx.jpg'
                },
                {
                    id: 4,
                    nombre: 'Sneaker4',
                    precio: 199.99,
                    imagen: 'https://static.nike.com/a/images/t_PDP_1728_v1/f_auto,b_rgb:f5f5f5/f14ee43e-b39d-41f4-b68d-770c6e22a66b/kyrie-7-play-future-basketballschuh-b8qZ3G.jpg'
                },
                {
                    id: 5,
                    nombre: 'Sneaker5',
                    precio: 199.99,
                    imagen: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/2ae5b18f-461b-496d-b890-98670da39a72/go-flyease-schuh-1D13ZT.jpg'
                },
                {
                    id: 6,
                    nombre: 'Sneaker6',
                    precio: 199.99,
                    imagen: 'https://static.nike.com/a/images/t_PDP_864_v1/f_auto,b_rgb:f5f5f5,q_80/8d01298c-b3e5-460a-8f45-e518fd3bdd18/air-jordan-xxxv-basketballschuh-vKMDjw.jpg'
                }

            ];

            const $items = document.querySelector('#items');
            let carrito = [];
            let total = 0;
            const $carrito = document.querySelector('#carrito');
            const $total = document.querySelector('#total');
            const $botonVaciar = document.querySelector('#boton-vaciar');


            // Funciones
            function renderItems() {
                for (let info of baseDeDatos) {
                    // Estructura
                    let miNodo = document.createElement('div');
                    miNodo.classList.add('card', 'col-sm-4');
                    // Body
                    let miNodoCardBody = document.createElement('div');
                    miNodoCardBody.classList.add('card-body');
                    // Titulo
                    let miNodoTitle = document.createElement('h5');
                    miNodoTitle.classList.add('card-title');
                    miNodoTitle.textContent = info['nombre'];

                    // Imagen
                    let miNodoImagen = document.createElement('img');
                    miNodoImagen.classList.add('img-fluid');
                    miNodoImagen.setAttribute('src', info['imagen']);
                    // Precio
                    let miNodoPrecio = document.createElement('p');
                    miNodoPrecio.classList.add('card-text');
                    miNodoPrecio.textContent = '$' + info['precio'];
                    // Boton 
                    let miNodoBoton = document.createElement('a');
                    miNodoBoton.classList.add('btn', 'btn-primary');


                    miNodoBoton.textContent = 'Agregar a canasta';
                    miNodoBoton.setAttribute('marcador', info['id']);
                    miNodoBoton.addEventListener('click', anyadirCarrito);
                    // Boton 2
                    let miNodoBoton2 = document.createElement('a');
                    miNodoBoton2.classList.add('btn', 'btn-warning');

                    miNodoBoton2.textContent = 'ver';
                    miNodoBoton2.setAttribute('data-target', '');
                    miNodoBoton2.addEventListener('click', mostrarmodal);
                    // Insertamos
                    miNodoCardBody.appendChild(miNodoImagen);
                    miNodoCardBody.appendChild(miNodoTitle);
                    miNodoCardBody.appendChild(miNodoPrecio);
                    miNodoCardBody.appendChild(miNodoBoton);
                    miNodoCardBody.appendChild(miNodoBoton2);
                    miNodo.appendChild(miNodoCardBody);
                    $items.appendChild(miNodo);
                }
            }

            function mostrarmodal() {
                $('#modal-detail').modal('show');
            }

            function anyadirCarrito() {
                // Anyadimos el Nodo a nuestro carrito
                carrito.push(this.getAttribute('marcador'))
                // Calculo el total
                calcularTotal();
                // Renderizamos el carrito 
                renderizarCarrito();

                $('#modal-compra').modal('show');
            }

            function renderizarCarrito() {
                // Vaciamos todo el html
                $carrito.textContent = '';
                // Quitamos los duplicados
                let carritoSinDuplicados = [...new Set(carrito)];
                // Generamos los Nodos a partir de carrito
                carritoSinDuplicados.forEach(function (item, indice) {
                    // Obtenemos el item que necesitamos de la variable base de datos
                    let miItem = baseDeDatos.filter(function (itemBaseDatos) {
                        return itemBaseDatos['id'] == item;
                    });
                    // Cuenta el número de veces que se repite el producto
                    let numeroUnidadesItem = carrito.reduce(function (total, itemId) {
                        return itemId === item ? total += 1 : total;
                    }, 0);
                    // Creamos el nodo del item del carrito
                    let miNodo = document.createElement('li');
                    miNodo.classList.add('list-group-item');
                    miNodo.textContent = `Cantidad: ${numeroUnidadesItem} | Descripcion: ${miItem[0]['nombre']} | Precio Unitario: $${miItem[0]['precio']}`;
                    // Boton de borrar
                    let miBoton = document.createElement('button');
                    miBoton.classList.add('btn', 'btn-danger', 'mx-5');
                    miBoton.textContent = 'X';
                    miBoton.style.marginLeft = '1rem';
                    miBoton.setAttribute('item', item);
                    miBoton.addEventListener('click', borrarItemCarrito);
                    // Mezclamos nodos
                    miNodo.appendChild(miBoton);
                    $carrito.appendChild(miNodo);
                });
            }

            function borrarItemCarrito() {
                // Obtenemos el producto ID que hay en el boton pulsado
                let id = this.getAttribute('item');
                // Borramos todos los productos
                carrito = carrito.filter(function (carritoId) {
                    return carritoId !== id;
                });
                // volvemos a renderizar
                renderizarCarrito();
                // Calculamos de nuevo el precio
                calcularTotal();
            }

            function calcularTotal() {
                // Limpiamos precio anterior
                total = 0;
                // Recorremos el array del carrito
                for (let item of carrito) {
                    // De cada elemento obtenemos su precio
                    let miItem = baseDeDatos.filter(function (itemBaseDatos) {
                        return itemBaseDatos['id'] == item;
                    });
                    total = total + miItem[0]['precio'];
                }
                // Formateamos el total para que solo tenga dos decimales
                let totalDosDecimales = total.toFixed(2);
                // Renderizamos el precio en el HTML
                $total.textContent = totalDosDecimales;
            }

            function vaciarCarrito() {
                // Limpiamos los productos guardados
                carrito = [];
                // Renderizamos los cambios
                renderizarCarrito();
                calcularTotal();
            }

            // Eventos
            $botonVaciar.addEventListener('click', vaciarCarrito);

            // Inicio
            renderItems();
        }

    </script>
</head>
<body>
    <form id="form1" runat="server">

        <!--INICIOO DE NAVBAR-->
        <!--Header-->
        <header class="fixed-top">
            <nav class="navbar navbar-expand-lg" style="background-color: #191919">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img src="images/plug.png" height="60" width="60" /></a>
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
                                        <i class="bi bi-basket3-fill" type="button" data-toggle="modal" data-target="#modal-compra" style="color: #05AFF2;"></i>
                                    </a>
                                </div>
                                <div class="col-md-8">
                                    <a href="#">
                                        <i class="bi bi-person-circle" type="button" data-toggle="modal" data-target="#modal-login" style="color: #05AFF2;"></i>
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
        <!--fin header-->
        <!--FIN DE NAVBAR-->

        <!---INICIO DE FILTROS LATERALES-->
        <div class="container row">

            <div class="col-sm-3" style="position: fixed;">
                <div>
                    <!--INICIO DE FILTROS-->
                    <div class="card" style="width: 17.5rem; padding: 1rem; margin: .5rem; margin-top: 30%">
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
                </div>
            </div>
            <!-- FIN DE FILTROS LATERALES-->
            <!--inicio de carrusel-->
            <div id="carouselExampleCaptions" class="carousel slide col-sm-10 row" style="left: 30%; margin-top: 90px; position: relative;" data-bs-ride="carousel">
                <div class="carousel-inner">
                    <div class="carousel-item active">
                        <img src="images/slide1.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Nike Air Force 1 '07</h5>
                            <p>El fulgor vive en el Nike Air Force 1 ’07, el modelo original de básquetbol que le da un toque novedoso a las características más recordadas</p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/slide2.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Nike Air Force 1/1</h5>
                            <p>Sueña en grande con la leyenda que conoces y te encanta. El Nike Air Force 1/1 es tuyo para personalizarlo como desees. </p>
                        </div>
                    </div>
                    <div class="carousel-item">
                        <img src="images/slide3.jpg" class="d-block w-100" alt="...">
                        <div class="carousel-caption d-none d-md-block">
                            <h5>Nike Air Force 1/1</h5>
                            <p>Sueña en grande con la leyenda que conoces y te encanta. El Nike Air Force 1/1 es tuyo para personalizarlo como desees. </p>
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
            <!--fin de carrusel-->

            <!--INICIO DE MODA
        <div class="container">
            
        </div>
        Modal login -->
            <div class="modal fade" id="modal-login" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content bg-dark">
                        <div class="modal-header">
                            <h3>Inicia</h3>
                            <h4 class="modal-title" id="myModal-label">Sesión</h4>
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
                            <h3>¡</h3>
                            <h4 class="modal-title" id="myModal-label">Registrate!</h4>
                            <h3>!</h3>
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
            <!--Modal Compras-->
            <div class="modal fade" id="modal-compra" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3>¡</h3>
                            <h4 class="modal-title" id="myModal-label">Canasta</h4>
                            <h3>!</h3>
                            <button type="button" class="close btn-ligth text-white" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>

                        <div class="modal-body">
                            <center>
                         <img src="images/plug.png" heigt="200" width="200"/>
                            </center>
                            <!--inicio de tabla canasta-->
                            <div class="container">
                                <div class="row">

                                    <!-- Carrito -->

                                    <aside>
                                        <h2>Carrito</h2>
                                        <!-- Elementos del carrito -->
                                        <ul id="carrito" class="list-group"></ul>
                                        <hr>
                                        <!-- Precio total -->
                                        <p class="text-right">Total: $ <span id="total"></span>pesos mx.</p>
                                        <button id="boton-vaciar" class="btn btn-secondary btn-sm">Vaciar</button>
                                        <button id="btn3" type="button" class="btn btn-secondary  btn-sm" data-dismiss="modal">Pagar</button>
                                    </aside>

                                </div>
                            </div>
                            <!--fin de canasta tabla-->
                        </div>


                    </div>
                </div>
            </div>
            <!--FIN DE MODAL-->
            <!--Modal Compras-->
            <div class="modal fade" id="modal-detail" tabindex="-1" role="dialog">
                <div class="modal-dialog modal-lg">
                    <div class="modal-content">
                        <div class="modal-header">
                            <h3></h3>
                            <h4 class="modal-title" id="myModal-label">Details</h4>
                            <h3>Sneakers</h3>
                            <button type="button" class="close btn-ligth text-white" data-dismiss="modal" aria-hidden="true">&times;</button>
                        </div>

                        <div class="modal-body">
                            <center>
                         <img src="images/plug.png" heigt="200" width="200"/>
                            </center>
                            <!--inicio de tabla canasta-->
                            <div>
                                <div class="card mb-3 " style="max-width: 100%; margin: auto;">
                                    <div class="row g-0 ">
                                        <div class="col-md-4 ">
                                            <div id="carouselExampleIndicators" class="carousel slide carousel-dark" data-bs-ride="carousel">
                                                <div class="carousel-indicators ">
                                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="0" class="active" aria-current="true" aria-label="Slide 1"></button>
                                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="1" aria-label="Slide 2"></button>
                                                    <button type="button" data-bs-target="#carouselExampleIndicators" data-bs-slide-to="2" aria-label="Slide 3"></button>
                                                </div>
                                                <div class="carousel-inner ">
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
                                                <br />
                                                <asp:Button class="btn bg-dark.bg-gradient" ID="btnagregaralarrito" runat="server" Text="Agregar a la bolsa de compras" />

                                                <p>Detalles del envio:</p>
                                                <p>Por el momento no disponemos de envio a domicilio</p>
                                            </div>
                                        </div>
                                    </div>
                                </div>


                            </div>
                            <!--fin de canasta tabla-->
                        </div>


                    </div>
                </div>
            </div>
            <!--FIN DE MODAL-->
            <!-- Elementos generados a partir del JSON -->
            <main id="items" class="col-sm-10 row" style="left: 30%; margin-top: 90px;"></main>

            <footer class="bg-light text-center text-lg-start col-sm-10 row" style="left: 30%; margin-top: 90px;" >
                <!-- Copyright -->
                <div class="text-center p-3" style="background-color: rgba(0, 0, 0, 0.2);">
                    © 2020 Copyright:
    <a class="text-dark" href="https://mdbootstrap.com/">MDBootstrap.com</a>
                </div>
                <!-- Copyright -->
            </footer>
    </form>

    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-BmbxuPwQa2lc/FVzBcNJ7UAyJxM6wuqIj61tLrc4wSX0szH/Ev+nYRRuWlolflfl" crossorigin="anonymous">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.0.0-beta2/dist/js/bootstrap.bundle.min.js" integrity="sha384-b5kHyXgcpbZJO/tY9Ul7kGkf1S0CWuKcCD38l8YkeH8z8QjE0GmW1gYU5S9FOnJ0" crossorigin="anonymous"></script>

    <link href="Content/bootstrap.min.css" rel="stylesheet" />
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>
    <!-- Bootstrap icons -->
    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap-icons@1.4.0/font/bootstrap-icons.css">
    <script src="popper/popper.min.js"></script>
    <script src="plugins/sweetAlert2/sweetalert2.all.min.js"></script>
    <script src="codigo.js"></script>
</body>

</html>
