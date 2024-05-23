package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;

import models.DocwriterType;

@WebServlet("/docwriter_types.do")
public class ShowDocwriterTypesServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String nextURL = "docwriter_types.jsp";
        ArrayList<DocwriterType> docwriterTypes = DocwriterType.collectAllDocwriterTypes();

        session.setAttribute("docwriterTypes", docwriterTypes);

        request.getRequestDispatcher(nextURL).forward(request, response);
    }
}