<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<jsp:include page="header.jsp" />
<body>
<form class="form-control" method="post" action="comida-servlet">
    <label>Producto:</label>
    <input type="text" name="produc" value="${producto.product}" />
    <br/>
    <label>Cantidad:</label>
    <input type="text" name="canti" value="${producto.cant}" />
    <br/>
    <label>Unidad de Medida:</label>
    <input type="text" name="est" value="${producto.edo}" />
    <br/>
    <input type="hidden" name="id" value="${producto.id}">
    <input type="submit" value="Registrar" />
</form>
</body>
</html>