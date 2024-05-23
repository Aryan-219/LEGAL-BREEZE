package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;

import models.ProviderType;

@WebServlet("/notary_types.do")
public class ShowNotaryTypesServlet extends HttpServlet {
    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        HttpSession session = request.getSession();
        String nextURL = "notary_types.jsp";
        ArrayList<ProviderType> notaryTypes = ProviderType.collectAllNotaryTypes();

        session.setAttribute("notaryTypes", notaryTypes);

        request.getRequestDispatcher(nextURL).forward(request, response);
    }
}