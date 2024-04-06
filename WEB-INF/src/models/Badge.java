package models;

public class Badge {
    // ################### Properties #########################
    private Integer badgeId;
    private String name;

    // ################### Constructors #########################
    public Badge() {

    }
    // ################### Getters-Setters #########################

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
