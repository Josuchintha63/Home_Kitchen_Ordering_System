package com.home.dao;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.util.ArrayList;
import java.util.List;

import com.home.dto.Cart;
import com.home.dto.Food;
import com.home.util.DBConnection;

public class CartDAOImpl implements CartDao {

    Connection con = null;

    public boolean addToCart(int userId, int foodId) {

        try {

            con = DBConnection.getConnection();

           
            String check = "SELECT quantity FROM cart WHERE user_id=? AND food_id=?";
            PreparedStatement ps = con.prepareStatement(check);
            ps.setInt(1, userId);
            ps.setInt(2, foodId);
            ResultSet rs = ps.executeQuery();

            if (rs.next()) {

               
                String update ="UPDATE cart SET quantity=quantity+1 WHERE user_id=? AND food_id=?";

                PreparedStatement ups = con.prepareStatement(update);
                ups.setInt(1, userId);
                ups.setInt(2, foodId);
                int rows = ups.executeUpdate();

                return rows > 0;

            } else {

                
                String insert ="INSERT INTO cart(user_id,food_id,quantity) VALUES(?,?,1)";

                PreparedStatement ips = con.prepareStatement(insert);
                ips.setInt(1, userId);
                ips.setInt(2, foodId);

                int rows = ips.executeUpdate();

                
                return rows > 0;
            }

        } catch (Exception e) {
            e.printStackTrace();
        }

        return false;
    }



    @Override
    public List<Cart> getCartItems(int user_id) {

        List<Cart> cartList = new ArrayList<>();
        con = DBConnection.getConnection();

        try {

            String sql = "SELECT * FROM cart WHERE user_id=?";
            PreparedStatement ps = con.prepareStatement(sql);
            ps.setInt(1, user_id);

            ResultSet rs = ps.executeQuery();

            while(rs.next()){

                Cart cart = new Cart();

                int foodId = rs.getInt("food_id");

//                cart.setCart_id(rs.getInt("cart_id"));
                cart.setUser_id(rs.getInt("user_id"));
                cart.setFood_id(foodId);
                cart.setQuantity(rs.getInt("quantity"));

               
                String fsql="SELECT * FROM food_items WHERE food_id=?";
                PreparedStatement fps = con.prepareStatement(fsql);
                fps.setInt(1, foodId);

                ResultSet frs = fps.executeQuery();

                if(frs.next()){
                    Food food = new Food();

                    food.setFood_name(frs.getString("food_name"));
                    food.setPrice(frs.getDouble("price"));
                    food.setImage_url(frs.getString("image_url"));

                    cart.setFood(food);
                }

                cartList.add(cart);
            }

        } catch(Exception e){
            e.printStackTrace();
        }

        return cartList;
    }

	@Override
	public void clearCart(int userId) {
		
		Connection con = null;

	    try {

	        con = DBConnection.getConnection();
	        String sql = "DELETE FROM cart WHERE user_id=?";
	        PreparedStatement ps = con.prepareStatement(sql);
	        ps.setInt(1, userId);
	        ps.executeUpdate();

	    } catch (Exception e) {
	        e.printStackTrace();
	    }
		
	}
}