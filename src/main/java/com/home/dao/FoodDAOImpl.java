package com.home.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;


import com.home.dto.Food;
import com.home.util.DBConnection;

public class FoodDAOImpl implements FoodDao {
	Connection con = null;

    @Override
    public List<Food> getAllFoods() {
    	
    	List<Food> foodList = new ArrayList<>();

        String sql =
            "SELECT * FROM food_items WHERE status='AVAILABLE'";

        try (Connection con = DBConnection.getConnection();
             PreparedStatement ps = con.prepareStatement(sql);
             ResultSet rs = ps.executeQuery()) {

            while (rs.next()) {

                Food food = new Food();
                
                food.setFood_id(rs.getInt("food_id"));
                food.setFood_name(rs.getString("food_name"));
                food.setDescription(rs.getString("description"));
                food.setPrice(rs.getDouble("price"));
                food.setImage_url(rs.getString("image_url"));
                food.setStatus(rs.getString("status"));

                foodList.add(food);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return foodList;
    
    }

	@Override
	public boolean addFood(Food food) {
		con = DBConnection.getConnection();
		try {

            String sql =
            "INSERT INTO food_items (chef_id, food_name, description, price, image_url, status) VALUES (?,?,?,?,?,?)";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, food.getChef_id());
            ps.setString(2, food.getFood_name());
            ps.setString(3, food.getDescription());
            ps.setDouble(4, food.getPrice());
            ps.setString(5, food.getImage_url());
            ps.setString(6, food.getStatus());

            int rows = ps.executeUpdate();

            return rows > 0;

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    
		
		
		
	}
}