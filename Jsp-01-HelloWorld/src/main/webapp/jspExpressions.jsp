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

		<!--  expressions -->
		converting in upper case <%= new String("hello world").toUpperCase() %>
		<br></br>
		25 multiplied by 4 = <%= 25*4 %>
		<br></br>
		is 75 greater than 70 = <%= 75>70 %>
		
		
		<!--  Scriplets -->
		<% 
			for(int i=0;i<5;i++){
				out.println("<br/>welcome - " + i);
			}
		%>
		
		<!-- Declaration -->
		<%!
			String makeItLower(String data){
				return data.toLowerCase();
			}
		
		%>
		
		<br/>lower case format of HELLO WORLD = <%= makeItLower("HELLO WORLD") %>
		<hr>
		<jsp:include page="myFooter.jsp"/>
</body>
</html>