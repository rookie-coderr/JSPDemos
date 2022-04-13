<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	<%
		String favLang = request.getParameter("favouriteLanguage");
		Cookie setCookie = new Cookie("personalizedCookie",favLang);
		setCookie.setMaxAge(60*60);
		response.addCookie(setCookie);
	%>
	
	Thank you for personalizing the programming language to : ${param.favouriteLanguage}
	<br/><br/>
	<a href="cookiesExample.jsp">Return to main page</a>
		
</body>
</html>