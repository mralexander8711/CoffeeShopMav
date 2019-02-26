<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
  <%@ taglib uri="http://java.sun.com/jsp/jstl/core" prefix="c"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Black Joe Cafe'</title>
</head>
<body>

		<h1>Items To Purchase</h1>
		<%--  ${itemTest } has been added to your shopping cart! --%>
		
		     <table class="table">
		    
           <thead>
               <tr>
                   <th>Items</th><th>Description</th><th>Quantity</th><th>Price</th>
               </tr>
           </thead>
           <tbody>
          
               <c:forEach var="item" items ="${item1}">
                
               <tr>
               <form action="addToCart">
                   <td>${item.name}<input type="hidden" name="name" value="${item.name}"><input type="hidden" name="id" value="${item.id}"></td>
                   <td>${item.description}<input type="hidden" name="description" value="${item.description}"></td>
                   <td><input type="number" name="quantity"></td>
                   <td>${item.price}<input type="hidden" name="price" value="${item.price}"></td>
                   <td><input type="submit" value="Add to Cart"></td>
                 </form>
               </tr>
             
               </c:forEach>
              
           </tbody>
           
       </table>
       
	
		<a class="btn btn-secondary" href="/checkout">CheckOut</a>
		<a class="btn btn-secondary" href="/admin">Admin</a>
</body>
</html>