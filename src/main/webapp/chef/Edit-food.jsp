<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<%@ page import="com.home.dto.Food" %>

<!DOCTYPE html>
<html>
<head>
<meta charset="UTF-8">
<title>Edit Food</title>
</head>
<body>

<%
Food food = (Food) request.getAttribute("food");
if(food == null){
%>
<h2>Food Not Found</h2>

<%
}else{
%>

<form action="chef/UpdateFood" method="post">

    <!-- Hidden Fields -->
    <input type="hidden" name="food_id" 
           value="<%= food.getFood_id() %>">

    <input type="hidden" name="chef_id" 
           value="<%= food.getChef_id() %>">

    Food Name:
    <input type="text" name="food_name"
           value="<%= food.getFood_name() %>"
           required><br><br>

    Description:
    <input type="text" name="description"
           value="<%= food.getDescription() %>"
           required><br><br>

    Price:
    <input type="text" name="price"
           value="<%= food.getPrice() %>"
           required><br><br>

    Image URL:
    <input type="text" name="image_url"
           value="<%= food.getImage_url() %>"><br><br>

    Status:
    <select name="status" required>

        <option value="AVAILABLE"
        <%= "AVAILABLE".equals(food.getStatus()) ? "selected" : "" %>>
        Available
        </option>

        <option value="NOT_AVAILABLE"
        <%= "NOT_AVAILABLE".equals(food.getStatus()) ? "selected" : "" %>>
        Not Available
        </option>

    </select>

    <br><br>

    <input type="submit" value="Update Food">

</form>
<%
}
%>
</body>
</html>