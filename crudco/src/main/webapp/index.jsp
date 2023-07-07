<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.crudco.crudco.model.Producto" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>

<head>
    <meta charset="utf-8">
    <meta name="viewport" content="width=device-width, initial-scale=1">
    <link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet">
    <link href="https://getbootstrap.com/docs/5.2/assets/css/docs.css" rel="stylesheet">
    <script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js"></script>
    <title>Cocina Económica</title>
    <link href="assets/css/bootstrap.css" type="text/css" rel="stylesheet">
</head>
<body>
<header>
    <nav class="navbar navbar-dark bg-dark fixed-top">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp">
                Cocina Económica
            </a>

            <button class="navbar-toggler" type="button" data-bs-toggle="offcanvas" data-bs-target="#offcanvasDarkNavbar" aria-controls="offcanvasDarkNavbar">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="offcanvas offcanvas-end text-bg-dark" tabindex="-1" id="offcanvasDarkNavbar" aria-labelledby="offcanvasDarkNavbarLabel">
                <div class="offcanvas-header">
                    <h5 class="offcanvas-title" id="offcanvasDarkNavbarLabel">Cocina </h5>
                    <button type="button" class="btn-close btn-close-white" data-bs-dismiss="offcanvas" aria-label="Close"></button>
                </div>
                <div class="offcanvas-body">
                    <ul class="navbar-nav justify-content-end flex-grow-1 pe-3">
                        <li class="nav-item">
                            <a class="nav-link"href="index.jsp">Inicio</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link active" aria-current="page" href="vistaProductos.jsp">Consultar Inventario</a>
                        </li>
                        <li class="nav-item">
                            <a class="nav-link" href="http://www.utez.edu.mx/">Contacto</a>
                        </li>
                    </ul>

                </div>
            </div>
        </div>
    </nav>
</header>

<link rel="stylesheet" href="css/style.css">

<div class="container">
    <div class="row">
        <div class="col col-md-4">
            <div class="bg"></div>
            <div class="bg bg2"></div>
            <div class="bg bg3"></div>

<h1><%= "Bienvenido a la Cocina Económica" %>
</h1>
<br/>

<%
    Producto prod = new Producto();
    prod.setProducto("arroz");
    prod.setCantidad(10);
    prod.setUnidadm("kg");
    Producto prod2 = new Producto(1,"sopa",25,"bs");
    Producto prod3 = new Producto(2,"mayonesa", 5, "kg");

    List<Producto> listaProducto = new ArrayList<>();
    listaProducto.add(prod);
    listaProducto.add(prod2);
    listaProducto.add(prod3);

    request.getSession().setAttribute("productos",listaProducto);
%>

<% for (Producto p: listaProducto) { %>
<% } %>

<script type="text/javascript">
    function cambiar(tipoCambio){
        document.getElementById("tipo").value = tipoCambio;
    }
</script>
        </div>

        <script src="assets/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>