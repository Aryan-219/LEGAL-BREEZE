package models;

import javax.servlet.ServletContext;

public class Gender {
    // ################### Properties #########################
    private Integer genderId;
    private String name;

    public static ServletContext appContext;
    public static String conURL;

    // ################### Constructors #########################
    public Gender() {

    }

    public Gender(Integer genderId) {
        this.genderId = genderId;
    }

    // ################### Getters-Setters #########################
    public int getGenderId() {
        return genderId;
    }

    public void setGenderId(int genderId) {
        this.genderId = genderId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
