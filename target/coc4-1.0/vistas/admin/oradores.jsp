<%-- 
    Document   : oradores
    Created on : 13 ene. 2024, 20:56:30
    Author     : Cristian
--%>

<%@page import="model.Orador"%>
<%@page import="java.util.Iterator"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.OradorDao"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>JSP Page</title>
    </head>
    <body>
    <head>
        <meta charset="UTF-8" />
        <meta name="viewport" content="width=device-width, initial-scale=1.0" />
        <title>Oradores</title>
        <link rel="stylesheet" href="../index.css" />
        <link
            href="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/css/bootstrap.min.css"
            rel="stylesheet"
            integrity="sha384-T3c6CoIi6uLrA9TneNEoa7RxnatzjcDSCmG1MXxSR1GAsXEV/Dwwykc2MPK8M2HN"
            crossorigin="anonymous"
            />
    </head>
    <body>
        <header class=" ">
            <nav class="navbar navbar-expand-lg  bg-dark border-bottom border-body sticky-top"   data-bs-theme="dark">
                <div class="container-fluid">
                    <a class="navbar-brand" href="#">
                        <img
                            src="../../assets/codoacodo.png"
                            class="img-fluid"
                            style="width: 100px"
                            alt=""
                            />
                        <span class="text-white"> Conf Bs As </span>
                    </a>
                    <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                        <span class="navbar-toggler-icon"></span>
                    </button>
                    <div class="collapse navbar-collapse d-flex justify-content-between" id="navbarNav">
                        <ul class="navbar-nav">
                            <li class="nav-item">
                                <a class="nav-link active fw-bold" aria-current="page" href="#">Oradores</a>
                            </li>
                            <li class="nav-item">
                                <a class="nav-link" href="tickets.jsp?page=1">Tickets</a>
                            </li>
                        </ul>
                        <div>
                            <a class="btn btn-outline-danger" href="../../index.jsp">Salir</a>
                        </div>
                    </div>
                </div>
            </nav>
        </header>
        <main class="">
            <section class="container">
                <div class="row row-cols-1 gap-5 my-5">
                    <div class="col text-center">
                        <h1 class="fs-2 fw-bold">Listas de Oradores </h1>
                    </div>
                    <div class="col my-lg-5 d-flex flex-column justify-content-center">
                        <table class="table border-1 border-dark shadow-lg">
                            <thead class="table-dark">
                                <tr>
                                    <th scope="col">Nombre</th>
                                    <th scope="col">Apellido</th>
                                    <th scope="col">Tema</th>
                                    <th scope="col">Acciones</th>
                                </tr>
                            </thead>
                            <tbody>
                                <%
                                    String spageid = request.getParameter("page");
                                    Integer pagination = Integer.parseInt(spageid);
                                    Integer pageid = pagination;
                                    Integer total = 10;

                                    OradorDao dao = new OradorDao();
                                    List<Orador> or = dao.list(pageid, total);
                                    if (pagination <= 0) {
                                        response.sendRedirect("oradores.jsp?page=1");
                                        return;
                                    }

                                    if (pageid == 1) {
                                    } else {
                                        pageid = pageid - 1;
                                        pageid = pageid * total + 1;
                                    }


                                    Iterator<Orador> iter = or.iterator();
                                    Orador orador = null;
                                    while (iter.hasNext()) {
                                        orador = iter.next();
                                %>

                                <tr>
                                    <td class="d-none"><%= orador.getId()%></td>
                                    <td><%= orador.getNombre()%></td>
                                    <td><%= orador.getApellido()%></td>
                                    <td><%= orador.getTema()%></td>
                                    <td>
                                        <a class="btn" href="editOrador.jsp?id=<%= orador.getId()%>">
                                            <svg width="20px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path fill-rule="evenodd" clip-rule="evenodd" d="M21.1213 2.70705C19.9497 1.53548 18.0503 1.53547 16.8787 2.70705L15.1989 4.38685L7.29289 12.2928C7.16473 12.421 7.07382 12.5816 7.02986 12.7574L6.02986 16.7574C5.94466 17.0982 6.04451 17.4587 6.29289 17.707C6.54127 17.9554 6.90176 18.0553 7.24254 17.9701L11.2425 16.9701C11.4184 16.9261 11.5789 16.8352 11.7071 16.707L19.5556 8.85857L21.2929 7.12126C22.4645 5.94969 22.4645 4.05019 21.2929 2.87862L21.1213 2.70705ZM18.2929 4.12126C18.6834 3.73074 19.3166 3.73074 19.7071 4.12126L19.8787 4.29283C20.2692 4.68336 20.2692 5.31653 19.8787 5.70705L18.8622 6.72357L17.3068 5.10738L18.2929 4.12126ZM15.8923 6.52185L17.4477 8.13804L10.4888 15.097L8.37437 15.6256L8.90296 13.5112L15.8923 6.52185ZM4 7.99994C4 7.44766 4.44772 6.99994 5 6.99994H10C10.5523 6.99994 11 6.55223 11 5.99994C11 5.44766 10.5523 4.99994 10 4.99994H5C3.34315 4.99994 2 6.34309 2 7.99994V18.9999C2 20.6568 3.34315 21.9999 5 21.9999H16C17.6569 21.9999 19 20.6568 19 18.9999V13.9999C19 13.4477 18.5523 12.9999 18 12.9999C17.4477 12.9999 17 13.4477 17 13.9999V18.9999C17 19.5522 16.5523 19.9999 16 19.9999H5C4.44772 19.9999 4 19.5522 4 18.9999V7.99994Z" fill="#000000"></path> </g></svg>
                                        </a>
                                        <a class="btn" href="../../controlador?delete=<%= orador.getId()%>" >
                                            <svg width="20px"viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <path d="M6 7V18C6 19.1046 6.89543 20 8 20H16C17.1046 20 18 19.1046 18 18V7M6 7H5M6 7H8M18 7H19M18 7H16M10 11V16M14 11V16M8 7V5C8 3.89543 8.89543 3 10 3H14C15.1046 3 16 3.89543 16 5V7M8 7H16" stroke="#000000" stroke-width="2" stroke-linecap="round" stroke-linejoin="round"></path> </g></svg>
                                        </a>

                                    </td>
                                </tr>
                                <%}%>

                            </tbody>
                        </table>

                        <nav aria-label="Page navigation example" class="align-self-end">
                            <ul class="pagination">
                                <li class="page-item">
                                    <a class="page-link"  href="oradores.jsp?page=<%= pagination - 1%>"  aria-label="Previous">
                                        <span aria-hidden="true">&laquo;</span>
                                        <span class="sr-only">Previous</span>
                                    </a>
                                </li>
                                <li class="page-item"><a class="page-link disable" href="#"> <%= pagination%> </a></li>
                                <a class="page-link"  href="oradores.jsp?page=<%= pagination + 1%>" aria-label="Next">
                                    <span aria-hidden="true">&raquo;</span>
                                    <span class="sr-only">Next</span>
                                </a>
                                </li>
                            </ul>

                        </nav>
                    </div>
                </div>
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
        <script
            src="https://cdn.jsdelivr.net/npm/bootstrap@5.3.2/dist/js/bootstrap.bundle.min.js"
            integrity="sha384-C6RzsynM9kWDrMNeT87bh95OGNyZPhcTNXj1NW7RuBCsyN/o0jlpcV8Qyq46cDfL"
            crossorigin="anonymous"
        ></script>
    </body>
</body>
</html>
