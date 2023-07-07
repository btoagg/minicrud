<%@ page import="mx.edu.utez.crudco.crudco.model.DaoProducto" %><%--
  Created by IntelliJ IDEA.
  User: CA2
  Date: 03/07/2023
  Time: 12:28 p. m.
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<html>
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">

<head>
    <title>Cocina Economica</title>
    <ul class="nav nav-pills nav justify-content-end">
        <li class="nav-item">
            <a class="nav-link" href="index.jsp">Cocina Economica</a>
        </li>
        <li class="nav-item">
            <a class="nav-link active" aria-current="page"  href="vistaProductos.jsp">Consultar Inventario</a>
        </li>
        <li class="nav-item">
        </li>
    </ul>
</head>
<body>
<br>

<table class="table table-striped-columns">
    <thead>
    <tr>
        <th>Producto</th>
        <th width="50px">Cantidad</th>
        <th width="50px">Unidad de medida</th>
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
            <td class="table table-success table-striped">${u.producto}</td>
            <td class="table table-success table-striped">${u.cantidad}</td>
            <td class="table table-success table-striped">${u.unidadm}</td>
            <td><a class="btn btn-warning"
                   href="comida-servlet?id=${u.id}&operacion=update">Editar</a></td>
            <td><a class="btn btn-danger"
                   href="comida-servlet?id=${u.id}&operacion=delete">X</a></td>


        </tr>

    </c:forEach>


    </tbody>
</table>
<br><br>
<a href="Productoform.jsp" class="btn btn-primary">Registrar Producto</a>

<script type="text/javascript" src="assets/js/bootstrap.js"></script>
</body>


</html>

