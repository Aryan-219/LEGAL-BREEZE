package controllers;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Case;
import models.User;

import javax.servlet.annotation.WebServlet;

import java.io.IOException;

@WebServlet("/reject_case.do")
public class RejectCaseServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        Integer caseId = Integer.parseInt(request.getParameter("case_id"));
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        boolean flag = Case.updateCaseStatus(8,user.getUserId(), caseId);
        if(flag){
            session.setAttribute("flag",flag);
            request.getRequestDispatcher("provider_dashboard.do").forward(request, response);
        }else{
            request.getRequestDispatcher("provider_dashboard.do").forward(request, response);
            session.setAttribute("flag",flag);
        }
    }
}
