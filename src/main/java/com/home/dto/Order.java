package com.home.dto;

import java.sql.Timestamp;

public class Order {
	
	private int order_id;
    private int user_id;
    private int food_id;
    private int quantity;
    private double total_amount;
    private Timestamp order_date;
	private String status;
    
    
    
	
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
	public int getOrder_id() {
		return order_id;
	}
	public void setOrder_id(int order_id) {
		this.order_id = order_id;
	}
	public int getUser_id() {
		return user_id;
	}
	public void setUser_id(int user_id) {
		this.user_id = user_id;
	}
	public double getTotal_amount() {
		return total_amount;
	}
	public void setTotal_amount(double total_amount) {
		this.total_amount = total_amount;
	}
	public Timestamp getOrder_date() {
		return order_date;
	}
	public void setOrder_date(Timestamp order_date) {
		this.order_date = order_date;
	}
	public String getStatus() {
		return status;
	}
	public void setStatus(String status) {
		this.status = status;
	}
	
	
	

	
	public Order(int order_id, int user_id, double total_amount, Timestamp order_date, String status) {
		super();
		this.order_id = order_id;
		this.user_id = user_id;
		this.total_amount = total_amount;
		this.order_date = order_date;
		this.status = status;
	}
	
	public Order() {
		
		// TODO Auto-generated constructor stub
	}
	
}
