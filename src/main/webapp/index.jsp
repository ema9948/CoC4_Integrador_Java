<%-- 
    Document   : index
    Created on : 7 ene. 2024, 17:52:41
    Author     : Cristian
--%>

<%@page import="model.Orador"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="es">
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Document</title>
        <link rel="stylesheet" href="index.css" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
            />
    </head>
    <body>
        <header class=" ">
            <nav class="navbar navbar-expand-lg sticky-top">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img
                            src="assets/codoacodo.png"
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
                        class="collapse navbar-collapse d-lg-flex justify-content-end align-baselin"
                        id="navbarNavAltMarkup"
                        >
                        <div class="navbar-nav me-5">
                            <a
                                class="nav-link text-white"
                                aria-current="page"
                                href="index.jsp#home"
                                >La conferencia</a
                            >
                            <a class="nav-link text-white" href="index.jsp#oradores"
                               >Los oradores</a
                            >
                            <a class="nav-link text-white" href="index.jsp#lugar"
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
                                        <a class="dropdown-item" href="index.jsp#orador"
                                           >Anotarme</a
                                        >
                                    </li>
                                    <li>
                                        <a class="dropdown-item" href="vistas/oradores.jsp?page=1"
                                           >Ver oradores</a
                                        >
                                    </li>
                                </ul>
                            </li>

                            <a class="nav-link text-success" href="vistas/tickets.jsp"
                               >Comprar tickets</a
                            >
                            <a class="nav-link text-success" href="vistas/login.jsp"
                               >
                                <svg width="30px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#ffffff"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <circle cx="12" cy="9" r="3" stroke="#ffffff" stroke-width="1.5"></circle> <path d="M17.9691 20C17.81 17.1085 16.9247 15 11.9999 15C7.07521 15 6.18991 17.1085 6.03076 20" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round"></path> <path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round"></path> </g></svg>
                            </a
                            >
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <main class="d-flex flex-column gap-3">
            <section class="" id="home">
                <article class="background vh-100">
                    <div class="container h-100">
                        <div
                            class="row h-100 row-cols-1 row-cols-md-2 justify-content-end align-items-center"
                            >
                            <div class="col text-white text-end">
                                <h1 class="">Confg Bs As</h1>
                                <p class="fs-5">
                                    BS As llega por primera vez a Argentina. Un evento para
                                    compartir con nuestra comunidad el conocimiento y experiencia
                                    de los expertos que están creando el futuro de internet. Ven a
                                    conocer a miembros del eventos, a otros estudiantes de Codo a
                                    Codo y los oradores de primer nivel nivel que tenemos para ti.
                                    !Te esperamos¡
                                </p>
                                <div class="d-flex justify-content-end gap-2">
                                    <a href="vistas/tickets.jsp" class="btn btn-success"
                                       >Comprar tickets</a
                                    >
                                </div>
                            </div>
                        </div>
                    </div>
                </article>
            </section>
            <section>
                <article class="container" id="oradores">
                    <div class="row row-cols-1 gap-2">
                        <div class="col text-center">
                            <h2 class="fs-6 fw-light">CONOCE A LOS</h2>
                            <h2 class="fs-1">ORADORES</h2>
                        </div>
                        <div class="col">
                            <div class="card-group gap-5">
                                <div class="card">
                                    <img
                                        src="./assets/steve.jpg"
                                        class="card-img-top"
                                        alt="..."
                                        />
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <span class="bg-warning px-2 fs-6 rounded-2"
                                                  >JavaScript</span
                                            >
                                            <span class="bg-info text-white px-2 fs-6 rounded-2"
                                                  >React</span
                                            >
                                            <p>Steve Jobs</p>
                                        </h5>
                                        <p class="card-text">
                                            Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                                            Dolorem, tempora obcaecati at, velit, vero debitis
                                            voluptates quam labore delectus incidunt quae ipsam hic.
                                            Harum maiores nam, suscipit eos facilis nobis?
                                        </p>
                                    </div>
                                </div>
                                <div class="card">
                                    <img src="./assets/bill.jpg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <span class="bg-warning px-2 fs-6 rounded-2"
                                                  >JavaScript</span
                                            >
                                            <span class="bg-info text-white px-2 fs-6 rounded-2"
                                                  >React</span
                                            >
                                            <p>Bill Gates</p>
                                        </h5>
                                        <p class="card-text">
                                            Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                                            Dolorem, tempora obcaecati at, velit, vero debitis
                                            voluptates quam labore delectus incidunt quae ipsam hic.
                                            Harum maiores nam, suscipit eos facilis nobis?
                                        </p>
                                    </div>
                                </div>
                                <div class="card">
                                    <img src="./assets/ada.jpeg" class="card-img-top" alt="..." />
                                    <div class="card-body">
                                        <h5 class="card-title">
                                            <span class="bg-secondary text-white px-2 fs-6 rounded-2"
                                                  >Negocios</span
                                            >
                                            <span class="bg-danger text-white px-2 fs-6 rounded-2"
                                                  >Startups</span
                                            >
                                            <p>Ada Lovelace</p>
                                        </h5>
                                        <p class="card-text">
                                            Lorem, ipsum dolor sit amet consectetur adipisicing elit.
                                            Dolorem, tempora obcaecati at, velit, vero debitis
                                            voluptates quam labore delectus incidunt quae ipsam hic.
                                            Harum maiores nam, suscipit eos facilis nobis?
                                        </p>
                                    </div>
                                </div>
                            </div>
                        </div>
                        <div class="col text-center">
                            <a href="vistas/oradores.jsp?page=1" type="button" class="btn fs-5">Conocer Oradores</a>
                        </div>
                    </div>
                </article>
            </section>
            <section class="" id="lugar">
                <article class="w-100 bg-dark">
                    <div class="w-100 row row-cols-1 row-cols-md-2">
                        <div class="col">
                            <img src="assets/honolulu.jpg" alt="" class="img-fluid" />
                        </div>
                        <div class="col text-white py-3">
                            <h2>Bs As - Octubre</h2>
                            <p>
                                Buenos Aires es la provincia y localidad más grande del estado
                                de Argentina, en los Estados Unidos.Honolulu es la mas sureña de
                                entre las principales cuidades estadounidenses. Aunque el nombre
                                de Honolulu se refiere al área urbana en la costa sureste de la
                                isla de Oahu, la cuidade y el condado de Honolulu han formado
                                una cuidad-condado consolidada que cubre toda la cuidad
                                (aproximadamente 600km<sup>2</sup> de superficie).
                            </p>
                            <button class="btn btn-outline-light">Conocé más</button>
                        </div>
                    </div>
                </article>
            </section>
            <section id="orador">
                <article class="container">
                    <div
                        class="row row-cols-1 row-cols-xxl-2 gap-3 justify-content-xxl-center"
                        >
                        <div class="col text-center">
                            <h3 class="fs-6 fw-light fw-light">CONVÍERTETE EN UN</h3>
                            <h2 class="fs-1">ORADOR</h2>
                            <p>
                                Anótate como orador para dar una charla ignite. Cuéntanos de qué
                                quieres hablar!
                            </p>
                        </div>
                        <div class="col">
                            <form id="orador" action="controlador?save=orador" method="post" class="row">
                                <div class="mb-3 col-6">
                                    <input
                                        type="text"
                                        class="form-control"
                                        id="exampleFormControlInput1"
                                        placeholder="Nombre"
                                        name="nombre"
                                        />
                                </div>
                                <div class="mb-3 col-6">
                                    <input
                                        type="text"
                                        name="apellido"
                                        class="form-control"
                                        id="exampleFormControlInput1"
                                        placeholder="Apellido"
                                        />
                                </div>
                                <div class="mb-3 col-12">
                                    <textarea
                                        class="form-control py-3 fs-3"
                                        placeholder="Sobre qué quieres hablar?"
                                        id="exampleFormControlTextarea1"
                                        rows="3"
                                        name="tema"
                                        ></textarea>
                                </div>
                                <div class="d-grid gap-2">
                                    <button class="btn text-white"  type="submit" >Enviar</button>
                                </div>
                            </form>
                        </div>
                    </div>
                </article>
            </section>
        </main>
        <footer class="footer">
            <div class="container">
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
                    <%

                    %>
                </ul>
            </div>
        </footer>
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
        ></script>
    </body>
</html>

