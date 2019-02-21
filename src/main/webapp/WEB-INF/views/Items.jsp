<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="ISO-8859-1">
<title>Insert title here</title>
</head>
<body>
<main class="container">
		<h1>Items To Purchase</h1>
		
		<form class="form-inline" action="/" autocomplete="off">
		  <label class="sr-only" for="keyword">Keyword</label>
		  <input type="text" value="${param.keyword}" class="form-control mb-2 mr-sm-2" id="keyword" name="keyword" placeholder="Keyword">
		  
		  <label class="sr-only" for="category">Category</label>
		  <select class="form-control mb-2 mr-sm-2" id="category" name="category">
		  	<option value="">Category</option>
		  	<c:forEach items="${ categories }" var="cat">
		  		<option <c:if test="${ cat eq param.category }">selected</c:if>>${ cat }</option>
		  	</c:forEach>
		  </select>
		
		  <button type="submit" class="btn btn-primary mb-2 mr-2">Search</button>
		  <c:if test="${not empty param.keyword or not empty param.category}">
		    <%-- c:if determines whether its contents should show or not --%>
		  	<a href="/food" class="btn btn-secondary mb-2">Clear</a>
	  	  </c:if>
		</form>
		
		<table class="table">
			<thead>
			<tr>
				<th>Food</th><th>Category</th><th>Description</th><th>Action</th>
			</tr>
			</thead>
			<tbody>
			<%-- c:forEach is loops through the items and repeats the content for each one.
			     Think of this as:   for (Food food : foods) { ... }
			--%>
			<c:forEach items="${foods}" var="food">
				<tr>
					<%-- Access properties of the java bean using simple . notation.
					     This actually calls the getters behind the scenes. --%>
					<td>${food.name}</td><td>${food.category}</td><td>${food.description}</td>
					<td>
						<a href="/food/update?id=${ food.id }" class="btn btn-light btn-sm">Edit</a>
						<a href="/food/delete?id=${ food.id }" class="btn btn-light btn-sm">Delete</a>
					</td>
				</tr>
			</c:forEach>
			</tbody>
		</table>
		
		<a class="btn btn-secondary" href="/food/create">Add</a>
	</main>
</body>
</html>