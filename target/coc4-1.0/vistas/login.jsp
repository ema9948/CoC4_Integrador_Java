<%-- 
    Document   : login
    Created on : 13 ene. 2024, 20:58:38
    Author     : Cristian
--%>

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
                <section class="col-12  col-lg-5 bg-body-tertiary p-5 shadow-lg "> 
                    <h1 class="text-center fw-bold">LOGIN</h1>
                    <form id="form"  action="../controlador?login=ok" method="post" class="row">
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" name="email" class="form-label">Email </label>
                            <input type="email" name="email" class="form-control" id="exampleFormControlInput1" placeholder="name@example.com">
                        </div>
                        <div class="mb-3">
                            <label for="exampleFormControlInput1" class="form-label">Contraseña </label>
                            <input type="password" name="password" class="form-control" id="exampleFormControlInput1" placeholder="Cotnraseña">
                        </div>
                        <div class="d-grid gap-2">
                            <button class="btn btn-info fw-bold text-white" type="submit">Ingresar</button>
                        </div>
                    </form>
                    <div class="alert alert-danger d-none" role="alert" id="alert" >
                        Credenciales Incorrectas.
                    </div>
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
