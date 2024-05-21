package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.annotation.WebServlet;

import models.User;

@WebServlet("/lawyers.do")
public class ShowLawyersServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        String nextURL="providers.jsp";
        ArrayList<User> lawyers = User.collectAllLawyers();
        request.setAttribute("lawyers", lawyers);
        System.out.println(lawyers);
        request.getRequestDispatcher(nextURL).forward(request, response);
    }
}