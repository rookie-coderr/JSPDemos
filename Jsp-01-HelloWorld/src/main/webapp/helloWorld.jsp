<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		
		<!-- including another jsp file -->
		<jsp:include page="myHeader.html"/>	
		<h4>Hello world !!</h4>
		This is time right now <%= new java.util.Date() %>
		<hr>
		
		<!-- including another jsp file -->
		<jsp:include page="myFooter.jsp"/>
		
</body>
</html>