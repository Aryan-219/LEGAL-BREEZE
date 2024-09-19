package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
// import javax.servlet.http.HttpSession;

import models.BidApplicant;
// import models.User;

import javax.servlet.annotation.WebServlet;

@WebServlet("/all_applicants.do")
public class ShowAllApplicantsServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        String nextURL="all_applicants.jsp";

        // HttpSession session = request.getSession();
        // User user = (User)session.getAttribute("user");
        int bidId = Integer.parseInt(request.getParameter("bid_id"));
        ArrayList<BidApplicant> ba = BidApplicant.getAllApplicantsForABid(bidId);
        // System.out.println("anjetb ghsoidbgieb fvbnir ");
        request.setAttribute("bid_id",bidId);
        request.setAttribute("applicants", ba);
        for(BidApplicant b : ba) {
            System.out.println(b.getBidApplicantId());
            System.out.println(b.getUser().getName());
        }
        request.getRequestDispatcher(nextURL).forward(request, response);
    }
}