package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

import java.util.ArrayList;

import javax.servlet.ServletContext;

public class Status {
    // ################### Properties #########################
    private Integer statusId;
    private String name;

    public static ServletContext appContext;
    public static String conURL;

    // ################### Constructors #########################
    public Status() {

    }

    public Status(Integer statusId) {
        this.statusId = statusId;
    }

    // ################### Getters-Setters #########################
    public static ArrayList<Status> collectAllStatus() {
        ArrayList<Status> statusList = new ArrayList<Status>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection(conURL);
            String query = "select * from status";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Status status = new Status();
                status.setStatusId(rs.getInt(1));
                status.setName(rs.getString(2));
                statusList.add(status);
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return statusList;
    }

    // ################### Getters-Setters #########################
    public int getStatusId() {
        return statusId;
    }

    public void setStatusId(int statusId) {
        this.statusId = statusId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }
}
