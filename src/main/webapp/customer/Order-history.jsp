<%@ page contentType="text/html; charset=UTF-8" %>
<%@ page import="java.util.List"%>
<%@ page import="com.home.dto.Order"%>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>My Orders</title>

<style>

body{
 font-family: Arial;
 text-align:center;
}

.dashboard-btn{
 margin:20px;
 padding:10px 15px;
 background:black;
 color:white;
 border:none;
 border-radius:5px;
 cursor:pointer;
}

.dashboard-btn:hover{
 background:gray;
}

</style>

</head>
<body>

<h2>🚚 Order History</h2>

<!-- Dashboard Button -->
<a href="Dashboard.jsp">
<button class="dashboard-btn">⬅ Back To Dashboard</button>
</a>

<%

List<Order> orders = (List<Order>)request.getAttribute("orders");

if(orders!=null && !orders.isEmpty()){
 for(Order o : orders){
%>

<hr>

<h3>Order ID : <%= o.getOrder_id() %></h3>

<p>Total Amount : ₹ <%= o.getTotal_amount() %></p>

<p>Status : <%= o.getStatus() %></p>

<p>Date : <%= o.getOrder_date() %></p>

<%
 }
}else{
%>

<h3>No Orders Found</h3>

<%
}
%>

</body>
</html>