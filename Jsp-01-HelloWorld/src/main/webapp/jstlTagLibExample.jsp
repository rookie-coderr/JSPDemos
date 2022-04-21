<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<%@ page import="java.util.*, jspDemo.Students"%>
<%@ page import="java.util.ArrayList" %>

	<!-- Scriplet for tag : for each -->
	<%
		String[] cities = {"Pune", "Patna", "Delhi", "Australia"};
		pageContext.setAttribute("mycities",cities);
	%>
	
	<!-- Scriplet for tag : for each student  -->	
	<%
		List<Students> students = new ArrayList<Students>();
			students.add(new Students("Richa","Agrawal"));
			students.add(new Students("John", "Doe"));
			students.add(new Students("Raj", "Roy"));
			students.add(new Students("Tom", "Cruise"));
		pageContext.setAttribute("mystudents", students);
	%>

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>

	<!--  
	<!-- JSTL tag : set example -->
	<c:set var = "showDate" value="<%= new java.util.Date()%>"/>
	Today's Date is : ${showDate}
	<br/><br/>
	
	<!-- JSTL tag : forEach example -->
	<ol>
		<c:forEach var = "city" items="${mycities}">
			<li>${city}</li>
		</c:forEach>
	</ol>


	<!-- JSTL tag : forEach Student Example -->
	<table border="1">
		<tr>
			<th>First Name</th>
			<th>Last Name</th>
		</tr>
		<c:forEach var="learner" items="${mystudents}">	
			<tr>
				<td>${learner.fname}</td>
				<td>${learner.lname}</td>
				
			</tr>
		</c:forEach>
	</table>
	
</body>
</html>