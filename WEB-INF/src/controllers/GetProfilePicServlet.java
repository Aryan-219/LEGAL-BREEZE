package controllers;

import java.io.IOException;
import java.io.InputStream;
import java.io.OutputStream;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import models.User;

@WebServlet("/get_profile_pic.do")
public class GetProfilePicServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        User user = (User)session.getAttribute("user");

        String email = request.getParameter("email");
        String profilePic = request.getParameter("profile_pic");
        ServletContext context = getServletContext();

        InputStream is = context.getResourceAsStream("/WEB-INF/uploads/" + email + "/profile_pics/" + profilePic);

        OutputStream os = response.getOutputStream();

        byte[] pic = new byte[256];

        while(is.read(pic) != -1) {
            os.write(pic);
        }

        os.flush();
        os.close();
    }
    
}
