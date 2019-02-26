<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
	pageEncoding="ISO-8859-1"%>
<%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
Testing!
	<table>
		<c:forEach var="item" items="${ShoppingList}">
			<tr>
				
				<td>${item.name}</td>
				<td>${item.description}</td>
				<td>${item.quantity}</td>
				<td>${item.price}</td>
			
			</tr>
		</c:forEach>
	</table>
</body>
</html>