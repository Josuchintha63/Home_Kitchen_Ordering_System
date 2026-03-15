package com.home.controller.chef;

import java.io.IOException;
import java.util.List;

import com.home.dao.OrderDAOImpl;
import com.home.dao.OrderDao;
import com.home.dto.Order;
import com.home.dto.Users;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;

@WebServlet("/chef/ChefOrdersServlet")
public class ChefOrderServlet extends HttpServlet {

	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {

        HttpSession session = req.getSession();

        Users chef = (Users) session.getAttribute("us");

        int chefId = chef.getUser_id();
		
		OrderDao dao=new OrderDAOImpl();
		List<Order> orders=dao.getChefOrders(chefId);
		req.setAttribute("orders", orders);
		req.getRequestDispatcher("/chef/Chef-orders.jsp")
		.forward(req, resp);
	}

}
