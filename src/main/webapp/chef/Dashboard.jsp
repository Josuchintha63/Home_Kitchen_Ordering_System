<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>
<%@ page import="java.util.List" %>
<%@ page import="com.home.dto.Food" %>
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

    <!-- <a href="Add-food.jsp" class="btn">Add Food</a>
     <a href="ChefOrdersServlet" class="btn">View Orders</a>  -->
    
    <a href="<%=request.getContextPath()%>/chef/Add-food.jsp" class="btn">Add Food</a>
    
 
    <a href="<%=request.getContextPath()%>/chef/ChefOrdersServlet" class="btn">View Orders</a>
     
   <!--  <a href="UpdateFoodServlet" class="btn">Edit Food</a>
    
    <a href="DeleteFoodServlet" class="btn">Delete</a> -->

    <a href="logout.jsp" class="btn">Logout</a>

</div>

<table>

<tr>
<th>Food ID</th>
<th>Chef ID</th>
<th>Food Name</th>
<th>Description</th>
<th>Price</th>
<th>Image</th>
<th>Status</th>
<th>Edit</th>
<th>Delete</th>
</tr>

<%
List<Food> foods = (List<Food>) request.getAttribute("foods");

if(foods != null && !foods.isEmpty()){
    for(Food f : foods){
%>

<tr>

<td><%=f.getFood_id()%></td>
<td><%=f.getChef_id()%></td>
<td><%=f.getFood_name()%></td>
<td><%=f.getDescription()%></td>
<td><%=f.getPrice()%></td>

<td>
<img src="<%=f.getImage_url()%>" width="60">
</td>

<td><%=f.getStatus()%></td>

<td>

<a href="<%=request.getContextPath()%>/chef/EditFoodServlet?food_id=<%=f.getFood_id()%>">
 <button style="color:white;background:#e74c3c;padding:5px 10px;border-radius:4px;text-decoration:none;">Edit</button>
</a>
</td>

<td>

<a href="<%=request.getContextPath()%>/chef/DeleteFoodServlet?food_id=<%=f.getFood_id()%>">
    <button style="color:white;background:#e74c3c;padding:5px 10px;border-radius:4px;text-decoration:none;">Delete</button>
</a>
</td>

</tr>

<%
    }
}else{
%>

<tr>
<td colspan="9">No Food Items Available</td>
</tr>

<%
}
%>

</table>
</body>
</html>