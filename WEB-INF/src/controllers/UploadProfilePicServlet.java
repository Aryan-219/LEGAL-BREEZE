package controllers;

import java.io.File;
import java.io.IOException;
import java.util.List;

import javax.servlet.ServletContext;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;

import org.apache.commons.fileupload.FileItem;
import org.apache.commons.fileupload.FileUploadException;
import org.apache.commons.fileupload.disk.DiskFileItemFactory;
import org.apache.commons.fileupload.servlet.ServletFileUpload;

import models.User;

@WebServlet("/upload_profile_pic.do")
public class UploadProfilePicServlet extends HttpServlet {
    public void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();

        User user = (User)session.getAttribute("user");

        if(ServletFileUpload.isMultipartContent(request)) {
            ServletContext context = getServletContext();

            try {
                List<FileItem> list = new ServletFileUpload(new DiskFileItemFactory()).parseRequest(request);

                String uploadPath = context.getRealPath("/WEB-INF/uploads/" + user.getEmail() + "/profile_pics");

                for(FileItem item : list) {
                    File file = new File(uploadPath, item.getName());

                    try {
                        item.write(file);
                        user.setProfilePic(item.getName());

                        if(user.saveProfilePic()) {
                            session.setAttribute("user", user);
                        }

                    } catch(Exception e) {
                        e.printStackTrace();
                    }

                }
            } catch (FileUploadException e) {
                e.printStackTrace();
            }
        }

        request.getRequestDispatcher("profile.do").forward(request, response);
    }
}
