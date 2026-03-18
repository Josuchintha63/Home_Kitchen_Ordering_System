package com.home.controller.admin;

import com.home.dao.userDAO;
import com.home.dao.userDAOImpl;
import com.home.dto.Users;

import jakarta.servlet.*;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

import java.io.IOException;
import java.util.List;

@WebServlet("/admin/users")
public class ViewUsersServlet extends HttpServlet {

    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        // DAO call (same like FoodDAO)
        userDAO dao = new userDAOImpl();
        List<Users> users = dao.getAllUsers();

        request.setAttribute("users", users);

        request.getRequestDispatcher("/jsp/admin/all-users.jsp")
               .forward(request, response);
    }
}