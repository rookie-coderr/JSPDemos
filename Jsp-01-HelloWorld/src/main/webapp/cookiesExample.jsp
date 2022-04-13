<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		<h3>Training Portal</h3>
		
		<%
			String favLang = "Java";
			Cookie[] cookies = request.getCookies();
			if(cookies!= null){
				for(Cookie cookie : cookies){
					if(cookie.getName().equals("personalizedCookie")){
						favLang = cookie.getValue();
					}
				}
			}
		%>
		
		Books for your favourite programming language <strong><%= favLang %></strong><br/>
		
		Latest news related to your programming language <strong><%= favLang  %></strong><br/>
		
		Articles related to your favourite language <strong><%= favLang %></strong><br/>
		
		<a href="cookiesExample-personalize-page.html">Personalize your page</a>
</body>
</html>