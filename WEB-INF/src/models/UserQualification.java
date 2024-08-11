package models;

import javax.servlet.ServletContext;

public class UserQualification {
    // ################### Properties #########################
    private Integer userQualificationId;
    private User user;
    private Qualification qualification;

    public static ServletContext appContext;
    public static String conURL;

    // ################### Constructors #########################
    public UserQualification() {

    }

    // ################### Getters-Setters #########################
    public Integer getUserQualificationId() {
        return userQualificationId;
    }

    public void setUserQualificationId(Integer userQualificationId) {
        this.userQualificationId = userQualificationId;
    }

    public User getUser() {
        return user;
    }

    public void setUser(User user) {
        this.user = user;
    }

    public Qualification getQualification() {
        return qualification;
    }

    public void setQualification(Qualification qualification) {
        this.qualification = qualification;
    }

}
