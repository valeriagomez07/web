<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="es.cie.repository.LibroRepositoryMemoria"%>
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

LibroRepositoryMemoria repo = new LibroRepositoryMemoria();
List<Libro> lista = repo.buscarTodos();
%>
<body>
<h1> Lista de Libros</h1>

	<table border=1>
	<caption> Titulo de tabla</caption>
		<tr>
			<th>ISBN</th>
			<th>Titulo</th>
			<th>Autor</th>
			<th>Paginas</th>
		</tr>

		<%for (Libro libro : lista) {%>
		
		<tr>
			<td><%=libro.getIsbn()%></td>
			<td><%=libro.getTitulo()%></td>
			<td><%=libro.getAutor()%></td>
			<td><%=libro.getPaginas()%></td>
		</tr>
		<%}%>
	</table>

</body>
</html>