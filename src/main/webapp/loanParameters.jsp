<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<%@ page import="domain.LoanApplication" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Title of the document</title>
</head>

<body>
	<%!
		private Random generator = new Random();
	%>
	
	<%
		int number = generator.nextInt(60000);
		LoanApplication loan = new LoanApplication();
	%>
	
	Wygenerowany numer wniosku: <%=number %>
</body>

</html>