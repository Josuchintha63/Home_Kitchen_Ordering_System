package com.home.controller.customer;

import java.io.IOException;
import java.util.List;

import com.home.dao.CartDAOImpl;
import com.home.dao.CartDao;
import com.home.dto.Cart;
import com.home.dto.Users;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/customer/ViewCart")
public class ViewCartServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		  
		HttpSession session = req.getSession();
        Users user = (Users) session.getAttribute("us");

        if(user == null){
            resp.sendRedirect("author/login.jsp");
            return;
        }

        CartDao dao = new CartDAOImpl();
        List<Cart> cartList = dao.getCartItems(user.getUser_id());
        req.setAttribute("cartItems", cartList);
        RequestDispatcher rd =req.getRequestDispatcher("Cart.jsp");
        rd.forward(req, resp);
    }
		
		
		
	}
	
	

