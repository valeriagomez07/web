<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>

	<%
	String isbn = request.getParameter("isbn");
	String titulo = request.getParameter("titulo");
	String autor = request.getParameter("autor");
	int paginas = Integer.parseInt(request.getParameter("paginas"));
	String[] lista = request.getParameterValues("idioma");
	String genero = request.getParameter("genero");
	String estaDisponible = request.getParameter("disponibilidad");
	boolean disponible = Boolean.parseBoolean(estaDisponible);
	%>

	<p>
		<%
		out.println("ISBN: "+isbn);
		out.println("TITULO: "+titulo);
		out.println("AUTOR: "+autor);
		%>
	</p>

	<p>
		Numero de paginas:
		<%=paginas%>
	</p>

	<p>
		El genero es del libro es:
		<%=genero%>
	</p>
	
	<p>
	
	Los idiomas en los que se encuentran son: 
		<%
out.println("<ul>");

for (int i = 0; i < lista.length; i++) {
		out.println("<li>" + lista[i] + "</li>"); }
out.println("</ul>");%>
	</p>

<p>

		¿Se encuentra disponible?:
		<%
	if (disponible)
		out.println("disponible");
	%>
	</p>

</body>
</html>