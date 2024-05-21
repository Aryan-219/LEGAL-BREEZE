package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class NotaryType {
    // ################### Properties #########################
    private Integer notaryTypeId;
    private String typeName;
    private Profession profession;

    // ################### Constructors #########################
    public NotaryType() {
    }

    public NotaryType(Integer notaryTypeId) {
        this.notaryTypeId = notaryTypeId;
    }

    // ################### Other Methods ########################
    public static ArrayList<NotaryType> collectAllNotaryTypes() {
        ArrayList<NotaryType> notaryTypes = new ArrayList<NotaryType>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from notary_types";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                NotaryType type = new NotaryType();
                type.setNotaryTypeId(rs.getInt("notary_type_id"));
                type.setTypeName(rs.getString("type_name"));
                type.setProfession(new Profession(rs.getInt(3)));
                notaryTypes.add(type);
            }
            con.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        return notaryTypes;
    }


    // ################### Getters-Setters ########################
    public Integer getNotaryTypeId() {
        return notaryTypeId;
    }

    public void setNotaryTypeId(Integer notaryTypeId) {
        this.notaryTypeId = notaryTypeId;
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
