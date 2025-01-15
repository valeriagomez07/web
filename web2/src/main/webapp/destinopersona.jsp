<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<%@page import="java.util.Calendar"%>
<%@page import="java.util.Date"%>
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.text.DateFormat"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<%
	String nombre = request.getParameter("nombre");
	String apellidos = request.getParameter("apellidos");
	String fechaTexto = request.getParameter("fecha");
	String lenguaje = request.getParameter("lenguaje");
	String nuevoTexto = request.getParameter("nuevo");
	String[] lista = request.getParameterValues("dispositivos");

	int nivel = Integer.parseInt(request.getParameter("nivel"));

	boolean nuevo = Boolean.parseBoolean(nuevoTexto);

	Calendar calendario = Calendar.getInstance();
	//Convierto un Texto de cadena en una fecha Date con un formateador
	DateFormat formateador = new SimpleDateFormat("yyyy-MM-dd");
	Date fecha = formateador.parse(fechaTexto);
	calendario.setTime(fecha);
	int mesBien = calendario.get(Calendar.MONTH) + 1;
	%>
	<p>
		<%
		out.println(nombre);
		out.println(apellidos);
		out.println(calendario.getTime());
		%>
	</p>

	<p>
		El año es:
		<%=calendario.get(Calendar.YEAR)%>
	</p>
	<p>
		El mes es:
		<%=mesBien%>
	</p>
	<p>
		El dia es:
		<%=calendario.get(Calendar.DAY_OF_MONTH)%>
	</p>

<p>
	<%
	DateFormat nuevoFormateador = new SimpleDateFormat("dd/MM/YYY E");
	out.println(formateador.format(fecha));
	%>
	
	</p>

	<p>
		El lenguaje favorito es:
		
		<%=lenguaje%>
	</p>
	
	
	<p>
		Los dispositivos escogidos son:
		
	</p>
	
	<p>
	
<%
out.println("<ul>");

for (int i = 0; i < lista.length; i++) {
		out.println("<li>" + lista[i] + "</li>"); }
out.println("</ul>");%>
</p>

	<p>
		<%
		if (nivel == 1) {
			out.println("el nivel es basico");
		} else if (nivel == 2) {
			out.println("el nivel es intermedio");
		} else {
			out.println("el nivel es alto");
		}
		%>
	</p>

	<p>

		¿Eres nuevo?:
		<%
	if (nuevo)
		out.println("Eres nuevo");
	%>
	</p>

</body>
</html>