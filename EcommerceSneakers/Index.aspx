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
                    nombre: 'Producto1',
                    precio: 1,
                    imagen: 'https://source.unsplash.com/random/500x500/?potato&sig=1'
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
                    let miNodoBoton = document.createElement('button');
                    miNodoBoton.classList.add('btn', 'btn-primary');
                    miNodoBoton.textContent = 'Agregar a canasta';
                    miNodoBoton.setAttribute('marcador', info['id']);
                    miNodoBoton.addEventListener('click', anyadirCarrito);
                    // Insertamos
                    miNodoCardBody.appendChild(miNodoImagen);
                    miNodoCardBody.appendChild(miNodoTitle);
                    miNodoCardBody.appendChild(miNodoPrecio);
                    miNodoCardBody.appendChild(miNodoBoton);
                    miNodo.appendChild(miNodoCardBody);
                    $items.appendChild(miNodo);
                }
            }

            function anyadirCarrito() {
                // Anyadimos el Nodo a nuestro carrito
                carrito.push(this.getAttribute('marcador'))
                // Calculo el total
                calcularTotal();
                // Renderizamos el carrito 
                renderizarCarrito();
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
                        <button class="btn btn-dark" type="button" data-toggle="modal" data-target="#modal-compra"><i class="fas fa-shopping-cart"></i></button>
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
                                    <p class="text-right">Total: $ <span id="total"></span> pesos mx.</p>
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

        <!-- Elementos generados a partir del JSON -->
        <main id="items" class="col-sm-8 row"></main>
    </form>

    <link rel="stylesheet" href="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/css/bootstrap.min.css" integrity="sha384-B0vP5xmATw1+K9KRQjQERJvTumQW0nPEzvF6L/Z6nronJ3oUOFUFpCjEUQouq2+l" crossorigin="anonymous">
    <script src="https://code.jquery.com/jquery-3.5.1.slim.min.js" integrity="sha384-DfXdz2htPH0lsSSs5nCTpuj/zy4C+OGpamoFVy38MVBnE+IbbVYUew+OrCXaRkfj" crossorigin="anonymous"></script>
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@4.6.0/dist/js/bootstrap.bundle.min.js" integrity="sha384-Piv4xVNRyMGpqkS2by6br4gNJ7DXjqk09RmUpJ8jgGtD7zP9yug3goQfGII0yAns" crossorigin="anonymous"></script>

    <script src="popper/popper.min.js"></script>
    <script src="plugins/sweetAlert2/sweetalert2.all.min.js"></script>
    <script src="codigo.js"></script>
</body>

</html>
