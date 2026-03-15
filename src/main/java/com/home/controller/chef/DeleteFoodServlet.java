
package com.home.controller.chef;
import java.io.IOException;

import com.home.dao.FoodDAOImpl;
import com.home.dao.FoodDao;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;

@WebServlet("/chef/DeleteFoodServlet")
public class DeleteFoodServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        int food_id = Integer.parseInt(req.getParameter("food_id"));

        FoodDao fdao = new FoodDAOImpl();
        boolean isDeleted = fdao.deletefood(food_id);

        if (isDeleted) {

            resp.sendRedirect(req.getContextPath()+"chef/Dashboard");

        } else {

            resp.getWriter().println("Delete Failed");

        }
    }
}