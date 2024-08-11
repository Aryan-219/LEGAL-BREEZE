package models;

import javax.servlet.ServletContext;

public class Qualification {
    // ################### Properties #########################
    private Integer qualificationId;
    private String degree;

    public static ServletContext appContext;
    public static String conURL;

    // ################### Constructors #########################
    public Qualification() {

    }

    // ################### Getters-Setters #########################
    public Integer getQualificationId() {
        return qualificationId;
    }

    public void setQualificationId(Integer qualificationId) {
        this.qualificationId = qualificationId;
    }

    public String getDegree() {
        return degree;
    }

    public void setDegree(String degree) {
        this.degree = degree;
    }
}