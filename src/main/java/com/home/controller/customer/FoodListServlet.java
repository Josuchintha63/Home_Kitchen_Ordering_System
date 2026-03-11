package com.home.controller.customer;

import java.io.IOException;
import java.util.List;

import com.home.dao.FoodDAOImpl;
import com.home.dao.FoodDao;
import com.home.dto.Food;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
@WebServlet("/customer/FoodList")
public class FoodListServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
	        
	        FoodDao dao = new FoodDAOImpl();
	        List<Food> foodList = dao.getAllFoods();
	        req.setAttribute("foods", foodList);
	        RequestDispatcher rd =req.getRequestDispatcher("Food-list.jsp");
            rd.forward(req, resp);
	  }	
		
	}


