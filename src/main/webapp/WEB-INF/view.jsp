<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>View Expense</title>
</head>
<body>
	<h1>Expense Details</h1>
	<p>Expense Name: <c:out value="${expense.exp}" /></p>
	<p>Vendor: <c:out value="${expense.vendor}" /></p>
	<p>Amount: $<c:out value="${expense.amount}" /></p>
	<p>Expense Description:	<c:out value="${expense.description}" /></p>
	
	<br>
	<a href="http://localhost:8080">Back</a>
</body>
</html>
