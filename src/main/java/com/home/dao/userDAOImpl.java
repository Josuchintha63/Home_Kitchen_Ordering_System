package com.home.dao;


import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import com.home.dto.Users;
import com.home.util.DBConnection;


public class userDAOImpl implements userDAO {
	Connection con=null;

	@Override
	public boolean Register(Users user) {

	    String register =
	        "INSERT INTO users(user_id,name,email,password,role,phone) VALUES(?,?,?,?,?,?)";

	    try (Connection con = DBConnection.getConnection();
	         PreparedStatement pstmt = con.prepareStatement(register)) {

	        pstmt.setInt(1, user.getUser_id());
	        pstmt.setString(2, user.getName());
	        pstmt.setString(3, user.getEmail());
	        pstmt.setString(4, user.getPassword());
	        pstmt.setString(5, user.getRole());
	        pstmt.setLong(6, user.getPhone());

	        int count = pstmt.executeUpdate();
	        return count > 0;

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return false;
	}

	@Override
	public Users loginUser(String Name, String Password) {

	    String login =
	        "SELECT * FROM users WHERE name=? AND password=?";

	    Users user = null;

	    try (Connection con = DBConnection.getConnection();
	         PreparedStatement pstmt = con.prepareStatement(login)) {

	        pstmt.setString(1, Name);
	        pstmt.setString(2, Password);

	        ResultSet rs = pstmt.executeQuery();

	        if (rs.next()) {

	            user = new Users();
	            user.setUser_id(rs.getInt("user_id"));
	            user.setName(rs.getString("name"));
	            user.setEmail(rs.getString("email"));
	            user.setPassword(rs.getString("password"));
	            user.setRole(rs.getString("role"));
	            user.setPhone(rs.getLong("phone"));
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return user;
	}

	@Override
	public List<Users> getAllUsers() {

	    String query = "SELECT * FROM users";
	    List<Users> userList = new ArrayList<>();

	    try (Connection con = DBConnection.getConnection();
	         PreparedStatement pstmt = con.prepareStatement(query);
	         ResultSet rs = pstmt.executeQuery()) {

	        while(rs.next()) {

	            Users user = new Users();

	            user.setUser_id(rs.getInt("user_id"));
	            user.setName(rs.getString("name"));
	            user.setEmail(rs.getString("email"));
	            user.setPassword(rs.getString("password"));
	            user.setRole(rs.getString("role"));
	            user.setPhone(rs.getLong("phone"));

	            userList.add(user);
	        }

	    } catch (SQLException e) {
	        e.printStackTrace();
	    }

	    return userList;
	}
		
	}

	

