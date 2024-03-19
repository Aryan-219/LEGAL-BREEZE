package models;

import java.sql.Date;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Bid {
    // ################### Properties #########################
    private Integer bidId;
    private String issue;
    private String description;
    private Integer hearings;
    private Status status;
    private Integer budget;
    private Date startDate;
    private Date deadline;
    private Integer noOfApplicants;
    private User user;

    // ################### Constructors #########################
    public Bid() {

    }

    public Bid(String issue, String description, Integer budget, Date startDate, Date deadline) {
        this.issue = issue;
        this.description = description;
        this.budget = budget;
        this.startDate = startDate;
        this.deadline = deadline;
    }

    // ################### Other Methods #########################
    public boolean saveBidDetails(Integer userId) {
        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "insert into bids (issue, description, budget, start_date,deadline, user_id) value (?, ?, ?,?, ?, ?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, issue);
            ps.setString(2, description);
            ps.setInt(3, budget);
            ps.setDate(4, startDate);
            ps.setDate(5, deadline);
            ps.setInt(6, userId);

            int result = ps.executeUpdate();
            if (result == 1) {
                flag = true;
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }

    // ################### Getters-Setters #########################
    public Integer getBidId() {
        return bidId;
    }

    public void setBidId(Integer bidId) {
        this.bidId = bidId;
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

    public Integer getBudget() {
        return budget;
    }

    public void setBudget(Integer budget) {
        this.budget = budget;
    }

    public Date getDeadline() {
        return deadline;
    }

    public void setDeadline(Date deadline) {
        this.deadline = deadline;
    }

    public Integer getNoOfApplicants() {
        return noOfApplicants;
    }

    public void setNoOfApplicants(Integer noOfApplicants) {
        this.noOfApplicants = noOfApplicants;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Integer getHearings() {
        return hearings;
    }

    public void setHearings(Integer hearings) {
        this.hearings = hearings;
    }

    public Date getStartDate() {
        return startDate;
    }

    public void setStartDate(Date startDate) {
        this.startDate = startDate;
    }

}
