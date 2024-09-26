package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Bid;

import javax.servlet.annotation.WebServlet;

@WebServlet("/bids.do")
public class ShowAllBidsServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        // Get all bids from the database
        HttpSession session = request.getSession();
        String nextURL = "all_bids.jsp";

        ArrayList<Bid> allBids = Bid.collectAllBids();
        session.setAttribute("allBids", allBids);

        request.getRequestDispatcher(nextURL).forward(request, response);
    }
}