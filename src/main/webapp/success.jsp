<%@ page language="java" contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>
<%@ page import="domain.LoanApplication" %>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>You bag for loan too - step #3</title>
</head>

<body>
	
	<jsp:useBean id="loanService" class="service.LoanService" scope="application"/>
	<jsp:useBean id="parameters" class="domain.LoanParameters" scope="session"/>
	<jsp:useBean id="loan" class="domain.LoanApplication" scope="session"/>
	<jsp:useBean id="person" class="domain.Person" scope="session"/>
	
	<jsp:setProperty property="*" name="person"/>
	
	<%
		loan.setParameters(parameters);
		loan.setPerson(person);
		loanService.add(loan);
	%>
	
	<ul>
	<%
		for(LoanApplication loanApplication: loanService.getAll()){
	%>
		<li>Application: <%=loanApplication.getNumber()
			+ "Person: " + loanApplication.getPerson().getLastName() + "Amount: " + loanApplication.getParameters().getAmount()%></li>
	<%
		}
	%>
	</ul>

</body>
</html>