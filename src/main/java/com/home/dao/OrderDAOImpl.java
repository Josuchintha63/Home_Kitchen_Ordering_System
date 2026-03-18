package com.home.dao;

import java.sql.*;
import java.util.ArrayList;
import java.util.List;

import com.home.dto.Order;
import com.home.util.DBConnection;

public class OrderDAOImpl implements OrderDao {

    Connection con = null;

    // 🔥 CUSTOMER
    @Override
    public List<Order> getOrdersByUser(int userId) {

        List<Order> orderList = new ArrayList<>();

        try {
            con = DBConnection.getConnection();

            String sql = "SELECT * FROM orders WHERE user_id=? ORDER BY order_date DESC";
            PreparedStatement ps = con.prepareStatement(sql);

            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order o = new Order();
                o.setOrder_id(rs.getInt("order_id"));
                o.setUser_id(rs.getInt("user_id"));
                o.setTotal_amount(rs.getDouble("total_amount"));
                o.setOrder_date(rs.getTimestamp("order_date"));
                o.setStatus(rs.getString("status"));

                orderList.add(o);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return orderList;
    }

    // 🔥 CHEF
    @Override
    public List<Order> getChefOrders(int chefId) {

        List<Order> orders = new ArrayList<>();

        try {
            con = DBConnection.getConnection();

            String sql = "SELECT oi.order_item_id, oi.order_id, oi.food_id, oi.quantity, oi.price "
                    + "FROM order_items oi "
                    + "JOIN food_items f ON oi.food_id = f.food_id "
                    + "WHERE f.chef_id = ?";

            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, chefId);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order o = new Order();
                o.setOrder_item_id(rs.getInt("order_item_id"));
                o.setOrder_id(rs.getInt("order_id"));
                o.setFood_id(rs.getInt("food_id"));
                o.setQuantity(rs.getInt("quantity"));
                o.setPrice(rs.getDouble("price"));

                orders.add(o);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return orders;
    }

    // 🔥 ADMIN (main method)
    @Override
    public List<Order> getAllOrders() {

        List<Order> list = new ArrayList<>();

        try {
            con = DBConnection.getConnection();

            String sql = "SELECT * FROM orders ORDER BY order_date DESC";
            PreparedStatement ps = con.prepareStatement(sql);

            ResultSet rs = ps.executeQuery();

            while (rs.next()) {
                Order o = new Order();
                o.setOrder_id(rs.getInt("order_id"));
                o.setUser_id(rs.getInt("user_id"));
                o.setTotal_amount(rs.getDouble("total_amount"));
                o.setOrder_date(rs.getTimestamp("order_date"));
                o.setStatus(rs.getString("status"));

                list.add(o);
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return list;
    }

    @Override
    public void placeOrder(int userId, int foodId, int quantity, double total) {

        try {
            Connection con = DBConnection.getConnection();

            // 🔥 1. Insert into orders table
            String orderSql = "INSERT INTO orders(user_id, total_amount, status) VALUES(?,?,?)";

            PreparedStatement ps1 = con.prepareStatement(orderSql, Statement.RETURN_GENERATED_KEYS);

            ps1.setInt(1, userId);
            ps1.setDouble(2, total);
            ps1.setString(3, "Pending");

            ps1.executeUpdate();

            // 🔥 2. Get generated order_id
            ResultSet rs = ps1.getGeneratedKeys();
            int orderId = 0;

            if (rs.next()) {
                orderId = rs.getInt(1);
            }

            // 🔥 3. Insert into order_items table
            String itemSql = "INSERT INTO order_items(order_id, food_id, quantity, price) VALUES(?,?,?,?)";

            PreparedStatement ps2 = con.prepareStatement(itemSql);

            ps2.setInt(1, orderId);
            ps2.setInt(2, foodId);
            ps2.setInt(3, quantity);
            ps2.setDouble(4, total);

            ps2.executeUpdate();

        } catch (Exception e) {
            e.printStackTrace();
        }
    }
}