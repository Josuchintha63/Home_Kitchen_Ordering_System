package com.home.controller.chef;

import java.io.IOException;

import com.home.dao.FoodDAOImpl;
import com.home.dao.FoodDao;
import com.home.dto.Food;
import com.home.dto.Users;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/chef/Add-food")
public class AddFoodServlet extends HttpServlet {

    @Override
    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {
    	HttpSession session = req.getSession();
    	 if (session == null || session.getAttribute("us") == null) {
             resp.sendRedirect("/Home_kitchen_System/author/Login.jsp");
             return;
         }

    
        Users chef = (Users) req.getSession().getAttribute("us");
        int chefId = chef.getUser_id(); 
       // int chefId = Integer.parseInt(req.getParameter("chefId"));
        //int foodId =Integer.parseInt(req.getParameter("food_Id"));
        String fname = req.getParameter("foodName");
        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        String image = req.getParameter("imageurl");
        String status = req.getParameter("status");

        Food food = new Food(chefId, fname, description, price, image, status);

        FoodDao fdao = new FoodDAOImpl();
        boolean isAdded = fdao.addFood(food);

        if (isAdded) {
            resp.sendRedirect("Dashboard");
        } else {
            resp.sendRedirect("chef/Add-food.jsp");
        }
    }
}
