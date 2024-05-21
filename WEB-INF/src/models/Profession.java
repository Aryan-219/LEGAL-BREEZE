package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class Profession {
    // ################### Properties #########################
    private Integer professionId;
    private String name;
    private UserType type;

    // ################### Constructors #########################
    public Profession() {
    }

    public Profession(Integer professionId) {
        this.professionId = professionId;
    }

        // ################### Other Methods #########################
    public static ArrayList<Profession> collectAllProfessions() {
        ArrayList<Profession> professions = new ArrayList<Profession>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from profession";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                Profession profession = new Profession();
                profession.setProfessionId(rs.getInt("profession_id"));
                profession.setName(rs.getString("name"));
                profession.setType(new UserType(rs.getInt("user_type_id")));
                professions.add(profession);
            }
            con.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        return professions;
    }
    // ################### Getters-Setters #########################
    public Integer getProfessionId() {
        return professionId;
    }

    public void setProfessionId(Integer professionId) {
        this.professionId = professionId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public UserType getType() {
        return type;
    }

    public void setType(UserType type) {
        this.type = type;
    }

}
