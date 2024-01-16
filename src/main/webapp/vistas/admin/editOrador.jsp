<%-- 
    Document   : editOrador
    Created on : 14 ene. 2024, 13:01:23
    Author     : Cristian
--%>

<%@page import="model.Orador"%>
<%@page import="ModeloDao.OradorDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN" crossorigin="anonymous">
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body >
        <div class="container justify-content-center">
            <main class="row h-100 justify-content-center align-items-center">
                <section class="col-12 d-flex justify-content-end">
                    <a class="btn" href="oradores.jsp?page=1">
                        <svg width="40px"  viewBox="-0.5 0 25 25" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M13.4092 16.4199L10.3492 13.55C10.1935 13.4059 10.0692 13.2311 9.98425 13.0366C9.89929 12.8422 9.85547 12.6321 9.85547 12.4199C9.85547 12.2077 9.89929 11.9979 9.98425 11.8035C10.0692 11.609 10.1935 11.4342 10.3492 11.29L13.4092 8.41992" stroke="#000000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> <path d="M7 21.4202H17C19.2091 21.4202 21 19.6293 21 17.4202V7.42017C21 5.21103 19.2091 3.42017 17 3.42017H7C4.79086 3.42017 3 5.21103 3 7.42017V17.4202C3 19.6293 4.79086 21.4202 7 21.4202Z" stroke="#000000" stroke-width="1.5" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
                    </a>
                </section>
                <section class="col-12  col-lg-5 bg-body-tertiary p-5 shadow-lg "> 
                    <h1 class="text-center fw-bold mb-3">EDITAR</h1>
                    <%
                        OradorDao oradorDao = new OradorDao();
                        int id = Integer.parseInt(request.getParameter("id"));
                        Orador orador = oradorDao.list(id);
                    %>
                    <form  action="../../controlador?edit=ok" method="post" class="row">
                        <div class="mb-3 col-6 d-none">
                            <input
                                type="text"
                                class="form-control"
                                id="exampleFormControlInput1"
                                name="id"
                                value="<%= orador.getId()%>"
                                />
                        </div>
                        <div class="mb-3 col-6">
                            <input
                                type="text"
                                class="form-control"
                                id="exampleFormControlInput1"
                                placeholder="Nombre"
                                name="nombre"
                                value="<%= orador.getNombre()%>"
                                />
                        </div>
                        <div class="mb-3 col-6">
                            <input
                                type="text"
                                name="apellido"
                                class="form-control"
                                id="exampleFormControlInput1"
                                placeholder="Apellido"
                                value="<%= orador.getApellido()%>"
                                />
                        </div>
                        <div class="mb-3 col-12">
                            <textarea
                                class="form-control py-3 fs-3"
                                rows="3"
                                name="tema"
                                ><%= orador.getTema()%></textarea>
                        </div>
                        <div class="d-grid gap-2">
                            <button class="btn btn-outline-primary "  type="submit" >Guardar</button>
                        </div>
                    </form>
                </section>

            </main>
        </div>
        <footer class="bg-primary p-5 ">
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
                </ul>
            </div>          
        </footer>
        <script src="login.js"></script>
        <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js" integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL" crossorigin="anonymous"></script>
    </body>
</html>

