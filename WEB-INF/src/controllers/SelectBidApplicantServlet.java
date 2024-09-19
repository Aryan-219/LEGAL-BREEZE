package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.HiredBidApplicant;
import models.User;

@WebServlet("/select_bid_applicant.do")
public class SelectBidApplicantServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        String nextURL = "all_applicants.do";
        int applicantId = Integer.parseInt(request.getParameter("applicant_id"));
        int bidId = Integer.parseInt(request.getParameter("bid_id"));

        boolean flag = HiredBidApplicant.saveHiredBidApplicant(applicantId, bidId, user.getUserId());
        if(flag){
            // update bid status
            flag = models.Bid.updateBidStatus(7,bidId);
            if(flag){
                nextURL = "provider_hired.jsp";
                // session.setAttribute("flag", flag);
                // request.getRequestDispatcher("provider_dashboard.do").forward(request, response);
            } 
        }
        request.getRequestDispatcher(nextURL).forward(request, response);
    }
}
