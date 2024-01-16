<%-- 
    Document   : editTicket
    Created on : 14 ene. 2024, 18:14:04
    Author     : Cristian
--%>

<%@page import="model.Ticket"%>
<%@page import="ModeloDao.TicketDao"%>
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
        <main class="container ">
            <section class="col-12 d-flex justify-content-end">
                <a class="btn" href="tickets.jsp?page=1">
                    <svg width="40px"  viewBox="-0.5 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M13.4092 16.4199L10.3492 13.55C10.1935 13.4059 10.0692 13.2311 9.98425 13.0366C9.89929 12.8422 9.85547 12.6321 9.85547 12.4199C9.85547 12.2077 9.89929 11.9979 9.98425 11.8035C10.0692 11.609 10.1935 11.4342 10.3492 11.29L13.4092 8.41992" stroke="#000000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M7 21.4202H17C19.2091 21.4202 21 19.6293 21 17.4202V7.42017C21 5.21103 19.2091 3.42017 17 3.42017H7C4.79086 3.42017 3 5.21103 3 7.42017V17.4202C3 19.6293 4.79086 21.4202 7 21.4202Z" stroke="#000000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
                </a>
            </section>
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
                    <%
                        TicketDao ticketDao = new TicketDao();
                        int id = Integer.parseInt(request.getParameter("id"));
                        Ticket ticket = ticketDao.list(id);
                    %>
                    <form class="row justify-content-center" action="../../controlador?edit=ticket" method="post" id="form">

                        <div class="mb-3 col-6 d-none">
                            <input
                                type="text"
                                class="form-control"
                                id="exampleFormControlInput1"
                                name="id"
                                value="<%= ticket.getId()%>"
                                />
                        </div>
                        <div class="mb-3 col-5">
                            <input
                                type="text"
                                name="nombre"
                                class="form-control"
                                id="exampleFormControlInput1"
                                placeholder="Nombre"
                                value="<%= ticket.getNombre()%>"
                                />
                        </div>
                        <div class="mb-3 col-5">
                            <input
                                type="text"
                                name="apellido"
                                class="form-control"
                                id="exampleFormControlInput1"
                                placeholder="Apellido"
                                value="<%= ticket.getApellido()%>"

                                />
                        </div>
                        <div class="mb-3 col-10">
                            <input
                                type="email"
                                name="email"
                                class="form-control"
                                id="exampleFormControlInput1"
                                placeholder="Correo"
                                value="<%= ticket.getEmail()%>"

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
                                value="<%= ticket.getCantidad()%>"

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
                                <button class="btn btn-success text-white " type="submit" >Editar</button>
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
            <div class="container p-1">
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
        <script src="editTicket.js"></script>
    </body>
</html>
