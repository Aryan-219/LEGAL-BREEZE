package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;

public class DocwriterType {
    // ################### Properties #########################
    private Integer docwriterTypeId;
    private String typeName;
    private Profession profession;

    // ################### Constructors #########################

    public DocwriterType(Integer docwriterTypeId) {
        this.docwriterTypeId = docwriterTypeId;
    }

    public DocwriterType() {
    }

    // ################### Other Methods ########################
    public static ArrayList<DocwriterType> collectAllDocwriterTypes() {
        ArrayList<DocwriterType> docwriterTypes = new ArrayList<DocwriterType>();
        try{
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from docwriter_types";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while(rs.next()) {
                DocwriterType type = new DocwriterType();
                type.setDocwriterTypeId(rs.getInt("docwriter_type_id"));
                type.setTypeName(rs.getString("type_name"));
                type.setProfession(new Profession(rs.getInt(3)));
                docwriterTypes.add(type);
            }
            con.close();
        }catch(ClassNotFoundException|SQLException e){
            e.printStackTrace();
        }
        return docwriterTypes;
    }
    // ################### Getters-Setters ########################
    public Integer getDocwriterTypeId() {
        return docwriterTypeId;
    }

    public void setDocwriterTypeId(Integer docwriterTypeId) {
        this.docwriterTypeId = docwriterTypeId;
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
