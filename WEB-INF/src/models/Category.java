package models;

import javax.servlet.ServletContext;

public class Category {
    // ################### Properties #########################
    private Integer categoryId;
    private String name;

    public static ServletContext appContext;
    public static String conURL;

    // ################### Constructors #########################
    public Category() {

    }

    public Category(Integer categoryId) {
        this.categoryId = categoryId;
    }

    // ################### Getters-Setters #########################
    public int getCategoryId() {
        return categoryId;
    }

    public void setCategoryId(int categoryId) {
        this.categoryId = categoryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
