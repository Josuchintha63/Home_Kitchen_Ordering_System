package com.home.controller.customer;

import java.io.IOException;
import java.util.List;

import com.home.dao.CartDao;
import com.home.dao.CartDAOImpl;
import com.home.dto.Cart;
import com.home.dto.Users;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/customer/ViewCart")
public class ViewCartServlet extends HttpServlet{

	protected void doGet(HttpServletRequest req,HttpServletResponse resp) throws ServletException, IOException {

		HttpSession session = req.getSession();
		Users user = (Users) session.getAttribute("us");

		int userId = user.getUser_id();

		CartDao dao = new CartDAOImpl();
		List<Cart> cartItems = dao.getCartItems(userId);

		req.setAttribute("cartItems", cartItems);

		RequestDispatcher rd = req.getRequestDispatcher("Cart.jsp");
		rd.forward(req, resp);
	}
}