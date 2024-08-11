package models;

import javax.servlet.ServletContext;

public class Badge {
    // ################### Properties #########################
    private Integer badgeId;
    private String name;
    public static ServletContext appContext;
    public static String conURL;

    // ################### Constructors #########################
    public Badge() {

    }

    // ################### Getters-Setters #########################

    public Badge(Integer badgeId) {
        this.badgeId = badgeId;
    }

    public int getBadgeId() {
        return badgeId;
    }

    public void setBadgeId(int badgeId) {
        this.badgeId = badgeId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
