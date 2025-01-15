<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="es.cie.repository.*"%>
<%@page import="es.cie.negocio.Libro"%>
<%@page import="java.util.List"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
<link rel="stylesheet" href="estilo.css">
</head>
<%

LibroRepository repo = new LibroRepositoryMemoria();

String titulo = request.getParameter("titulo");
String autor = request.getParameter("autor");

List<Libro> lista = null;
if (titulo != null) {
	lista = repo.buscarPorTitulo(titulo);
} else if (autor != null) {
	lista = repo.buscarPorAutor(autor);
} else {
	lista = repo.buscarTodos();
}
%>
<body>
	<form method="get">
		Buscar titulo:<input type="text" name="titulo" /> <input type="submit"
			value="buscar" />
	</form>
	<form method="get">
		Buscar autor:<input type="text" name="autor" /> <input type="submit"
			value="buscar" />
	</form>

	<h1>Listado de Libros</h1>

	<table border=1>
		<caption>Titulo de tabla</caption>
		<tr>
			<th>ISBN</th>
			<th>Titulo</th>
			<th>Autor</th>
			<th>Paginas</th>
		</tr>

		<%
		for (Libro libro : lista) {
		%>

		<tr>
			<td><%=libro.getIsbn()%></td>
			<td><%=libro.getTitulo()%></td>
			<td><%=libro.getAutor()%></td>
			<td><%=libro.getPaginas()%></td>
		</tr>
		<%
		}
		%>
	</table>

</body>
</html>