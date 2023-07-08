<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<html>
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
<head>
    <title>Cocina Economica</title>
    <nav class="navbar nav justify-content-end bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp" style="color: #fdfdfe">Cocina Económica</a>
            <button class="btn btn-outline-danger" type="submit">
                    <a style="color: white;" href="vistaProductos.jsp">Salir</a>
                </button>
        </div>
    </nav>
</head>
<link rel="stylesheet" href="assets/css/style.css">

<body>
<br>
<div class="container">
    <div class="row">
            <div class="bg"></div>

            <br>
<form class="form-control" method="post" action="comida-servlet">
    <div>
        <label><strong>Producto:</strong></label>
        <input type="text" name="producto" value="${producto.producto}" />
    </div>

    <br>
    <div>
        <label><strong>Cantidad:</strong></label>
        <input type="text" name="cantidad" value="${producto.cantidad}" />
    </div>

    <br>
    <div>
        <label><strong>Unidad de Medida:</strong></label>
        <input type="text" name="unidadm" value="${producto.unidadm}" />
    </div>

    <br>
    <input type="hidden" name="id" value="${producto.id}">

    <input type="submit" value="Registrar" />
    <div class="bg bg2"></div>
    <div class="bg bg3"></div>
    </div>
</div>

</form>
</body>
</html>