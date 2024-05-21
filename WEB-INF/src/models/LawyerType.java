package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class LawyerType {
    // ################### Properties #########################
    private Integer lawyerTypeId;
    private String typeName;
    private Profession profession;

    // ################### Constructors #########################

    public LawyerType(Integer lawyerTypeId) {
        this.lawyerTypeId = lawyerTypeId;
    }

    public LawyerType() {

    }
    // ################### Other Methods ########################
    public static ArrayList<LawyerType> collectAllLawyerTypes() {
        ArrayList<LawyerType> lawyerTypes = new ArrayList<LawyerType>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from lawyer_types";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                LawyerType type = new LawyerType();
                type.setLawyerTypeId(rs.getInt("lawyer_type_id"));
                type.setTypeName(rs.getString("type_name"));
                type.setProfession(new Profession(rs.getInt(3)));
                lawyerTypes.add(type);
            }
            con.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        return lawyerTypes;
    }

    // ################### Getters-Setters ########################

    public Integer getLawyerTypeId() {
        return lawyerTypeId;
    }

    public void setLawyerTypeId(Integer lawyerTypeId) {
        this.lawyerTypeId = lawyerTypeId;
    }

    public String getTypeName() {
        return typeName;
    }

    public void setTypeName(String typeName) {
        this.typeName = typeName;
    }

    public Profession getProfession() {
        return profession;
    }

    public void setProfession(Profession profession) {
        this.profession = profession;
    }

}
