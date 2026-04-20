<%@ page contentType="text/html;charset=UTF-8" %>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core" %>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>

<h1>Catálogo</h1>

<form method="get">
<input type="text" name="q" value="${busqueda}">
<select name="cat">
<option value="">Todas</option>
<c:forEach var="c" items="${categorias}">
<option value="${c}" ${c == catActual ? "selected" : ""}>${c}</option>
</c:forEach>
</select>
<button>Buscar</button>
<a href="carrito">Ver carrito</a>
</form>

<table>
<c:forEach var="p" items="${productos}">
<tr>
<td>${p.nombre}</td>
<td>${p.categoria}</td>
<td><fmt:formatNumber value="${p.precio}" type="currency"/></td>
<td>${p.stock}</td>
<td>
<form method="post" action="carrito">
<input type="hidden" name="accion" value="agregar">
<input type="hidden" name="idProducto" value="${p.id}">
<button>Agregar</button>
</form>
</td>
</tr>
</c:forEach>
</table>