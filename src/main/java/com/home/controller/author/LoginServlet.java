package com.home.controller.author;

import java.io.IOException;

import com.home.dao.userDAOImpl;
import com.home.dto.Users;

import jakarta.servlet.ServletException;
import jakarta.servlet.annotation.WebServlet;
import jakarta.servlet.http.*;

@WebServlet("/author/Login")
public class LoginServlet extends HttpServlet {

    protected void doPost(HttpServletRequest req, HttpServletResponse resp)
            throws ServletException, IOException {

        String name = req.getParameter("uname");
        String password = req.getParameter("pass");

        userDAOImpl dao = new userDAOImpl();
        Users user = dao.loginUser(name, password);

        HttpSession session = req.getSession();

        if(user != null){

            session.setAttribute("us", user);
            String role = user.getRole();

            if(role.equalsIgnoreCase("CUSTOMER")){
                resp.sendRedirect(req.getContextPath()+"/customer/Dashboard.jsp");
            }
            else if(role.equalsIgnoreCase("ADMIN")){
                resp.sendRedirect(req.getContextPath()+"/admin/Dashboard.jsp");
            }
            else if(role.equalsIgnoreCase("CHEF")){
                resp.sendRedirect(req.getContextPath()+"/chef/Dashboard.jsp");
            }

        } else {

            resp.sendRedirect("Login.jsp");

        }
    }
}