package com.home.dao;

import java.util.List;

import com.home.dto.Cart;

public interface CartDao {
	
	boolean addToCart(int userId, int foodId);
	List<Cart> getCartItems(int user_id);
	void clearCart(int userId);
	
	


}
