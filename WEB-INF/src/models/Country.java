package models;

import javax.servlet.ServletContext;

public class Country {
    // ################### Properties #########################
    private Integer countryId;
    private String name;
    private String isdCode;

    public static ServletContext appContext;
    public static String conURL;

    // ################### Constructors #########################
    public Country() {

    }

    public Country(Integer countryId) {
        this.countryId = countryId;
    }

    // ################### Getters-Setters #########################
    public int getCountryId() {
        return countryId;
    }

    public void setCountryId(int countryId) {
        this.countryId = countryId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getIsdCode() {
        return isdCode;
    }

    public void setIsdCode(String isdCode) {
        this.isdCode = isdCode;
    }

}
