package controllers;

import java.io.IOException;
import java.util.ArrayList;

import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import javax.servlet.annotation.WebServlet;

import models.Provider;
import models.ProviderType;

@WebServlet("/lawyer_types.do")
public class ShowLawyerTypesServlet extends HttpServlet{
    public void doGet(HttpServletRequest request, HttpServletResponse response)throws IOException, ServletException{
        HttpSession session = request.getSession();
        String nextURL="lawyer_types.jsp";
        ArrayList<ProviderType> lawyerTypes = ProviderType.collectAllLawyerTypes();
        session.setAttribute("lawyerTypes", lawyerTypes);
        ArrayList<Provider> allLawyers = Provider.collectAllLawyers();
        session.setAttribute("allLawyers", allLawyers);
        request.getRequestDispatcher(nextURL).forward(request, response);
    }
}