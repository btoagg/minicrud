<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<body>
<form class="form-control" method="post" action="comida-servlet">
    <label>Producto:</label>
    <input type="text" name="producto" value="${producto.producto}" />
    <br/>
    <label>Cantidad:</label>
    <input type="text" name="cantidad" value="${producto.cantidad}" />
    <br/>
    <label>Unidad de Medida:</label>
    <input type="text" name="unidadm" value="${producto.unidadm}" />
    <br/>
    <input type="hidden" name="id" value="${producto.id}">

    <input type="submit" value="Registrar" />
</form>
</body>
</html>