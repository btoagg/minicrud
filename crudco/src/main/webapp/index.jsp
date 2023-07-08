<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.crudco.crudco.model.Producto" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<link rel="stylesheet" type="text/css" href="assets/css/bootstrap.css">
<head>
    <title>Cocina Economica</title>
    <nav class="navbar nav justify-content-end bg-dark">
        <div class="container-fluid">
            <a class="navbar-brand" href="index.jsp" style="color: #fdfdfe">Cocina Económica</a>
            <button class="navbar-toggler" type="button" data-bs-toggle="collapse" data-bs-target="#navbarNav" aria-controls="navbarNav" aria-expanded="false" aria-label="Toggle navigation">
                <span class="navbar-toggler-icon"></span>
            </button>
            <div class="collapse navbar-collapse" id="navbarNav">
                <ul class="navbar-nav">
                    <li class="nav-item">
                        <a class="nav-link active" aria-current="page" href="index.jsp" style="color: #fdfdfe">Inicio</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="vistaProductos.jsp" style="color: #fdfdfe">Consultar Inventario</a>
                    </li>
                    <li class="nav-item">
                        <a class="nav-link" href="Productoform.jsp" style="color: #fdfdfe">Modificar Inventario</a>
                    </li>

                </ul>
            </div>
        </div>
    </nav>
</head>
<body style="background-color: #2c3034">>

<h1 style="color: #fdfdfe">Bienvenido a la Cocina Económica</h1>

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
<center>
    <div id="carouselExampleInterval" class="carousel slide pointer-event" data-bs-ride="carousel">
        <div class="carousel-inner">
            <div class="carousel-item" data-bs-interval="1000">
                <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-50" src="https://www.paulinacocina.net/wp-content/uploads/2020/01/untitled-copy.jpg" role="img" aria-label="Placeholder: First slide" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#777"></rect><text>Tacos de Pastor</text></img>

            </div>
            <div class="carousel-item" data-bs-interval="2000">
                <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-50" src="https://vivirmejor.mx/wp-content/uploads/2020/08/Comida-Tipica-Mexicana-Pozole-Portada.jpg" role="img" aria-label="Placeholder: Second slide" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#666"></rect><text>Pozole</text></img>

            </div>
            <div class="carousel-item active" data-bs-interval="2000">
                <img class="bd-placeholder-img bd-placeholder-img-lg d-block w-50" src="https://i.pinimg.com/736x/a6/a1/21/a6a1218f4251bc9dc295d60140ff2376.jpg" role="img" aria-label="Placeholder: Third slide" preserveAspectRatio="xMidYMid slice" focusable="false"><rect width="100%" height="100%" fill="#555"></rect><text>Tacos Dorados</text></img>

            </div>
        </div>
    </div>
</center>

<% for (Producto p: listaProducto) { %>
<% } %>

<script type="text/javascript">
    function cambiar(tipoCambio){
        document.getElementById("tipo").value = tipoCambio;
    }
</script>
        </div>
    </div>
</div>
        <script src="assets/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>