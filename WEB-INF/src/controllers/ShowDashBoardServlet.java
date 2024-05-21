package controllers;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import java.util.ArrayList;
import models.Bid;
import models.DocwriterType;
import models.LawyerType;
import models.NotaryType;
import models.User;
import models.Profession;

import java.io.IOException;

@WebServlet("/dashboard.do")
public class ShowDashBoardServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");
        ArrayList<Bid> bids = Bid.collectAllBids(user.getUserId());
        ArrayList<Profession> professions = Profession.collectAllProfessions();
        ArrayList<LawyerType> lawyerTypes = LawyerType.collectAllLawyerTypes();
        ArrayList<NotaryType> notaryTypes = NotaryType.collectAllNotaryTypes();
        ArrayList<DocwriterType> docwriterTypes = DocwriterType.collectAllDocwriterTypes();
        session.setAttribute("bids", bids);
        session.setAttribute("professions", professions);
        session.setAttribute("lawyerTypes", lawyerTypes);
        session.setAttribute("notaryTypes", notaryTypes);
        session.setAttribute("docwriters", docwriterTypes);
        request.getRequestDispatcher("dashboard.jsp").forward(request, response);
    }
    public void doPost(HttpServletRequest request, HttpServletResponse respone) throws ServletException,IOException {
        doGet(request, respone);
    }
}
