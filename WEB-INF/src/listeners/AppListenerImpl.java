package listeners;
import models.*;

// import models.Badge;
// import models.Bid;
// import models.BidApplicant;
// import models.Case;
// import models.Category;
// import models.Country;
// import models.Court;
// import models.Gender;
// import models.Profession;
// import models.Provider;
// import models.ProviderType;
// import models.Qualification;
// import models.State;
// import models.Status;
// import models.User;
// import models.UserQualification;
// import models.UserType;

import utils.AppUtility;

import java.util.ArrayList;

import javax.servlet.ServletContext;
import javax.servlet.ServletContextEvent;
import javax.servlet.ServletContextListener;
import javax.servlet.http.HttpSession;

public class AppListenerImpl implements ServletContextListener {
    public void contextInitialized(ServletContextEvent e) {
        System.out.println("---------------------------- Starting LEGAL-BREEZE --------------------------------");

        ServletContext context = e.getServletContext();
        String[] models = { "Badge", "Bid", "BidApplicant", "Case", "Category", "Country", "Court", "Gender",
                "Profession", "Provider", "ProviderType", "Qualification", "State",
                "Status", "User", "UserQualification", "UserType" };

        String host = context.getInitParameter("host");
        String unmSql = context.getInitParameter("unmSql");
        String pwdSql = context.getInitParameter("pwdSql");
        String dbName = context.getInitParameter("dbName");
        String port = context.getInitParameter("port");

        String conURL = "jdbc:mysql://" + host + ":" + port + "/" + dbName + "?user=" + unmSql + "&password=" + pwdSql;
        for (String modelClass : models) {
            try {
                Class<?> modelClassObj = Class.forName("models." + modelClass);
                java.lang.reflect.Field appContextField = modelClassObj.getField("appContext");
                java.lang.reflect.Field connectionURL = modelClassObj.getField("conURL");
                connectionURL.set(null, conURL);
                appContextField.set(null, context);
            } catch (ClassNotFoundException | NoSuchFieldException | IllegalAccessException ex) {
                ex.printStackTrace();
            }
        }
        // Badge.appContext = context;
        // Badge.conURL = conURL;

        // Bid.appContext = context;
        // Bid.conURL = conURL;

        // BidApplicant.appContext = context;
        // BidApplicant.conURL = conURL;

        // Case.appContext = context;
        // Case.conURL = conURL;

        // Category.appContext = context;
        // Category.conURL = conURL;

        // Country.appContext = context;
        // Country.conURL = conURL;

        // Court.appContext = context;
        // Court.conURL = conURL;

        // Gender.appContext = context;
        // Gender.conURL = conURL;

        // Profession.appContext = context;
        // Profession.conURL = conURL;

        // Provider.appContext = context;
        // Provider.conURL = conURL;

        // ProviderType.appContext = context;
        // ProviderType.conURL = conURL;

        // Qualification.appContext = context;
        // Qualification.conURL = conURL;

        // State.appContext = context;
        // State.conURL = conURL;

        // Status.appContext = context;
        // Status.conURL = conURL;

        // User.appContext = context;
        // User.conURL = conURL;

        // UserQualification.appContext = context;
        // UserQualification.conURL = conURL;

        // UserType.appContext = context;
        // UserType.conURL = conURL;

        AppUtility.appContext = context;
        AppUtility.fromEmail = context.getInitParameter("from_email");
        AppUtility.fromEmailPassword = context.getInitParameter("from_email_password");

        ArrayList<State> states = State.collectAllStates();
        context.setAttribute("states", states);

        ArrayList<ProviderType> providerTypes = ProviderType.collectAllProviderTypes();
        context.setAttribute("providerTypes", providerTypes);

        ArrayList<ProviderType> lawyerTypes = ProviderType.collectAllLawyerTypes();
        context.setAttribute("lawyerTypes", lawyerTypes);

        ArrayList<ProviderType> notaryTypes = ProviderType.collectAllNotaryTypes();
        context.setAttribute("notaryTypes", notaryTypes);

        ArrayList<ProviderType> docwriterTypes = ProviderType.collectAllDocwriterTypes();
        context.setAttribute("docwriterTypes", docwriterTypes);

        ArrayList<Provider> allProviders = Provider.collectAllProviders();
        context.setAttribute("allProviders", allProviders);

        ArrayList<Status> status = Status.collectAllStatus();
        context.setAttribute("status", status);

        System.out.println("---------------------------- LEGAL-BREEZE started successfully --------------------------------");

    }

    public void contextDestroyed(ServletContextEvent e) {
        System.out.println("khel khatam checkmate");
    }
}
