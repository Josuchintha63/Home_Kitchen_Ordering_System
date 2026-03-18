package com.home.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
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
	
	@Override
	public boolean updateFood(Food food) {
		con=DBConnection.getConnection();
		String sql = "UPDATE food_items SET chef_id=?, food_name=?, description=?, price=?, image_url=?, status=? WHERE food_id=?";
		boolean result;
		try {
			PreparedStatement ps = con.prepareStatement(sql);
			   ps.setInt(1, food.getChef_id());
	            ps.setString(2, food.getFood_name());
	            ps.setString(3, food.getDescription());
	            ps.setDouble(4, food.getPrice());
	            ps.setString(5, food.getImage_url());
	            ps.setString(6, food.getStatus());
	           
	            int rows = ps.executeUpdate();

	            if (rows > 0) {
	                result = true;
	            }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		
		
		return false;
	}

	@Override
	public boolean deletefood(int food_id) {
		con=DBConnection.getConnection();
		String sql = "DELETE FROM food_items WHERE food_id=?";
        try {
			PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, food_id);

            int rows = ps.executeUpdate();

            if (rows > 0) {
            	 boolean result = true;
               
            }
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}


		return false;
	}

	public Food getFoodById(int id) {
		// TODO Auto-generated method stub
		
		Food f = null;

		try {

		String sql = "select * from food where food_id=?";

		PreparedStatement ps = con.prepareStatement(sql);

		ps.setInt(1, id);

		ResultSet rs = ps.executeQuery();

		if(rs.next()) {

		f = new Food();

		f.setFood_id(rs.getInt("food_id"));
		f.setFood_name(rs.getString("food_name"));
		f.setDescription(rs.getString("description"));
		f.setPrice(rs.getDouble("price"));
		f.setImage_url(rs.getString("image_url"));

		}

		} catch(Exception e) {
		e.printStackTrace();
		}

		return f;

		}
		;
	}


	
