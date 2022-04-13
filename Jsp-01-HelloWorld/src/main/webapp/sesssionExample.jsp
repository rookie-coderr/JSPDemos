<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ page import="java.util.*" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
	
	<form action="toDoList.jsp">
			Add new item : 
			<input type="text" name="item"/>
			<input type="submit" value="submit"/>
		
	</form>    <!-- SessionVar and SessionVar1 -->
	<%
		List<String> itemList = (List<String>) session.getAttribute("listItem");
		if(itemList == null){
			itemList = new ArrayList<String>();
			session.setAttribute("ListItem",itemList);
		}
		String item = request.getParameter("item");
		boolean isListNotEmpty = item!=null && item.trim().length()>0;
		boolean isNotDuplicate = isListNotEmpty && !itemList.contains(item.trim());
		if(isListNotEmpty && isNotDuplicate){
			itemList.add(item);
		}
	%>
	
	
	
	<hr>
	Shopping cart : <br/><br/>
	<ol>
		<%
			for(String thing : itemList){
				out.println("<li>" + thing + "</li>");
			}
		%>
	</ol>
	
</body>
</html>