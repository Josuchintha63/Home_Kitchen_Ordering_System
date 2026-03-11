package com.home.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.home.dto.Order;
import com.home.util.DBConnection;

public class OrderDAOImpl implements OrderDao {

    Connection con = null;

   
    @Override
    public void placeOrder(int userId, int foodId, int quantity, double total) {

        try {

            con = DBConnection.getConnection();

            String sql ="INSERT INTO orders(user_id, food_id, quantity, total_amount, status, order_date)VALUES (?, ?, ?, ?, 'PLACED', NOW())";

            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, userId);
            ps.setInt(2, foodId);
            ps.setInt(3, quantity);
            ps.setDouble(4, total);

            ps.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }


    @Override
    public List<Order> getOrdersByUser(int userId) {

        List<Order> orderList = new ArrayList<>();

        try {

            con = DBConnection.getConnection();

            String sql =
            "SELECT * FROM orders WHERE user_id=? ORDER BY order_date DESC";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, userId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {

                Order o = new Order();

                o.setOrder_id(rs.getInt("order_id"));
                o.setUser_id(rs.getInt("user_id"));
                o.setFood_id(rs.getInt("food_id"));   
                o.setQuantity(rs.getInt("quantity"));
                o.setTotal_amount(rs.getDouble("total_amount"));
                o.setStatus(rs.getString("status"));
                o.setOrder_date(rs.getTimestamp("order_date"));

                orderList.add(o);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return orderList;
    }
}