<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<jsp:include page="myHeader.html"/>
		<h3>built in objects</h3>
		
		browser in use : <%= request.getHeader("user-Agent") %>
		<br></br>
		host : <%= request.getHeader("host") %>
		<br></br>
		language used : <%= request.getLocale() %>
		
		<hr>
		<jsp:include page="myFooter.jsp"/>
</body>
</html>