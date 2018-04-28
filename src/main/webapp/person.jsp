<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>You bag for loan too - step #2</title>
</head>

<body>
	
</body>
	<jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"/>
	<jsp:useBean id="loan" class="domain.LoanApplication" scope="session"/>
	<jsp:setProperty property="*" name="parameters"/>
	
	<h1>Application number: ${loan.number}</h1>
	<p>The amount requested: ${parameters.amount}</p>
	
	<form action="success.jsp" method="post">
		<label>First name: <input type="text" name="firstName"></label><br>
		<label>Last name: <input type="text" name="lastName"></label><br>
		<label>Pesel: <input type="text" name="pesel"></label><br>
		<input type="submit" value="Next step">
	</form>
	 
</html>