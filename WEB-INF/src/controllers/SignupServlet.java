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
import utils.EmailSender;
import utils.OTPGenerator;

import models.State;
import models.User;
import models.UserType;


@WebServlet("/signup.do")
public class SignupServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String nextURL = "signup.jsp";

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

        // System.out.println(flag);
        String nextURL = "signup.jsp";

        if (flag) {
            String name = request.getParameter("name");
            String password = request.getParameter("password");
            String email = request.getParameter("email");
            String phone = request.getParameter("phone");
            int stateId = Integer.parseInt(request.getParameter("state"));
            Integer userTypeId = Integer.parseInt(request.getParameter("user_type_id"));

            String otp = OTPGenerator.generateOTP();
            System.out.println("Saving otp at the db for future email verification"+otp);
            User user = new User(name, email, password, phone, new State(stateId), new UserType(userTypeId),otp);
            flag = user.signUpUser();
            if (flag) {
                // send email
                EmailSender.sendAccountVerificationEmail(email,otp);
                session.setAttribute("user", user);
                nextURL = "signup_success.jsp";
            }
        }
        request.getRequestDispatcher(nextURL).forward(request, response);
    }
}