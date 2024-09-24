package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;

@WebServlet("/save_link_details.do")
public class SaveLinkDetailsServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws ServletException, IOException {
        HttpSession session = request.getSession();
        User user = (User) session.getAttribute("user");

        String twitter = request.getParameter("twitter");
        String linkedin = request.getParameter("linkedin");
        String github = request.getParameter("github");

        user.setGithub(github);
        user.setTwitter(twitter);
        user.setLinkedin(linkedin);
        // Update link details
        User.updateLinkDetails(user.getUserId(), twitter, linkedin, github);

        // Dispatching to profile page
        request.getRequestDispatcher("profile.jsp").forward(request, response);
    }
}
