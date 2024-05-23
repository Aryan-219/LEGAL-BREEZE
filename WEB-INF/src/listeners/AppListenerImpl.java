package listeners;

import models.Provider;
import models.ProviderType;
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
        ArrayList<ProviderType> providerTypes = ProviderType.collectAllProviderTypes();

        ServletContext context = e.getServletContext();
        context.setAttribute("providerTypes", providerTypes);
        context.setAttribute("states", states);

        ArrayList<ProviderType> lawyerTypes = ProviderType.collectAllLawyerTypes();
        context.setAttribute("lawyerTypes", lawyerTypes);

        ArrayList<ProviderType> notaryTypes = ProviderType.collectAllNotaryTypes();
        context.setAttribute("notaryTypes", notaryTypes);

        ArrayList<ProviderType> docwriterTypes = ProviderType.collectAllDocwriterTypes();
        context.setAttribute("docwriterTypes", docwriterTypes);

        ArrayList<Provider> allProviders = Provider.collectAllProviders();
        context.setAttribute("allProviders", allProviders);
        
        System.out.println("To dekhiye shuru hogya... ");
        AppUtility.appContext = context;
        AppUtility.fromEmail = context.getInitParameter("from_email");
        AppUtility.fromEmailPassword = context.getInitParameter("from_email_password");
    }

    public void contextDestroyed(ServletContextEvent e) {
        System.out.println("khel khatam checkmate");
    }
}
