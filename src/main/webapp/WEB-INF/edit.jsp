<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ page isErrorPage="true" %>    
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>     

<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Edit Book</title>
</head>
<body>
	<h1>Edit book</h1>
	
		<div id="form">
		<form:form action="/update/${expense.id}" method="POST" modelAttribute="expense">
			<input type="hidden" name="_method" value="put">
			<p>
				<form:errors path="exp" style="color: red"/><br>
				<form:errors path="vendor" style="color: red"/><br>
				<form:errors path="amount" style="color: red"/><br>
				<form:errors path="description" style="color: red"/>
			</p>
			<p>
				<form:label path="exp">Expense Name:</form:label>
				<form:input path="exp" />
			</p>
			<p>
				<form:label path="vendor">Vendor:</form:label>
				<form:input path="vendor" />
			</p>
			<p>
				<form:label path="amount">Amount:</form:label>
				<form:input path="amount" />
			</p>
			<p>
				<form:label path="description">Description:</form:label>
				<form:textarea path="description" placeholder="Max 500 characters"/>
			</p>
			<div class="submit">
				<input type="submit" value="Submit">
			</div>
		</form:form>
		<br>
		<a href="http://localhost:8080">Back</a>
	</div>
</body>
</html>
