<%@page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@include file="/WEB-INF/views/Header.jsp"%>
<%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
<!-- <!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd"> -->
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<link rel="stylesheet"
	href="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/css/bootstrap.min.css">
<script
	src="https://ajax.googleapis.com/ajax/libs/jquery/1.12.4/jquery.min.js"></script>
<script
	src="http://maxcdn.bootstrapcdn.com/bootstrap/3.3.6/js/bootstrap.min.js"></script>
<title>PRODUCT DETAIL</title>
</head>
<body>
	<form:form action="productmodel.do" method="POST"
		modelAttribute="ob">
		
		<table>
		<tr>
			<td>Product ID</td>
			<td><form:input path="id" /></td>
		</tr><br>
		<tr>
			<td>Product Name</td>
			<td><form:input path="name" /></td>
		</tr><br>
		<tr>
			<td>Product Description</td>
			<td><form:input path="description" /></td>
		</tr><br>
		<tr>
			<td>Product Price</td>
			<td><form:input path="price" /></td>
		</tr><br>
		
		<tr>
			<td>Category</td>
			<form:select path="category" name="CATEGORY">
			<form:option value="NONE" label="--Select--"/>
			<form:option value="3G">3G</form:option>
			<form:option value="4G">4G</form:option>
			<form:option value="HUB">HUB</form:option>
			</form:select>
		</tr><br>
		<tr>
		 	 <td colspan="2"><input type="submit" name="action" value="Add" />
				<input type="submit" name="action" value="Edit" /> <input
				type="submit" name="action" value="Delete" /> <input type="submit"
				name="action" value="ViewAll" /></td> 
		</tr>
		</table>
		<br>
		<a href="prodviewz" >viewall</a>
	</form:form>
</body>
</html>