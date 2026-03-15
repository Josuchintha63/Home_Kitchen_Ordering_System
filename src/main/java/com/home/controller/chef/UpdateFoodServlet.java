package com.home.controller.chef;

import java.io.IOException;

import com.home.dao.FoodDAOImpl;
import com.home.dao.FoodDao;
import com.home.dto.Food;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chef/UpdateFood")
public class UpdateFoodServlet extends HttpServlet{
	@Override
	protected void doPost(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
	        String fname = req.getParameter("food_name");
	        int foodId = Integer.parseInt(req.getParameter("food_id"));
	        int chefId = Integer.parseInt(req.getParameter("chef_id"));
	        String description = req.getParameter("description");
	        double price = Double.parseDouble(req.getParameter("price"));
	        String image = req.getParameter("image_url");
	        String status = req.getParameter("status");

	        Food food = new Food(foodId, chefId, fname, description, price, image, status);
	        FoodDao fdao = new FoodDAOImpl();
	        boolean isUpdated = fdao.updateFood(food);
	        
	        if (isUpdated) {
	            resp.sendRedirect("ChefDashboardServlet");
	        } else {
	            resp.getWriter().println("Update Failed");
	        }
	
	}

}
