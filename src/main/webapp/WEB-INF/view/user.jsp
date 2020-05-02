<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1" isELIgnored="false"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>User Details</title>
</head>
<body>
<nav >
	<h2 align="right" > <a href="/logout"> logout </a> </h2>
</nav>
	<h2 align="center">Welcome ${user.userName}</h2>
	<table align="center" border="3">
		<tr>
			<td>User Name: </td>
			<td>${user.userName}</td>
		</tr>
		<tr>
			<td>First Name: </td>
			<td>${user.firstName}</td>
		</tr>
		<tr>
			<td>Last Name: </td>
			<td>${user.lastName}</td>
		<tr>
		<tr>
			<td>Location: </td>
			<td>${user.location}</td>
		</tr>
		<tr>
			<td>Ph Number: </td>
			<td>${user.phNum}</td>
		</tr>
		<tr>
			<td>E-Mail: </td>
			<td>${user.email}</td>

	</table>
</body>
</html>