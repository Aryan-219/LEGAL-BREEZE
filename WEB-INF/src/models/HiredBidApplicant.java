package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

import javax.servlet.ServletContext;

public class HiredBidApplicant {
    // Properties...
    public static ServletContext appContext;
    public static String conURL;

    private Integer hiredBidApplicantId;
    private Bid bid;
    private User user;
    Status status;

    // Other Methods...
    public static boolean saveHiredBidApplicant(int applicantId, int bidId) {
        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(conURL);
            String query = "insert into hired_bid_applicants (bid_id, applicant_id) values (?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, bidId);
            ps.setInt(2, applicantId);
            int res = ps.executeUpdate();
            if (res == 1) {
                flag = true;
            }
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return flag;
    }

    // Constructors...
    public HiredBidApplicant() {
    }

    public HiredBidApplicant(Bid bid, User user, Status status) {
        this.bid = bid;
        this.user = user;
        this.status = status;

    }

    // getters and setters...
    public Integer getHiredBidApplicantId() {
        return hiredBidApplicantId;
    }

    public void setHiredBidApplicantId(Integer hiredBidApplicantId) {
        this.hiredBidApplicantId = hiredBidApplicantId;
    }

    public Bid getBid() {
        return bid;
    }

    public void setBid(Bid bid) {
        this.bid = bid;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

}
