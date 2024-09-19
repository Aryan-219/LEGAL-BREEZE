package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

import javax.servlet.ServletContext;

public class BidApplicant {
    // ################### Properties #########################
    private Integer bidApplicantId;
    private Bid bid;
    private User user;
    private Integer bidAmount;

    // public BidApplicant(Integer bidApplicantId, Integer bidAmount, Bid bid){
    //     this.bidApplicantId = bidApplicantId;
    //     this.bidAmount = bidAmount;
    //     this.bid = bid;
    // }

    public static ArrayList<BidApplicant> getAllApplicantsForABid(Integer bidId) {
        ArrayList<BidApplicant> applicants = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(conURL);
            String query = "select ba.bid_applicant_id, ba.applicant_id, ba.bid_amount, u.name, u.email, u.phone, u.cases_fought, u.cases_won from bid_applicants as ba inner join users as u where ba.applicant_id=u.user_id and bid_id=?";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, bidId);
            
            ResultSet rs = ps.executeQuery();
            while(rs.next()){
                BidApplicant ba = new BidApplicant(rs.getInt(1), new User(rs.getInt(2), rs.getString(4), rs.getString(5), rs.getString(6), rs.getInt(7), rs.getInt(8)), rs.getInt(3));
                applicants.add(ba);
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return applicants;
    }
    public static boolean checkHasApplied(Integer applicantId, Integer bidId){
        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(conURL);
            String query = "select * from bid_applicants where bid_id=? and applicant_id=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, bidId);
            ps.setInt(2, applicantId);
            ResultSet rs = ps.executeQuery();
            if(rs.next()){
                flag = true;
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    public static boolean saveBidApplication(Integer applicantId, Integer bidId,Integer bidAmount) {
        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(conURL);
            String query = "insert into bid_applicants (bid_id, applicant_id, bid_amount) values (?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, bidId);
            ps.setInt(2,applicantId);
            ps.setInt(3,bidAmount);
            int res = ps.executeUpdate();
            if(res==1){
                flag = true;
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            // TODO: handle exception
            e.printStackTrace();
        }
        return flag;
    }

    public Integer getBidAmount() {
        return bidAmount;
    }

    public void setBidAmount(Integer bidAmount) {
        this.bidAmount = bidAmount;
    }


    public static ServletContext appContext;
    public static String conURL;

    // ################### Constructors #########################
    public BidApplicant() {

    }

    public BidApplicant(Integer bidApplicantId, User user, Integer bidAmount) {
        this.bidApplicantId = bidApplicantId;
        this.user = user;
        this.bidAmount = bidAmount;
    }
    // ################### Getters-Setters #########################

    public Integer getBidApplicantId() {
        return bidApplicantId;
    }

    public void setBidApplicantId(Integer bidApplicantId) {
        this.bidApplicantId = bidApplicantId;
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

}
