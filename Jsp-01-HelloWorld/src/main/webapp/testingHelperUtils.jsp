<!-- importing -->
<%@ page import = "jspDemo.*" %> 
<html>
	<body>
		<jsp:include page="myHeader.html"/>
		
		<h3>Testing utils : <%= helperUtils.makeItUpperCase("testing the util class") %> </h3>
	
		<hr>
		<jsp:include page="myFooter.jsp"/>
	</body>
</html>