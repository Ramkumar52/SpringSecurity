<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    <%@taglib uri="http://www.springframework.org/tags/form" prefix="form"%>
     <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c" %>
<!DOCTYPE html PUBLIC "-//W3C//DTD HTML 4.01 Transitional//EN" "http://www.w3.org/TR/html4/loose.dtd">
<html>
<head>
<meta http-equiv="Content-Type" content="text/html; charset=ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<div class="content">
			<fieldset>
				<legend>Become Member</legend>
		
				<form:form modelAttribute="newUser" ><br />
					<form:label path="firstname">Firstname:</form:label>
					<form:input path="firstname" /><br />
					
					<!-- to display validation messages -->
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('firstname')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<form:label path="lastname">Lastname: </form:label>
					<form:input path="lastname" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('lastname')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<form:label path="email">Email Id: </form:label>
					<form:input path="email" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('email')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<form:label path="phonenumber">Phone Number: </form:label>
					<form:input path="phonenumber" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('phonenumber')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<form:label path="password">Password: </form:label>
					<form:input path="password" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('password')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<form:label path="confirmpassword">Confirm Password: </form:label>
					<form:input path="confirmpassword" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('confirmpassword')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<form:label path="age">Age: </form:label>
					<form:input path="age" /><br />
					<c:forEach items="${flowRequestContext.messageContext.getMessagesBySource('age')}" var="err">
					  <div><span>${err.text}</span></div>
					</c:forEach><br />
					
					<input name="_eventId_submit" type="submit" value="Submit" /><br />
				</form:form>
			</fieldset>
		</div>
</body>
</html>