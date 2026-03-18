package com.home.dao;

import java.util.List;

import com.home.dto.Food;


public interface FoodDao {
	
	 List<Food> getAllFoods();
	 boolean addFood(Food food);
	 boolean updateFood(Food food);
	 boolean deletefood(int food_id);
	 Food getFoodById(int id);

}