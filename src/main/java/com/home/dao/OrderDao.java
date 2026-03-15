package com.home.dao;


import java.util.List;

import com.home.dto.Order;

public interface OrderDao {
	
	  
	 void placeOrder(int userId, int foodId, int quantity, double total);
	
	 List<Order> getOrdersByUser(int userId);

	 List<Order> getChefOrders(int chefId);


	


}
