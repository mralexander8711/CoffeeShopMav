<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Black Joe Cafe'(Admin)</title>
</head>
<body>
		<h1>Update Inventory</h1>
		     <table class="table">
           <thead>
               <tr>
                   <th>Items</th><th>Description</th><th>Quantity</th><th>Price</th>
               </tr>
           </thead>
           <tbody>
               <c:forEach var="item" items ="${item}">
               <tr>
                   <td><a href="/ItemsList">${item.name}</a></td>
                   <td>${item.description}</td> <td>${item.quantity}</td><td>${item.price}</td>
                  <td>
                   <a class="btn btn-secondary" href="/adminForm?id=${item.id }">Edit</a>
                   <a href="/admin/delete?id=${item.id }" class="btn btn-light btn-sm">Delete</a>
                 </td>
               </tr>
               </c:forEach>
           </tbody>
       </table>	
        <a class="btn btn-secondary" href="/editlist">Add</a>
		<a class="btn btn-secondary" href="/ItemsList">Back</a>

</body>
</html>