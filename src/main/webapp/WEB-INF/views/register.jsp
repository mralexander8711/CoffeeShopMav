<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/style.css">
<meta charset="ISO-8859-1">
<title>Black Joe Cafe'(Registration)</title>
</head>
<body>
<h1 class="register">Please Fill The Form To Register!</h1>
<form action="/ItemsList">
<p class="form-group"><label>First Name: </label><input type="text" name ="firstName"><br>
<p class="form-group"><label>Last Name: </label><input type="text" name = "lastName"><br>
<p class="form-group"><label>Email: </label><input type="email" name = "email"><br>
<p class="form-group"><label>Phone Number: </label><input type="tel" name ="number"><br>
<p class="form-group"><label>Password: </label><input type="password" name="psw">	
</p>
 <input type="submit" value="Register">
</form>
</body>
</html>