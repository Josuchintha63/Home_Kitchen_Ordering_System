<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Chef Dashboard</title>

<style>

/* Page styling */
body {
    font-family: Arial, sans-serif;
    background-color: #f4f6f8;
    margin: 0;
    padding: 0;
}

/* Heading */
h1 {
    background-color: #2c3e50;
    color: white;
    padding: 15px;
    text-align: center;
    margin: 0;
}

/* Table container */
table {
    width: 90%;
    margin: 30px auto;
    border-collapse: collapse;
    background-color: white;
    box-shadow: 0px 0px 10px #ccc;
}

/* Table header */
th {
    background-color: #34495e;
    color: white;
    padding: 12px;
}

/* Table data */
td {
    padding: 10px;
    text-align: center;
}

/* Alternate rows */
tr:nth-child(even) {
    background-color: #f2f2f2;
}

/* Hover effect */
tr:hover {
    background-color: #ddd;
}

/* Buttons */
.btn-container {
    text-align: center;
    margin-top: 20px;
}

.btn {
    padding: 10px 15px;
    margin: 5px;
    background-color: #3498db;
    color: white;
    text-decoration: none;
    border-radius: 5px;
}

.btn:hover {
    background-color: #2980b9;
}

</style>

</head>

<body>

<h1>Welcome Chef 👨‍🍳</h1>

<div class="btn-container">

    <a href="Add-food.jsp" class="btn">Add Food</a>
    
     <a href="ChefOrdersServlet" class="btn">Chef Orders</a>

    <a href="UpdateFoodServlet" class="btn">Edit Food</a>

    <a href="logout.jsp" class="btn">Logout</a>

</div>

<table>

<tr>
<th>Food ID</th>
<th>Chef ID</th>
<th>Food Name</th>
<th>Description</th>
<th>Price</th>
<th>Image URL</th>
<th>Status</th>
</tr>

<!-- Data will come from database -->

</table>

</body>
</html>