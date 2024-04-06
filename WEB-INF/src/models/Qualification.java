package models;

public class Qualification{
    // ################### Properties #########################
    private Integer qualificationId;
    private String degree;


    // ################### Constructors #########################
    public Qualification(){

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