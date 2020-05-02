<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form"%>
<!DOCTYPE html>
<html>
<head>
</head>
<body>
	<h3 align="center">Enter username & password for login.</h3>
	<form:form method="POST" action="/validateUser" modelAttribute="user">
		<table align="center">
			<tr>
				<td><form:label path="userName">User Name</form:label></td>
				<td><form:input path="userName" /></td>
			</tr>

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