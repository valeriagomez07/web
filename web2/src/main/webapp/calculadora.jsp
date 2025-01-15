<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Calculadora</title>
</head>
<body>


<%
	int numero1 = Integer.parseInt(request.getParameter("numero1"));
	int numero2 = Integer.parseInt(request.getParameter("numero2"));
	String operacion=request.getParameter("operacion");
	int resultado=0;
	
	%>
	
	<p>
	<%
	
	if (operacion.equals("+")) {
		resultado=numero1+numero2;
	} else if (operacion.equals("-")) {
		resultado=numero1-numero2;
	} else if (operacion.equals("*")) {
		resultado=numero1*numero2;
	}
	else {
		resultado=numero1/numero2;
	}
	out.println(numero1+""+operacion+""+numero2+"="+resultado);
	%>
	</p>

	
	

</body>
</html>