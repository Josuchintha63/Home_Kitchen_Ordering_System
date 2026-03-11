package com.home.controller.customer;

import java.io.IOException;

import com.home.dao.CartDAOImpl;
import com.home.dao.CartDao;
import com.home.dto.Users;

import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/customer/AddToCart")
public class AddToCartServlet extends HttpServlet {

    protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws IOException {

        int foodId = Integer.parseInt(req.getParameter("fid"));

        HttpSession session = req.getSession();
        Users user = (Users) session.getAttribute("us");

        int userId = user.getUser_id();

        CartDao dao = new CartDAOImpl();
        dao.addToCart(userId, foodId);

        resp.sendRedirect("FoodList");
    }
}