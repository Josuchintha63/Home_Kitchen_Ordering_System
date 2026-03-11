<%@ page import="java.util.List"%>
<%@ page import="com.home.dto.Cart"%>
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8"%>

<!DOCTYPE html>
<html>
<head>
<title>My Cart</title>
</head>
<body>

<h2>🛒 My Cart</h2>

<%
List<Cart> cartItems =
(List<Cart>)request.getAttribute("cartItems");

if(cartItems!=null && !cartItems.isEmpty()){
    for(Cart c : cartItems){
%>

<hr>


<img src="/Cloud_kitchen/<%= c.getFood().getImage_url() %>" width="150" height="120">

<h3><%= c.getFood().getFood_name() %></h3>

<p>Price : ₹ <%= c.getFood().getPrice() %></p>

<p>Quantity : <%= c.getQuantity() %></p>

<p>Total : ₹ <%= c.getFood().getPrice() * c.getQuantity() %>
</p>
<form action="PlaceOrder" method="post">
    <button type="submit">Place Order</button>
</form>
<%
    }
}else{
%>

<h3>Your cart is empty</h3>

<%
}
%>
<br><br>
<a href="FoodList"> Back to Menu</a>
</body>
</html>