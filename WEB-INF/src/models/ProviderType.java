package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class ProviderType {
    // ################### Properties #########################
    private Integer providerTypeId;
    private String typeName;
    private Profession profession;

    // ################### Constructors ########################
    public ProviderType() {
    }
    public ProviderType(Integer providerTypeId) {
        this.providerTypeId = providerTypeId;
    }

    // ################### Other Methods ########################
    public static ArrayList<ProviderType> collectAllProviderTypes() {
        ArrayList<ProviderType> types = new ArrayList<ProviderType>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from provider_types";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                ProviderType type = new ProviderType();
                type.setProviderTypeId(rs.getInt(1));
                type.setTypeName(rs.getString(2));
                type.setProfession(new Profession(rs.getInt(3)));
                types.add(type);
            }
            con.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        return types;
    }
    

    public static ArrayList<ProviderType> collectAllLawyerTypes() {
        ArrayList<ProviderType> lawyerTypes = new ArrayList<ProviderType>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from provider_types where profession_id=1";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                ProviderType type = new ProviderType();
                type.setProviderTypeId(rs.getInt(1));
                type.setTypeName(rs.getString(2));
                type.setProfession(new Profession(rs.getInt(3)));
                lawyerTypes.add(type);
            }
            con.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        return lawyerTypes;
    }
    public static ArrayList<ProviderType> collectAllNotaryTypes() {
        ArrayList<ProviderType> notaryTypes = new ArrayList<ProviderType>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from provider_types where profession_id=2";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                ProviderType type = new ProviderType();
                type.setProviderTypeId(rs.getInt(1));
                type.setTypeName(rs.getString(2));
                type.setProfession(new Profession(rs.getInt(3)));
                notaryTypes.add(type);
            }
            con.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        return notaryTypes;
    }
    public static ArrayList<ProviderType> collectAllDocwriterTypes() {
        ArrayList<ProviderType> docwriterTypes = new ArrayList<ProviderType>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from provider_types where profession_id=3";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                ProviderType type = new ProviderType();
                type.setProviderTypeId(rs.getInt(1));
                type.setTypeName(rs.getString(2));
                type.setProfession(new Profession(rs.getInt(3)));
                docwriterTypes.add(type);
            }
            con.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        return docwriterTypes;
    }

    // ################## Getters-Setters#######################
    public Integer getProviderTypeId() {
        return providerTypeId;
    }
    public void setProviderTypeId(Integer providerTypeId) {
        this.providerTypeId = providerTypeId;
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
