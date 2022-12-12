<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib prefix="form" uri="http://www.springframework.org/tags/form" %>
<%@ page isErrorPage="true" %> 
<%@ taglib prefix = "c" uri = "http://java.sun.com/jsp/jstl/core"%>  
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
<link href="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/css/bootstrap.min.css" rel="stylesheet" integrity="sha384-rbsA2VBKQhggwzxH7pPCaAqO46MgnOM80zW1RWuH61DGLwZJEdK2Kadq2F9CUG65" crossorigin="anonymous">
<script src="https://cdn.jsdelivr.net/npm/bootstrap@5.2.3/dist/js/bootstrap.bundle.min.js" integrity="sha384-kenU1KFdBIe4zVF0s0G1M5b4hcpxyD9F7jL+jjXkk+Q2h455rYXK/7HAuoJl+0I4" crossorigin="anonymous"></script>
</head>
<body>
	<h1>New Ninja</h1>
	<form:form action="/ninjas/new" method="post" modelAttribute="ninja">
	    <p>
	    	<form:label path="dojo">Dojo</form:label>
	        <form:select path="dojo">
	        	<c:forEach var="dojo" items="${dojos}">
	        		<option value="${dojo.id}">${dojo.name}</option>
	        	</c:forEach>
	        
	        </form:select>
	    </p>
	    <p>
	        <form:label path="firstName">First Name</form:label>
	        <form:textarea path="firstName"/>
	        <form:errors path="firstName" class="text-danger"/>
	    </p>

	    <p>
	        <form:label path="lastName">Last Name</form:label>
	        <form:input path="lastName"/>
	        <form:errors path="lastName" class="text-danger"/>
	    </p>
	    <p>
	        <form:label path="age">Age</form:label>
	        <form:input type="number" path="age"/>
	        <form:errors path="age" class="text-danger"/>     
	    </p>    
	    <input type="submit" value="Submit"/>
	</form:form>   
</body>
</html>