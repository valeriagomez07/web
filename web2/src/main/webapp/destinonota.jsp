<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
Esta es la nota que introduciste
<%
String nota=request.getParameter(nota);
int notaBuena=Integer.parseInt(nota);
if (notaBuena>=5)
	out.println("aprobaste campeon/a");
else out.println("sin comentarios");
%>
</body>
</html>