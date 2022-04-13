<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
		The registration is confirmed for <%= request.getParameter("Fname") %> <%= request.getParameter("Lname") %> !!
		<br><br/>
		Welcome - 
		<!-- Radio -->
		
			<%= request.getParameter("nametitle") %>
			<br><br/>
		<!-- Name --> 
		${param.Fname}, ${param.Lname},
		 
		<!-- dropdown -->
		from ${param.country} !!
		<br><br/>
		
		
		
		<!-- checkbox -->
			<%
				String[] langs = request.getParameterValues("progLang");
				if(langs != null){
					out.println("chosen programming languages are : ");
					out.println("<ul>");
					for(String lang : langs){
						out.println("<li>" + lang + "</li>");
					}
					out.println("</ul>");
				}
				//else {
				//	out.println("None");
				//}
			
			%>
		<br><br/>

		
		 
</body>
</html>