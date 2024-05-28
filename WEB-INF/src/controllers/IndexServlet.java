package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import models.Bid;

import javax.servlet.annotation.WebServlet;

@WebServlet("/index.do")
public class IndexServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String nextURL = "index.jsp";
        ArrayList<Bid> allBids = Bid.collectAllBids();
        session.setAttribute("allBids", allBids);
        request.getRequestDispatcher(nextURL).forward(request, response);
    }
}