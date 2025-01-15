<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Insert title here</title>
</head>
<body>
	<ul>
	<%
	for (int i=0; i<1000; i++){
	%> 
	<li>
		<%out.println(i);%>
</li>
<%
}
%>
</ul>
</body>
</html>