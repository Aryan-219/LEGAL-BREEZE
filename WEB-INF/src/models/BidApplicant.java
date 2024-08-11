package models;

import javax.servlet.ServletContext;

public class BidApplicant {
    // ################### Properties #########################
    private Integer bidApplicantId;
    private Bid bid;
    private User user;

    public static ServletContext appContext;
    public static String conURL;

    // ################### Constructors #########################
    public BidApplicant() {

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
