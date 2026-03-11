package com.home.dao;


import java.util.List;

import com.home.dto.Food;
import com.home.dto.Users;

public interface userDAO {
	
	boolean Register(Users user);
	Users loginUser(String Name,String Password); 
	List <Users> getAllUsers();
	 
	

}
