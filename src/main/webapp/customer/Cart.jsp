<%@ page import="java.util.List"%>
<%@ page import="com.home.dto.Cart"%>

<!DOCTYPE html>

<html>
<head>
<meta charset="UTF-8">
<title>Checkout</title>

<link href="https://fonts.googleapis.com/css2?family=Poppins:wght@300;400;500;600&display=swap" rel="stylesheet">

<style>

*{
margin:0;
padding:0;
box-sizing:border-box;
font-family:'Poppins',sans-serif;
}

/* BODY BACKGROUND */

body{

background:
linear-gradient(rgba(0,0,0,0.85),rgba(0,0,0,0.85)),
url("https://images.unsplash.com/photo-1504674900247-0877df9cc836");

background-size:cover;
background-position:center;

color:white;

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

/* MAIN LAYOUT */

.checkout-container{
display:flex;
gap:30px;
padding:40px 60px;
}

/* LEFT SIDE */

.left-section{
flex:2;
}

/* RIGHT SIDE */

.right-section{

flex:1;

background:rgba(0,0,0,0.7);

padding:20px;

border-radius:10px;

}

/* ADDRESS BOX */

.address-box{

background:rgba(255,255,255,0.1);

padding:25px;

border-radius:10px;

margin-bottom:20px;

border:1px solid rgba(255,255,255,0.2);

}

.address-grid{
display:flex;
gap:20px;
margin-top:20px;
}

.address-card{

flex:1;

background:rgba(0,0,0,0.5);

padding:20px;

border-radius:8px;

}

.deliver-btn{

background:#ff5e00;
color:white;
padding:10px 20px;
border:none;
border-radius:5px;
margin-top:10px;
cursor:pointer;

}

.add-address{

flex:1;

border:1px dashed rgba(255,255,255,0.4);

padding:20px;

border-radius:8px;

text-align:center;

}

.add-btn{

margin-top:15px;

padding:10px 20px;

background:#ff5e00;

color:white;

border:none;

border-radius:5px;

cursor:pointer;

}

/* CART ITEM */

.cart-item{

display:flex;
justify-content:space-between;
align-items:center;

background:rgba(0,0,0,0.6);

padding:12px;

border-radius:6px;

margin-bottom:12px;

}

.food-info{
display:flex;
align-items:center;
gap:10px;
}

.food-info img{

width:60px;
height:50px;
object-fit:cover;
border-radius:6px;

}

/* BILL */

.bill-row{

display:flex;

justify-content:space-between;

margin:8px 0;

}

.total{

font-weight:600;

font-size:18px;

margin-top:10px;

}

/* BUTTON */

.place-btn{

width:100%;

padding:14px;

background:linear-gradient(45deg,#ff5e00,#ff8c00);

border:none;

color:white;

font-size:16px;

border-radius:6px;

margin-top:15px;

cursor:pointer;

}

</style>

</head>

<body>

<!-- NAVBAR -->

<div class="navbar">

<div class="logo">HomeKitchen</div>

<div class="nav-links">

<a href="FoodList">Menu</a>

<a href="ViewCart">Cart</a>

<a href="Dashboard.jsp">Dashboard</a>

</div>

</div>

<div class="checkout-container">

<!-- LEFT SIDE -->

<div class="left-section">

<div class="address-box">

<h2>Select delivery address</h2>

<p>You have a saved address in this location</p>

<div class="address-grid">

<div class="address-card">

<h3>🏠 Home</h3>

<p>
99/125-2 Professors Colony<br>
Kadapa, Andhra Pradesh<br>
516004
</p>

<p><b>48 mins</b></p>

<button class="deliver-btn">DELIVER HERE</button>

</div>

<div class="add-address">

<h3>Add New Address</h3>

<p>Save a new delivery location</p>

<button class="add-btn">ADD NEW</button>

</div>

</div>

</div>

<div class="address-box">

<h2>Payment</h2>

<p>Select payment method during checkout.</p>

</div>

</div>

<!-- RIGHT SIDE CART -->

<div class="right-section">

<h3>Your Cart</h3>

<%

List<Cart> cartItems = (List<Cart>)request.getAttribute("cartItems");

double total = 0;

if(cartItems!=null && !cartItems.isEmpty()){

for(Cart c : cartItems){

double price=c.getFood().getPrice();
int qty=c.getQuantity();

double sub = price*qty;

total+=sub;

%>

<div class="cart-item">

<div class="food-info">

<img src="/Cloud_kitchen/<%= c.getFood().getImage_url() %>">

<div>

<b><%= c.getFood().getFood_name() %></b><br>

<small>Price : ₹ <%= price %></small><br>

<small>Qty : <%= qty %></small>

</div>

</div>

<div>

₹ <%= sub %>

</div>

</div>

<%

}

}else{

%>

<p>Your cart is empty</p>

<%

}

double delivery=40;

double finalTotal=total+delivery;

%>

<hr>

<div class="bill-row">
<span>Item Total</span>
<span>₹ <%= total %></span>
</div>

<div class="bill-row">
<span>Delivery Fee</span>
<span>₹ <%= delivery %></span>
</div>

<hr>

<div class="bill-row total">
<span>TO PAY</span>
<span>₹ <%= finalTotal %></span>
</div>

<form action="PlaceOrder" method="post">

<button class="place-btn">Place Order</button>

</form>

</div>

</div>

</body>
</html>
