package com.home.controller.chef;

import java.io.IOException;
import java.util.List;

import com.home.dao.userDAOImpl;
import com.home.dto.Users;

import jakarta.servlet.RequestDispatcher;
import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import jakarta.servlet.http.HttpSession;
@WebServlet("/chef/Dashboard")
public class ChefDashboardServlet extends HttpServlet {
	
	@Override
	protected void doGet(HttpServletRequest req, HttpServletResponse resp) throws ServletException, IOException {
		userDAOImpl udao = new userDAOImpl();             
		List<Users> ulist =udao.getAllUsers();

		

		if(!ulist.isEmpty()) {                       
			req.setAttribute("userlist", ulist);    
			req.getRequestDispatcher("/chef/Dashboard.jsp")
			.forward(req,resp);                     
		}

	        
	}
		
}
