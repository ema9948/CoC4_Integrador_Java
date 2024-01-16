<%@page import="java.util.Iterator"%>
<%@page import="model.Orador"%>
<%@page import="java.util.List"%>
<%@page import="ModeloDao.OradorDao"%>
<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
         pageEncoding="ISO-8859-1"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">

<html lang="es">
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
                                href="../index.jsp#oradores"
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
                                    <a class="dropdown-item" href="#"
                                       >Ver oradores</a
                                    >
                                </li>
                            </ul>
                        </li>

                        <a class="nav-link text-success" href="tickets.jsp"
                           >Comprar tickets</a
                        >
                        <a class="nav-link text-success" href="login.jsp"
                           >
                            <svg width="30px" viewBox="0 0 24 24" fill="none" xmlns="http://www.w3.org/2000/svg" stroke="#ffffff"><g id="SVGRepo_bgCarrier" stroke-width="0"></g><g id="SVGRepo_tracerCarrier" stroke-linecap="round" stroke-linejoin="round"></g><g id="SVGRepo_iconCarrier"> <circle cx="12" cy="9" r="3" stroke="#ffffff" stroke-width="1.5"></circle> <path d="M17.9691 20C17.81 17.1085 16.9247 15 11.9999 15C7.07521 15 6.18991 17.1085 6.03076 20" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round"></path> <path d="M7 3.33782C8.47087 2.48697 10.1786 2 12 2C17.5228 2 22 6.47715 22 12C22 17.5228 17.5228 22 12 22C6.47715 22 2 17.5228 2 12C2 10.1786 2.48697 8.47087 3.33782 7" stroke="#ffffff" stroke-width="1.5" stroke-linecap="round"></path> </g></svg>
                        </a
                        >
                    </div>
                </div>
            </div>
        </nav>
    </header>
    <main class="">
        <section class="container">
            <div class="row row-cols-1 gap-5 my-5">
                <div class="col text-center">
                    <h1 class="fs-2 fw-bold">Oradores Destacadosasd</h1>
                    <h3 class="">
                        Descubre y Conéctate con los Innovadores del Futuro de Internet.
                    </h3>
                    <h5 class="">
                        En "BS As en Argentina", damos la bienvenida a una comunidad
                        diversa de oradores que están liderando la revolución digital.
                        Estos visionarios comparten su experiencia y conocimientos para
                        inspirar y transformar. ¡Explora las mentes brillantes que
                        formarán parte de nuestro evento!
                    </h5>
                </div>
                <div class="col my-lg-5 d-flex flex-column justify-content-center">
                    <table class="table border-1 border-dark shadow-lg">
                        <thead class="table-dark">
                            <tr>
                                <th scope="col">Nombre</th>
                                <th scope="col">Apellido</th>
                                <th scope="col">Tema</th>
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

                                if (or.isEmpty() || pagination <= 0) {
                                    response.sendRedirect("oradores.jsp?page=1");
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
                                <td><%= orador.getNombre()%></td>
                                <td><%= orador.getApellido()%></td>
                                <td><%= orador.getTema()%></td>
                            </tr>
                            <%}
                                System.out.println(orador);
                            %>

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
</html>
