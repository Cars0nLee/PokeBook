<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>    
    
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>PokeBook Home</title>

<link rel="stylesheet" type="text/css" href="css/style.css">
<script type="text/javascript" src="js/app.js"></script>

</head>
<body>
	<h1>PokeBook</h1>
	
	<table>
		<tr>
			<th>Expense</th>
			<th>Vendor</th>
			<th>Amount</th>
			<th>Edit</th>
			<th>Delete</th>
		</tr>
		<c:forEach var="i" items="${expenses}">
		<tr>
			<td><a href="http://localhost:8080/view/${i.id}"><c:out value="${i.exp}" /></a></td>
			<td><c:out value="${i.vendor}" /></td>
			<td>$<c:out value="${i.amount}" /></td>
			<td>
				<a href="http://localhost:8080/edit/${i.id}" >Edit</a>
			</td>
			<td>
				<form action="/delete/${i.id}" method="POST">
					<input type="hidden" name="_method" value="delete">
					<input type="submit" value="Delete">
				</form>
			</td>
		</tr>
		</c:forEach>
	</table>

	<h1 id="expense">Track an expense:</h1>

	<div id="form">
		<form:form action="/create" method="POST" modelAttribute="expense">
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
	</div>
</body>
</html>




