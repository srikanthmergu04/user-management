<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<h3 align="center">Welcome, Enter The User Details</h3>
	<form:form method="POST" action="/addUser" modelAttribute="user">
		<table align="center">
			<tr>
				<td><form:label path="userName">User Name</form:label></td>
				<td><form:input path="userName" /></td>
			</tr>
			<tr>
				<td><form:label path="firstName">First Name</form:label></td>
				<td><form:input path="firstName" /></td>
			</tr>
			<tr>
				<td><form:label path="lastName">Last Name</form:label></td>
				<td><form:input path="lastName" /></td>
			<tr>
				<tr>
				<td><form:label path="location">Location</form:label></td>
				<td><form:input path="location" /></td>
			</tr>
			<tr>
				<td><form:label path="phNum">Ph Number</form:label></td>
				<td><form:input path="phNum" /></td>
			</tr>
			<tr>
				<td><form:label path="email">E-Mail</form:label></td>
				<td><form:input path="email" /></td>
			<tr>
				<tr>
				<td><form:label path="password">Password</form:label></td>
				<td><form:password path="password" /></td>
			<tr>
			
				<td><input type="submit" value="Submit" /></td>
			</tr>
			
		</table>
	</form:form>
</body>
</html>