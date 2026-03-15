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

        // Check if user logged in
        if (session == null || session.getAttribute("us") == null) {
            resp.sendRedirect("/Home_kitchen_System/author/Login.jsp");
            return;
        }

        // Get chef details from session
        Users chef = (Users) session.getAttribute("us");
        int chefId = chef.getUser_id();

        // Get form data
        String fname = req.getParameter("foodName");
        String description = req.getParameter("description");
        double price = Double.parseDouble(req.getParameter("price"));
        String image = req.getParameter("imageurl");
        String status = req.getParameter("status");

        // Create Food object
        Food food = new Food();
        food.setChef_id(chefId);
        food.setFood_name(fname);
        food.setDescription(description);
        food.setPrice(price);
        food.setImage_url(image);
        food.setStatus(status);

        // DAO call
        FoodDao fdao = new FoodDAOImpl();
        boolean isAdded = fdao.addFood(food);

        // Redirect
        if (isAdded) {
            resp.sendRedirect("Dashboard");
        } else {
            resp.sendRedirect("Add-food.jsp");
        }
    }
}