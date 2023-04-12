package com.example.online_shop;

import classes.DBManager;
import classes.Users;
import jakarta.servlet.*;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

import java.io.IOException;
import java.util.ArrayList;
import java.util.Objects;

@WebServlet(name = "LoginServlet", value = "/LoginServlet")
public class LoginServlet extends HttpServlet {
    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        request.getRequestDispatcher("/login.jsp").forward(request,response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        ArrayList<Users> users = DBManager.getUsers();
        if(users != null){

            String email = request.getParameter("email");
            String password = request.getParameter("password");
            for(Users users1 : users){
                if(Objects.equals(users1.getEmail(), email) && Objects.equals(users1.getPassword(), password)){
                    response.sendRedirect("/ProfileServlet");
                }
                else{
                    response.sendRedirect("/LoginServlet?error");
                }
                break;
            }
        }

    }
}
