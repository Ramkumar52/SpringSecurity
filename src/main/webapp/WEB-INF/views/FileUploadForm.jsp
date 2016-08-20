<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
    <%@ taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>File Upload with Spring 3 MVC</title>
</head>
<body>
<h1>File Upload Form</h1><br />
		<form:form action="/abc" commandName="FORM" enctype="multipart/form-data" method="POST">
		<table>
			<tr><td colspan="2" style="color: red;"><form:errors path="*" cssStyle="color : red;"/>
				${errors}
			</td></tr>
			<tr><td>Name : </td><td><form:input type="file" path="file" /></td></tr>
			<tr><td colspan="2"><input type="submit" value="Upload File" /></td></tr>
		</table>
		</form:form>
</body>
</html>