package models;

public class Status {
    // ################### Properties #########################
    private Integer statusId;
    private String name;

    // ################### Constructors #########################
    public Status() {

    }

    public Status(Integer statusId) {
        this.statusId = statusId;
    }

    // ################### Getters-Setters #########################
    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
