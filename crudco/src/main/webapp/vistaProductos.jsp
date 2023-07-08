<%@ page import="mx.edu.utez.crudco.crudco.model.DaoProducto" %>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
<head>
    <title>Cocina Economica</title>
    <nav class="navbar nav justify-content-end bg-dark">
        <div class="container-fluid" >
            <a class="navbar-brand" href="index.jsp" style="color: #fdfdfe">Cocina Económica</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link" href="index.jsp" style="color: #fdfdfe">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="vistaProductos.jsp" style="color: #fdfdfe">Consultar Inventario</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Productoform.jsp" style="color: #fdfdfe">Modificar Inventario</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</head>
<link rel="stylesheet" href="assets/css/style.css">
<div class="container">
    <div class="row">
        <div class="col col-md-auto">
            <div class="bg"></div>
            <div class="bg bg2"></div>
            <div class="bg bg3"></div>
<body>
<br>

<table class="table table-striped-columns">
    <center>

    <thead >
    <tr>
        <th width="100px">Producto</th>
        <th width="150px">Cantidad</th>
        <th width="250px">Unidad de medida</th>
        <th>Editar</th>
        <th>Eliminar</th>
    </tr>

    </thead>
    <tbody>
    <%
        DaoProducto prd = new DaoProducto();
        request.getSession().setAttribute("Producto", prd.findAll());
        request.getSession().setAttribute("unProducto", prd.findOne(1));
    %>
    <c:forEach items="${Producto}" var="u">
        <tr>
            <td width="150px">${u.producto}</td>
            <td width="150px">${u.cantidad}</td>
            <td width="250px">${u.unidadm}</td>
            <td><a class="btn btn-warning"
                   href="comida-servlet?id=${u.id}&operacion=update">Editar</a></td>
            <td><a class="btn btn-danger"
                   href="comida-servlet?id=${u.id}&operacion=delete">X</a></td>


        </tr>
            </center>

    </c:forEach>


    </tbody>
</table>
            <br><br>
<a href="Productoform.jsp" class="btn btn-success">Registrar Producto</a>
        </div>
        </div>
    </div>
<script type="text/javascript" src="assets/js/bootstrap.js"></script>
</body>


</html>

