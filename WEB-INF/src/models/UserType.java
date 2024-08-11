package models;

import javax.servlet.ServletContext;

public class UserType {
    // ################### Properties #########################
    private Integer userTypeId;
    private String name;

    public static ServletContext appContext;
    public static String conURL;

    // ################### Constructors #########################
    public UserType() {

    }

    public UserType(Integer userTypeId) {
        this.userTypeId = userTypeId;
    }

    // ################### Getters-Setters #########################
    public int getUserTypeId() {
        return userTypeId;
    }

    public void setUserTypeId(int userTypeId) {
        this.userTypeId = userTypeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
