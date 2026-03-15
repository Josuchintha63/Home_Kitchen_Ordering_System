<%@ page language="java" contentType="text/html; charset=UTF-8"
pageEncoding="UTF-8"%>

<%@ page import="java.util.List" %>
<%@ page import="com.home.dto.Food" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Food List Menu</title>

<style>

body{
    font-family: Arial;
    text-align:center;
}

.food-card{
    border:1px solid #ddd;
    padding:15px;
    margin:20px;
    display:inline-block;
    width:280px;
    border-radius:10px;
    box-shadow:0 0 10px gray;
}

button{
    padding:8px 12px;
    border:none;
    border-radius:5px;
    cursor:pointer;
}

.cart-btn{
    background:green;
    color:white;
}

.delete-btn{
    background:red;
    color:white;
}

.dashboard-btn{
    background:#444;
    color:white;
    margin:20px;
}

</style>

</head>
<body>

<h2>Available Food Items</h2>

<!-- Dashboard Button -->
<a href="Dashboard.jsp">
<button class="dashboard-btn">⬅ Go To Dashboard</button>
</a>

<br>

<%

List<Food> foods = (List<Food>)request.getAttribute("foods");

if(foods != null && !foods.isEmpty()){

for(Food f : foods){

%>

<div class="food-card">

<img src="/Cloud_kitchen/<%= f.getImage_url() %>" width="250" height="200">

<h3><%= f.getFood_name() %></h3>

<p>Description : <%= f.getDescription() %></p>

<p>Price : ₹ <%= f.getPrice() %></p>

<!-- Add To Cart -->
<a href="AddToCart?fid=<%= f.getFood_id() %>">
<button class="cart-btn">🛒 Add To Cart</button>
</a>

<!-- Delete Food -->
<a href="DeleteFood?fid=<%= f.getFood_id() %>">
<button class="delete-btn">🗑 Delete Item</button>
</a>

</div>

<%

}

}else{

%>

<h3>No Food Available</h3>

<%

}

%>

</body>
</html>