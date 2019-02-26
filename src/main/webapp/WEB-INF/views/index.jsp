<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
    
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>    
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/style.css">
<meta charset="ISO-8859-1">
<title>Welcome To Black Joe Cafe</title>
</head>
<body>
<h1> Welcome To Black Joe Cafe' </h1>
<a href="/register">Click To Register</a>

 <table class="table">
           <thead>
               <tr>
                   <th>Items</th><th>Description</th><th>Quantity</th><th>Price</th>
               </tr>
           </thead>
           <tbody>
           <c:forEach var="item" items ="${item1}">
               <tr>
                   <td><a href="/ItemsList">${ item.name }</a></td>
                   <td>${ item.description }</td>
                   <td>${ item.quantity }</td>
                   <td>${ item.price }</td>
               
               </tr>
              </c:forEach>
           </tbody>
       </table>




</body>
</html>