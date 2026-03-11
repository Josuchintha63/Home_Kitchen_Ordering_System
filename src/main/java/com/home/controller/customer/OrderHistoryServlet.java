package com.home.controller.customer;

import java.io.IOException;
import java.util.List;

import com.home.dao.OrderDAOImpl;
import com.home.dao.OrderDao;
import com.home.dto.Order;
import com.home.dto.Users;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/customer/OrderHistory")
public class OrderHistoryServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		
		HttpSession session = req.getSession();
        Users user = (Users) session.getAttribute("us");
        if(user == null){
            resp.sendRedirect("author/Login.jsp");
            return;
        }

        int userId = user.getUser_id();
        OrderDao dao = new OrderDAOImpl();
        List<Order> orders = dao.getOrdersByUser(userId);
        req.setAttribute("orders", orders);
        RequestDispatcher rd =req.getRequestDispatcher("Order-history.jsp");
        rd.forward(req, resp);
    }
 }


