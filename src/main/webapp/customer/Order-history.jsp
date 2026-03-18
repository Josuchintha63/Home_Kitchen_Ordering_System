<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List"%>
<%@ page import="com.home.dto.Order"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>My Orders</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

body{

background:
linear-gradient(rgba(0,0,0,0.85),rgba(0,0,0,0.85)),
url("https://images.unsplash.com/photo-1504674900247-0877df9cc836");

background-size:cover;
background-position:center;

color:white;
min-height:100vh;

}

/* NAVBAR */

.navbar{

display:flex;
justify-content:space-between;
align-items:center;

padding:15px 60px;

background:linear-gradient(45deg,#ff5e00,#ff8c00);

}

.logo{
font-size:22px;
font-weight:600;
}

.nav-links a{

text-decoration:none;
color:white;
margin-left:20px;
font-size:15px;

}

/* TITLE */

.page-title{

text-align:center;
font-size:32px;
margin:30px 0;

}

/* CONTAINER */

.orders-container{

width:850px;
margin:auto;

}

/* ORDER CARD */

.order-card{

background:rgba(0,0,0,0.65);

padding:20px;

border-radius:12px;

margin-bottom:20px;

box-shadow:0 8px 20px rgba(0,0,0,0.4);

}

/* FOOD SECTION */

.food-section{

display:flex;
align-items:center;
gap:15px;
margin-bottom:15px;

}

.food-section img{

width:80px;
height:70px;
object-fit:cover;
border-radius:6px;

}

/* ROW */

.order-row{

display:flex;
justify-content:space-between;
margin:6px 0;

}

/* STATUS */

.status{

padding:4px 10px;
border-radius:20px;
font-size:13px;
background:#2ecc71;
color:white;

}

/* BUTTON GROUP */

.btn-group{

margin-top:15px;
display:flex;
gap:10px;

}

.rate-btn{

background:#ffc107;
border:none;
padding:8px 12px;
border-radius:6px;
cursor:pointer;

}

.reorder-btn{

background:#ff5e00;
color:white;
border:none;
padding:8px 12px;
border-radius:6px;
cursor:pointer;

}

</style>

</head>

<body>

<!-- NAVBAR -->

<div class="navbar">

<div class="logo">🍽 HomeKitchen</div>

<div class="nav-links">

<a href="Dashboard.jsp">Dashboard</a> <a href="FoodList">Menu</a> <a href="ViewCart">Cart</a>

</div>

</div>

<h1 class="page-title">📦 My Orders</h1>

<div class="orders-container">

<%

List<Order> orders = (List<Order>)request.getAttribute("orders");

if(orders!=null && !orders.isEmpty()){

for(Order o : orders){

%>

<div class="order-card">

<!-- FOOD IMAGE + NAME -->

<div class="food-section">

<% if(o.getFood()!=null){ %>

<img src="/Cloud_kitchen/<%= o.getFood().getImage_url() %>">

<div>

<b><%= o.getFood().getFood_name() %></b><br>

<small>Quantity : <%= o.getQuantity() %></small>

</div>

<% } else { %>

<img src="https://images.unsplash.com/photo-1568901346375-23c9450c58cd">

<div>

<b>Food Item</b><br>

<small>Quantity : <%= o.getQuantity() %></small>

</div>

<% } %>

</div>

<!-- ORDER DETAILS -->

<div class="order-row">
<span><b>Order ID</b></span>
<span>#<%= o.getOrder_id() %></span>
</div>

<div class="order-row">
<span>Total Amount</span>
<span>₹ <%= o.getTotal_amount() %></span>
</div>

<div class="order-row">
<span>Status</span>
<span class="status"><%= o.getStatus() %></span>
</div>

<div class="order-row">
<span>Order Date</span>
<span><%= o.getOrder_date() %></span>
</div>

<!-- BUTTONS -->

<div class="btn-group">

<button class="rate-btn">⭐ Rate Order</button>

<a href="Reorder?oid=<%= o.getOrder_id() %>">

<button class="reorder-btn">🔁 Reorder</button>

</a>

</div>

</div>

<%

}

}else{

%>

<h3 style="text-align:center;">No Orders Found</h3>

<%

}

%>

</div>

</body>
</html>
