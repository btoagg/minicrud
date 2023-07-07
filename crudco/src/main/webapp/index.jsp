<%@ page import="java.util.List" %>
<%@ page import="java.util.ArrayList" %>
<%@ page import="mx.edu.utez.crudco.crudco.model.Producto" %>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>
<html>
<head>
    <title>Cocina Económica</title>
    <link href="assets/css/bootstrap.css" type="text/css" rel="stylesheet">
</head>
<body>
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
<h1>Producto: <%=p.getProducto()%></h1>
<% } %>

<a href="hello-servlet">Hello Servlet</a>
<script type="text/javascript">
    function cambiar(tipoCambio){
        document.getElementById("tipo").value = tipoCambio;
    }
</script>
<script src="assets/js/bootstrap.js" type="text/javascript"></script>
</body>
</html>