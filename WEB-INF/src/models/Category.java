package models;

public class Category {
    // ################### Properties #########################
    private Integer categoryId;
    private String name;


    // ################### Constructors #########################
    public Category(){
        
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
