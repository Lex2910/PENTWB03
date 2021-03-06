<%@ page language="java" contentType="text/html; charset=UTF-8"
         pageEncoding="UTF-8"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
    <meta name="viewport"
          content="width=device-width, user-scalable=no, initial-scale=1.0, maximum-scale=1.0, minimum-scale=1.0">
    <title>Capacitación en Tecnologías MEAN</title>
    <link rel="stylesheet" type="text/css"
          href="<%=request.getContextPath()%>/css/styles.css">
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/jquery-1.7.2.js"></script>
    <script type="text/javascript"
            src="<%=request.getContextPath()%>/js/main.js"></script>
</head>
<body>

<header>
    <div class="contenedor-menu-logotipo">
        <div id="title-web-page" class="logo">
            <img src="<%=request.getContextPath()%>/images/meanStack.png"
                 class="logotipo-img">
            <h1>Capacitación en Tecnologías</h1>
        </div>
        <div id="menu-container">
            <nav> <a href="#">Inicio</a> <a href="#">Cursos</a> <a href="#">Administracion
                de cursos</a> <a href="#">Acerca de</a> </nav>
        </div>
    </div>

</header>

<div id="work-area-container">

    <h3>Registro de curso</h3>
    <label>Nombre de Curso</label> <input type="text" id="nameCourse">
    <input type="button" id="registrar" onclick="capturarCurso()"
           value="Registrar" class="boton boton_primario"> <label
        id="mensajeError"></label>

    <div id="cursos-container"></div>
    <div id="texto-oculto">
        <article>
            <p id="decripcion-texto">Lorem ipsum dolor sit amet, consectetur adipiscing elit, sed
                do eiusmod tempor incididunt ut labore et dolore magna aliqua. Ut
                enim ad minim veniam, quis nostrud exercitation ullamco laboris nisi
                ut aliquip ex ea commodo consequat. Duis aute irure dolor in
                reprehenderit in voluptate velit esse cillum dolore eu fugiat nulla
                pariatur. Excepteur sint occaecat cupidatat non proident, sunt in
                culpa qui officia deserunt mollit anim id est laborum.</p>
        </article>
        <input type="button" id="ocultar" onclick="ocultarTexto()"
               value="ocultar texto" class="boton boton_primario"><br><br>
        <input type="button" id="mostrar" onclick="mostrarTexto()"
               value="mostrar texto" class="boton boton_primario"> <label
            id="mensajeError">
    </div>
</div>

<footer> <label>Ejemplo basado en el curso <a
        href="https://mva.microsoft.com/en-US/training-courses/create-html5-apps-with-jquery-jump-start-8429?l=oqWOPtKz_4104984382">Create
    HTML5 Apps with jQuery Jump Start</a></label>
    <h4>
        México 2017
        </h6>
</footer>

</body>
</html>