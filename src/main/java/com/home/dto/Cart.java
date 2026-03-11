package com.home.dto;

public class Cart {
	
	private int user_id;
    private int food_id;
    private int quantity;
    
    private Food food; 
    

	public Cart(int user_id, int food_id, int quantity) {
		super();
		this.user_id = user_id;
		this.food_id = food_id;
		this.quantity = quantity;
	}

	public Cart() {
		
		// TODO Auto-generated constructor stub
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public int getFood_id() {
		return food_id;
	}
	public void setFood_id(int food_id) {
		this.food_id = food_id;
	}
	public int getQuantity() {
		return quantity;
	}
	public void setQuantity(int quantity) {
		this.quantity = quantity;
	}
	public Food getFood() {
		return food;
	}

	public void setFood(Food food) {
		this.food = food;
	}

	

	

}
