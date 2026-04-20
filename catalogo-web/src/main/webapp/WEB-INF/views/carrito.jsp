<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>

<h1>Carrito</h1>

<table>
<c:forEach var="i" items="${items}">
<tr>
<td>${i.producto.nombre}</td>
<td>${i.cantidad}</td>
<td>${i.subtotal}</td>
</tr>
</c:forEach>
</table>

<form method="post">
<input type="hidden" name="accion" value="limpiar">
<button>Limpiar carrito</button>
</form>

<a href="catalogo">Volver</a>