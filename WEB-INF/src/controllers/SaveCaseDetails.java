package controllers;

import java.io.IOException;
import java.text.SimpleDateFormat;
import java.util.Date;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.Case;
import models.Court;
import models.Provider;
import models.User;

@WebServlet("/save_case.do")
public class SaveCaseDetails extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        String issue = request.getParameter("issue");
        String description = request.getParameter("description");
        Integer budget = Integer.parseInt(request.getParameter("budget"));
        Integer court = Integer.parseInt(request.getParameter("court"));
        Integer lawyerId = Integer.parseInt(request.getParameter("provider_id"));

        Date start = new Date();
        java.sql.Date startdate = new java.sql.Date(start.getTime());

        String dl = request.getParameter("deadline");
        Date deadline = null;
        SimpleDateFormat dateFormat = new SimpleDateFormat("yyyy-MM-dd");
        try {
            deadline = dateFormat.parse(dl);
        } catch (Exception e) {
            e.printStackTrace();
        }
        java.sql.Date obj = new java.sql.Date(deadline.getTime());

        Case c = new Case(issue, description, user, new User(lawyerId), startdate, obj, new Court(court), budget);
        boolean flag = c.saveCaseDetails();
        if (flag) {
            Provider p = new Provider();
            flag=p.updateStatus(lawyerId);
            // flag=p.updateUserStatus(lawyerId,7);
            if(flag){
                System.out.println("Result of sql statement: " + flag);
                response.sendRedirect("provider_hired.jsp");
            }
        } else {
            request.getRequestDispatcher("lawyer_types.do").forward(request, response);
        }
    }
}