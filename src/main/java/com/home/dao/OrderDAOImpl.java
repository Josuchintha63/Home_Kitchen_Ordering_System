package com.home.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.home.dto.Order;
import com.home.util.DBConnection;


public class OrderDAOImpl implements OrderDao {
	
	 Connection con=null;

	@Override
	public List<Order> getOrdersByUser(int userId) {
		
		List<Order> orderList = new ArrayList<>();
		
		try {

            con = DBConnection.getConnection();
            String sql ="SELECT * FROM orders WHERE user_id=? ORDER BY order_date DESC";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while(rs.next()){

                Order o = new Order();
                o.setOrder_id(rs.getInt("order_id"));
                o.setUser_id(rs.getInt("user_id"));
                o.setTotal_amount(rs.getDouble("total_amount"));
                o.setOrder_date(rs.getTimestamp("order_date"));
                o.setStatus(rs.getString("status"));
                orderList.add(o);
            }

        } catch(Exception e){
            e.printStackTrace();
        }

        return orderList;
    }

	@Override
	public List<Order> getChefOrders(int chefId) {
		List<Order> orders = new ArrayList<>();
		con = DBConnection.getConnection();
        try {
        	 // String sql ="SELECT oi.order_items_id,oi.order_id,oi.food_id,oi.quantity,oi.price" + " FROM order_items oi" + "join food_items f on oi.food_id=f.food_id" + "WHERE chef_id=?";
        	  String sql = "SELECT oi.order_item_id, oi.order_id, oi.food_id, oi.quantity, oi.price "
        	           + "FROM order_items oi "
        	           + "JOIN food_items f ON oi.food_id = f.food_id "
        	           + "WHERE f.chef_id = ?";
        	  PreparedStatement ps = con.prepareStatement(sql);
			ps.setInt(1, chefId);
			ResultSet rs=ps.executeQuery();
			while(rs.next()) {
				Order o=new Order();
				    o.setOrder_item_id(rs.getInt("order_item_id"));
		            o.setOrder_id(rs.getInt("order_id"));
		            o.setFood_id(rs.getInt("food_id"));
		            o.setQuantity(rs.getInt("quantity"));
		            o.setPrice(rs.getDouble("price"));

		            orders.add(o);
				
				
			}
		} catch (SQLException e) {
			// TODO Auto-generated catch block
			e.printStackTrace();
		}
		return orders;
	}

	@Override
	public void placeOrder(int userId, int foodId, int quantity, double total) {
		// TODO Auto-generated method stub
		
	}



	
				

}
