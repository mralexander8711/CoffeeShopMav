<%@ page language="java" contentType="text/html; charset=ISO-8859-1"
    pageEncoding="ISO-8859-1"%>
<!DOCTYPE html>
<html>
<head>
<link rel="stylesheet" href="/style.css">
<meta charset="ISO-8859-1">
<title>Black Joe Cafe'(Inventory)</title>
</head>
<body>
<h1 class="register"> Edit Current Item</h1>
<form action="/adminEdit"method="post">
<p class="form-group"><label>Name: </label><input type="text" name = "name" placeholder="${item.name}"><br>
<p class="form-group"><label>Description: </label><input type="text" name = "description"placeholder="${item.description}" ><br>
<p class="form-group"><label>Price: </label><input type="number" step=0.01 name ="price"placeholder="${item.price}"><br>
<p class="form-group"><label>Quantity: </label><input type="number" step=1 name="quantity"placeholder="${item.quantity}"><br>
<input name="id" hidden="true" value ="${item.id}"><br>
</p>
<input type="submit" value="Update">

</form>
</body>
</html>