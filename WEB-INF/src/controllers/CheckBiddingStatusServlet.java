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

@WebServlet("/check_has_applied.do")
public class CheckBiddingStatusServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException{
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        Integer bidId = Integer.parseInt(request.getParameter("bid_id"));
        Integer applicantId = (Integer) user.getUserId();
        boolean hasApplied = BidApplicant.checkHasApplied(applicantId, bidId);
        if(hasApplied){
            response.getWriter().write("true");
        }else{
            response.getWriter().write("false");
        }
    }
}
