<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Add Food</title>

<style>

body{
font-family: Arial;
background-color:#f4f6f8;
}

.container{
width:400px;
margin:50px auto;
background:white;
padding:20px;
box-shadow:0px 0px 10px #ccc;
border-radius:8px;
}

input, textarea, select{
width:100%;
padding:8px;
margin:8px 0;
}

button{
background-color:#3498db;
color:white;
padding:10px;
border:none;
width:100%;
}

button:hover{
background-color:#2980b9;
}

</style>

</head>

<body>

<div class="container">

  <h2>Add Food Item 🍛</h2>

	<form action="Add-Food" method="post">
	<input type="hidden" name="chefId" value="1">
	<input type="text" name="foodName" placeholder="Enter food name" required>
	<input type="text" name="description" placeholder="Enter food description" required>
	<input type="number" name="price" placeholder="Enter price" required>
	<input type="text" name="imageurl" placeholder="Enter image URL">
	<select name="status" required>
	
	   <option value="AVAILABLE">Available</option>
	
	   <option value="NOT_AVAILABLE">Not Available</option>
	
	</select>
	
	<button type="submit"  value="AddFood">Add Food</button>
	</form>
</div>

</body>
</html>