package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;
import java.sql.Date;
import java.sql.ResultSet;

import java.util.ArrayList;

import javax.servlet.ServletContext;

public class Case {
    // ################### Properties #########################
    private Integer caseId;
    private String issue;
    private String description;
    private User seeker;
    private User provider;
    private Date startDate;
    private Date endDate;
    private Status status;
    private Court court;
    private Integer budget;

    public static ServletContext appContext;
    public static String conURL;

    public Integer getBudget() {
        return budget;
    }

    public void setBudget(Integer budget) {
        this.budget = budget;
    }

    // ################### Constructors #########################
    public Case() {

    }
    // ################### Getters-Setters #########################

    public User getSeeker() {
        return seeker;
    }

    public Case(String issue, String description, User seeker, User provider, Date startDate, Date endDate,
            Court court, Integer budget) {
        this.issue = issue;
        this.description = description;
        this.seeker = seeker;
        this.provider = provider;
        this.startDate = startDate;
        this.endDate = endDate;
        this.court = court;
        this.budget = budget;
    }

    public static boolean updateCaseStatus(Integer status, Integer providerId, Integer caseId) {
        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(conURL);
            String query = "update cases set status_id=? where lawyer_id=? and case_id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, status);
            ps.setInt(2, providerId);
            ps.setInt(3, caseId);
            int res = ps.executeUpdate();
            if (res == 1) {
                flag = true;
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public static ArrayList<Case> collectAllCasesProviders(Integer userId) {
        System.out.println("User id received: " + userId);
        ArrayList<Case> allCases = new ArrayList<Case>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(conURL);
            String query = "select * from cases as c inner join users as u where u.user_id=c.lawyer_id and user_id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Case c = new Case();
                c.setCaseId(rs.getInt("case_id"));
                c.setIssue(rs.getString("issue"));
                c.setDescription(rs.getString("description"));
                // c.setSeeker(rs.getInt("seeker_id"));
                // c.setProvider(rs.getInt("provider_id"));
                c.setStartDate(rs.getDate("start_date"));
                c.setEndDate(rs.getDate("end_date"));
                c.setCourt(new Court(rs.getInt("court_id")));
                c.setBudget(rs.getInt("budget"));
                c.setStatus(new Status(rs.getInt("status_id")));
                allCases.add(c);
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return allCases;
    }
    public static ArrayList<Case> collectAllCases(Integer userId) {
        System.out.println("User id received: " + userId);
        ArrayList<Case> allCases = new ArrayList<Case>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(conURL);
            String query = "select * from cases as c inner join users as u where u.user_id=c.client_id and user_id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Case c = new Case();
                c.setCaseId(rs.getInt("case_id"));
                c.setIssue(rs.getString("issue"));
                c.setDescription(rs.getString("description"));
                // c.setSeeker(rs.getInt("seeker_id"));
                // c.setProvider(rs.getInt("provider_id"));
                c.setStartDate(rs.getDate("start_date"));
                c.setEndDate(rs.getDate("end_date"));
                c.setCourt(new Court(rs.getInt("court_id")));
                c.setBudget(rs.getInt("budget"));
                c.setStatus(new Status(rs.getInt("status_id")));
                allCases.add(c);
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return allCases;
    }

    public boolean saveCaseDetails() {
        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(conURL);
            String query = "insert into cases (issue, description, client_id, lawyer_id, start_date, end_date, court_id,budget) values (?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, issue);
            ps.setString(2, description);
            ps.setInt(3, seeker.getUserId());
            ps.setInt(4, provider.getUserId());
            ps.setDate(5, startDate);
            ps.setDate(6, endDate);
            ps.setInt(7, court.getCourtId());
            ps.setInt(8, budget);

            int res = ps.executeUpdate();
            if (res == 1) {
                flag = true;
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public void setSeeker(User seeker) {
        this.seeker = seeker;
    }

    public User getProvider() {
        return provider;
    }

    public void setProvider(User provider) {
        this.provider = provider;
    }

    public Integer getCaseId() {
        return caseId;
    }

    public void setCaseId(Integer caseId) {
        this.caseId = caseId;
    }

    public String getIssue() {
        return issue;
    }

    public void setIssue(String issue) {
        this.issue = issue;
    }

    public String getDescription() {
        return description;
    }

    public void setDescription(String description) {
        this.description = description;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

    public Date getEndDate() {
        return endDate;
    }

    public void setEndDate(Date endDate) {
        this.endDate = endDate;
    }

    public Court getCourt() {
        return court;
    }

    public void setCourt(Court court) {
        this.court = court;
    }

}