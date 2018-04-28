<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="java.util.Random" %>
<%@ page import="domain.LoanApplication" %>
<%@ page import="java.util.Date" %>


<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>You bag for loan too - step #1</title>
</head>

<body>
	<%!
		private Random generator = new Random();
	%>
	
	<%
		String number = "" + generator.nextInt(999999999);
	%>
	
	<jsp:useBean id="loan" class="domain.LoanApplication" scope="session"/>
	<jsp:setProperty property="number" name="loan" value="<%=number %>"/>
	<jsp:setProperty property="date" name="loan" value="<%=new Date() %>"/>
	
	
	<h1>Application number: <%=loan.getNumber() %></h1>
	<p>Creation date: <%=loan.getDate() %></p>
		
	<form action="person.jsp">
		<label>The amount requested: <input type="number" name="amount"></label><br>
		<label>Number of installments: <input type="number" name="installmentCount"></label><br>
		<input type="submit" value="Next step">
	</form>


</body>

</html>