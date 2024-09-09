package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.BidApplicant;
import models.User;
import models.Bid;

@WebServlet("/save_bid_application.do")
public class SaveBidApplicationServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        Integer applicantId = (Integer) user.getUserId();
        Integer bidId = Integer.parseInt(request.getParameter("bid_id"));
        Integer bidAmount = Integer.parseInt(request.getParameter("bid_amount"));

        System.out.println("Applicant id: "+ applicantId  + " bid_id: "+ bidId + " bid_amount: "+ bidAmount);
        boolean flag = BidApplicant.saveBidApplication(applicantId, bidId, bidAmount);
        if(flag){
            // increase the number of applicants in the bid
            flag = Bid.updateNumberOfApplicants(bidId);
            
            if(flag){

                response.getWriter().write("true");
            }else{

                response.getWriter().write("false");
            }
        }else{
            
            response.getWriter().write("false");
        }
    }
}
