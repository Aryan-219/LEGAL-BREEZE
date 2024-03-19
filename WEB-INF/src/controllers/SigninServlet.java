package controllers;

import java.io.IOException;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;
import javax.servlet.ServletContext;

import utils.AppUtility;
import models.User;

@WebServlet("/signin.do")
public class SigninServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String nextURL = "signin.jsp";

        request.getRequestDispatcher(nextURL).forward(request, response);
    }

    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String responseToken = request.getParameter("g-recaptcha-response");

        // #######################################
        ServletContext context = getServletContext();

        String recaptchaURL = context.getInitParameter("recaptcha_url");
        String secretKey = context.getInitParameter("secret_key");

        boolean flag = AppUtility.checkGoogleRecaptchaResponse(recaptchaURL, responseToken, secretKey);
        // #######################################

        // System.out.println("Flag result for recaptcha"+flag);
        String nextURL = "signin.jsp";

        if (flag) {
           
            String password = request.getParameter("password");
            String email = request.getParameter("email");

            User user = new User(password, email);
            int result = user.signInUser();
            System.out.println("Flag result for sql query" + flag);
            if (result == 1) {
                session.setAttribute("user", user);
                nextURL = "dashboard.jsp";
            }else if(result == 2){
                // Please verify your email . 
                // Provide verificaion link

            }else if (result == 0){
                // Invalid email or password 
            }
        }
        request.getRequestDispatcher(nextURL).forward(request, response);
    }
}