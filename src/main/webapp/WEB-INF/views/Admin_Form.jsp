<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/style.css">
<meta charset="ISO-8859-1">
<title>Admin Sheet</title>
</head>
<body>
<h1 class="register">Please Update Inventory</h1>
<form action="/editItem"method="post">
<p class="form-group"><label>Name: </label><input type="text" name = "name" placeholder="${items.name}"><br>
<p class="form-group"><label>Description: </label><input type="text" name = "description"placeholder="${items.description}" ><br>
<p class="form-group"><label>Price: </label><input type="number" step=0.01 name ="price"placeholder="${items.price}"><br>
<p class="form-group"><label>Quantity: </label><input type="number" step=0 name="quantity"placeholder="${items.quantity}"><br>
<input name="id" hidden="true" value ="${items.id}"><br>
<input type="submit" value="Update">
</form>
</body>
</html>