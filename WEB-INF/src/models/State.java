package models;

import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Connection;

import java.util.ArrayList;

public class State {
    // ################### Properties #########################
    private Integer stateId;
    private String name;
    private Country country;

    // ################### Constructors #########################
    public State() {

    }

    public State(Integer stateId){
        this.stateId = stateId;
    }

    public State(Integer stateId, String name, Country country) {
        this.stateId = stateId;
        this.name = name;
        this.country = country;
    }

    // ################### Other Methods #########################
    public static ArrayList<State> collectAllStates() {
        ArrayList<State> states = new ArrayList<>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lbdb?user=root&password=1234");
            String query = "select * from states";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                states.add(new State(rs.getInt(1), rs.getString(2), new Country(rs.getInt(3))));
            }
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return states;
    }

    // ################### Getters-Setters #########################
    public int getStateId() {
        return stateId;
    }

    public void setStateId(int stateId) {
        this.stateId = stateId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public void setCountry(Country country) {
        this.country = country;
    }

    public Country geCountry() {
        return country;
    }
}
