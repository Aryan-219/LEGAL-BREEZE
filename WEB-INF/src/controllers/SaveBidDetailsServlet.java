package controllers;

import java.util.Date;

import java.io.IOException;
import java.text.SimpleDateFormat;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Bid;
import models.User;

import javax.servlet.annotation.WebServlet;

@WebServlet("/save_bid_details.do")
public class SaveBidDetailsServlet extends HttpServlet {

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        String issue = request.getParameter("issue");
        String description = request.getParameter("description");
        Integer budget = Integer.parseInt(request.getParameter("budget"));
        String dl = request.getParameter("deadline");

        Date start = new Date();
        java.sql.Date sd = new java.sql.Date(start.getTime());

        Date deadline = null;
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {

            deadline = dateFormat.parse(dl);
        } catch (Exception e) {
            e.printStackTrace();
        }

        System.out.println("User ID: " + user.getUserId());
        System.out.println("Issue: " + issue);
        System.out.println("Description: " + description);
        System.out.println("budget: " + budget);
        System.out.println("sd: " + sd);
        System.out.println("deadline: " + deadline);

        java.sql.Date obj = new java.sql.Date(deadline.getTime());

        Bid bid = new Bid(issue, description, budget, sd, obj);
        boolean flag = bid.saveBidDetails(user.getUserId());
        System.out.println("Result of sql statement: " + flag);

        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
    }
}