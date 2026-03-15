package com.home.controller.chef;

import java.io.IOException;
import java.util.List;

import com.home.dao.FoodDAOImpl;
import com.home.dao.FoodDao;
import com.home.dao.userDAOImpl;
import com.home.dto.Food;
import com.home.dto.Users;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/chef/Dashboard")
public class ChefDashboardServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

	    FoodDao dao = new FoodDAOImpl();

	    List<Food> foods = dao.getAllFoods();

	    req.setAttribute("foods", foods);

	    req.getRequestDispatcher("/chef/Dashboard.jsp")
	       .forward(req, resp);
	}
	        
	



}