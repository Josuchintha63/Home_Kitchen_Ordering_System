<%@ page import="java.util.List"%>
<%@ page import="com.home.dto.Cart"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>My Cart</title>

<style>
body{
font-family: Arial;
text-align:center;
}

.cart-card{
border:1px solid #ddd;
padding:15px;
margin:20px;
display:inline-block;
width:250px;
border-radius:10px;
box-shadow:0 0 10px gray;
}

button{
padding:8px 12px;
background:green;
color:white;
border:none;
border-radius:5px;
cursor:pointer;
}

</style>

</head>
<body>

<h2>🛒 My Cart</h2>

<%

List<Cart> cartItems =
(List<Cart>)request.getAttribute("cartItems");

if(cartItems!=null && !cartItems.isEmpty()){

for(Cart c : cartItems){

%>

<div class="cart-card">

<img src="/Cloud_kitchen/<%= c.getFood().getImage_url() %>" width="150" height="120">

<h3><%= c.getFood().getFood_name() %></h3>

<p>Price : ₹ <%= c.getFood().getPrice() %></p>

<form action="PlaceOrder" method="post">

<input type="hidden" name="foodId" value="<%= c.getFood_id() %>">

<label>Quantity</label>

<input type="number" name="quantity" value="<%= c.getQuantity() %>" min="1" max="10">

<br><br>

<p>Total : ₹ 
<%= c.getFood().getPrice() * c.getQuantity() %>
</p>

<button type="submit">Place Order</button>

</form>

</div>

<%

}

}else{

%>

<h3>Your cart is empty</h3>

<%

}

%>

<br><br>

<a href="FoodList">⬅ Back to Menu</a>

</body>
</html>