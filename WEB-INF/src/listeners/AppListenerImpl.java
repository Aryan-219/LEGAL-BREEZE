package listeners;

import models.State;
import utils.AppUtility;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;

public class AppListenerImpl implements ServletContextListener {
    public void contextInitialized(ServletContextEvent e) {
        System.out.println("To chaliye shuru karte hai...");
        ArrayList<State> states = State.collectAllStates();

        ServletContext context = e.getServletContext();
        context.setAttribute("states", states);

        System.out.println("To dekhiye shuru hogya... ");
        AppUtility.appContext = context;
        AppUtility.fromEmail = context.getInitParameter("from_email");
        AppUtility.fromEmailPassword = context.getInitParameter("from_email_password");
    }

    public void contextDestroyed(ServletContextEvent e) {
        System.out.println("khel khatam checkmate");
    }
}
