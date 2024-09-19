package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Bid;
import models.Case;
import models.User;

import java.io.IOException;
import java.util.ArrayList;

@WebServlet("/provider_dashboard.do")
public class ShowProviderDashboardServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        ArrayList<Bid> openBids = Bid.collectAllBids(3);
        session.setAttribute("allBids", openBids);
        

        ArrayList<Bid> appliedBids = Bid.getAppliedBidsByAUser(user.getUserId());
        session.setAttribute("appliedBids", appliedBids);
        
        ArrayList<Case> cases = Case.collectAllCases(user.getUserId());
        session.setAttribute("cases", cases);
        request.getRequestDispatcher("provider_dashboard.jsp").forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        doGet(request, response);
    }
}
