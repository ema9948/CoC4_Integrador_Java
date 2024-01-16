<%-- 
    Document   : tickets
    Created on : 7 ene. 2024, 18:03:01
    Author     : Cristian
--%>

<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link rel="stylesheet" href="../index.css" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
            />
    </head>
    <body class="">
        <header class=" ">
            <nav class="navbar navbar-expand-lg sticky-top">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img
                            src="../assets/codoacodo.png"
                            class="img-fluid"
                            style="width: 100px"
                            alt=""
                            />
                        <span class="text-white"> Conf Bs As </span>
                    </a>
                    <button
                        class="navbar-toggler"
                        type="button"
                        data-bs-toggle="collapse"
                        data-bs-target="#navbarNavAltMarkup"
                        aria-controls="navbarNavAltMarkup"
                        aria-expanded="false"
                        aria-label="Toggle navigation"
                        >
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div
                        class="collapse navbar-collapse d-lg-flex justify-content-end"
                        id="navbarNavAltMarkup"
                        >
                        <div class="navbar-nav me-5">
                            <a
                                class="nav-link text-white"
                                aria-current="page"
                                href="../index.jsp#home"
                                >La conferencia</a
                            >
                            <a class="nav-link text-white" href="../index.jsp#oradores"
                               >Los oradores</a
                            >
                            <a class="nav-link text-white" href="../index.jsp#lugar"
                               >El lugar y la fecha</a
                            >
                            <li class="nav-item dropdown">
                                <a
                                    class="nav-link text-white dropdown-toggle"
                                    href="#"
                                    role="button"
                                    data-bs-toggle="dropdown"
                                    aria-expanded="false"
                                    >
                                    Conviértete en orador
                                </a>
                                <ul class="dropdown-menu">
                                    <li>
                                        <a class="dropdown-item" href="../index.jsp#orador"
                                           >Anotarme</a
                                        >
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="oradores.jsp?page=1"
                                           >Ver oradores</a
                                        >
                                    </li>
                                </ul>
                            </li>

                            <a class="nav-link text-success" href="#"
                               >Comprar tickets</a
                            >
                            <a class="nav-link text-success" href="login.jsp"
                               >
                                <svg width="30px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#ffffff"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <circle cx="12" cy="9" r="3" stroke="#ffffff" stroke-width="1.5"></circle> <path d="M17.9691 20C17.81 17.1085 16.9247 15 11.9999 15C7.07521 15 6.18991 17.1085 6.03076 20" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round"></path> <path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round"></path> </g></svg>
                            </a
                            >,
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <main class=" ">
            <section class="container d-flex flex-column gap-5 py-5">
                <article class="row justify-content-center gap-3 gap-xxl-5">
                    <div
                        class="box border border-primary col-10 col-md-3 text-center d-flex flex-column gap-2 p-4 shadow-lg"
                        >
                        <h3>Estudiante</h3>
                        <h4 class="fw-normal">Tienen un descuento</h4>
                        <h5 class="">80%</h5>
                        <h5 class="fw-light">*presentar documentacion</h5>
                    </div>
                    <div
                        class="box border border-info col-10 col-md-3 text-center d-flex flex-column gap-2 p-4 shadow-lg"
                        >
                        <h3>Trainee</h3>
                        <h4 class="fw-normal">Tienen un descuento</h4>
                        <h5 class="">50%</h5>
                        <h5 class="fw-light">*presentar documentacion</h5>
                    </div>
                    <div
                        class="box border border-warning col-10 col-md-3 text-center d-flex flex-column gap-2 p-4 shadow-lg"
                        >
                        <h3>Junior</h3>
                        <h4 class="fw-normal">Tienen un descuento</h4>
                        <h5 class="">15%</h5>
                        <h5 class="fw-light">*presentar documentacion</h5>
                    </div>
                </article>
                <article class="">
                    <div class="w-100 text-center pb-3">
                        <h6 class="fw-normal">VENTA</h6>
                        <h1>VALOR DEL TICKET $200</h1>
                    </div>
                    <form class="row justify-content-center" action="../controlador?pago=ok" method="post" id="form">
                        <div class="mb-3 col-5">
                            <input
                                type="text"
                                name="nombre"
                                class="form-control"
                                id="exampleFormControlInput1"
                                placeholder="Nombre"
                                />
                        </div>
                        <div class="mb-3 col-5">
                            <input
                                type="text"
                                name="apellido"
                                class="form-control"
                                id="exampleFormControlInput1"
                                placeholder="Apellido"
                                />
                        </div>
                        <div class="mb-3 col-10">
                            <input
                                type="email"
                                name="email"
                                class="form-control"
                                id="exampleFormControlInput1"
                                placeholder="Correo"
                                />
                        </div>
                        <div class="mb-3 col-5">
                            <label for="exampleFormControlInput1" class="form-label"
                                   >Cantidad</label
                            >
                            <input
                                type="number"
                                min="1"
                                name="cantidad"
                                class="form-control"
                                id="exampleFormControlInput1"
                                placeholder="Cantidad"
                                />
                        </div>
                        <div class="mb-3 col-5">
                            <label for="exampleFormControlInput1" class="form-label"
                                   >Categoria</label
                            >
                            <select
                                class="form-select"
                                name="categoria"
                                aria-label="Default select example"
                                >
                                <option value="0">Estudiante</option>
                                <option value="1">Trainee</option>
                                <option value="2">Junior</option>
                            </select>
                        </div>
                        <div class="col-10 visually-hidden" id="amount">
                            <div class="alert alert-primary d-flex justify-content-between">

                                <p>Total a pagar: $ <span id="precie"></span></p>
                                <button class="btn btn-outline-danger text-white border-0" type="submit" >Pagar</button>
                            </div>
                        </div>
                        <div class="d-flex gap-2 col-10">
                            <button class="btn btn-primary w-100" type="button" id="clear">
                                Borrar
                            </button>
                            <button class="btn btn-primary w-100" type="button" id="resumen">
                                Resumen
                            </button>
                        </div>
                    </form>
                </article>
            </section>
        </main>
        <footer class="footer my-5">
            <div class="container py-5">
                <ul
                    class="text-white d-flex flex-wrap justify-content-around align-items-center list-unstyled"
                    >
                    <li>
                        <a href="#" class="text-decoration-none text-white"
                           >Preguntas <br />
                            frecuentes
                        </a>
                    </li>
                    <li>
                        <a href="#" class="text-decoration-none text-white"> Contácto </a>
                    </li>
                    <li>
                        <a href="#" class="text-decoration-none text-white"> Prensa </a>
                    </li>

                    <li>
                        <a href="#" class="text-decoration-none text-white">
                            Conferencias
                        </a>
                    </li>
                    <li>
                        <a href="#" class="text-decoration-none text-white">
                            Términos y <br />
                            condiciones
                        </a>
                    </li>
                    <li>
                        <a href="#" class="text-decoration-none text-white"> Privacidad </a>
                    </li>
                    <li>
                        <a href="#" class="text-decoration-none text-white">
                            Estudiantes
                        </a>
                    </li>
                </ul>
            </div>
        </footer>
        <script src="https://cdn.jsdelivr.net/npm/sweetalert2@11"></script>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
        ></script>
        <script src="../index.js"></script>
    </body>
</html>

