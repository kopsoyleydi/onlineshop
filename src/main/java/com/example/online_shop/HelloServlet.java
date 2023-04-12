package com.example.online_shop;

import java.io.*;
import java.util.ArrayList;

import classes.DBManager;
import classes.Items;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.*;
import jakarta.servlet.annotation.*;

@WebServlet(name = "helloServlet", value = "/main")
public class HelloServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        ArrayList<Items> items = DBManager.getItems();
        request.setAttribute("items", items);
        request.getRequestDispatcher("/main.jsp").forward(request,response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException{

    }
}