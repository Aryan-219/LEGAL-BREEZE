package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import utils.AppUtility;

public class Provider extends User{
    // ################### Properties #########################
    Integer providerId;
    User user;
    ProviderType providerType;

     // ################### Constructors ########################
     public Provider(String name, String email, String password, String phone, State state, UserType userType, String otp) {
        super( name,  email,  password,  phone,  state,  userType,  otp); 
    }
    
    // ################### Other Methods #######################
    public boolean signUpProvider() {
        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lbdb?user=root&password=1234");
            String query = "insert into users (name,email,password,phone,state_id,user_type_id,joined_on,otp) values (?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query, Statement.RETURN_GENERATED_KEYS);
           
            ps.setString(1, getName());
            ps.setString(2, getEmail());
            ps.setString(3, getPassword());
            ps.setString(4, getPhone());
            ps.setInt(5, getState().getStateId());
            ps.setInt(6, getUserType().getUserTypeId());
            ps.setTimestamp(7, AppUtility.getTodayDateTime());
            ps.setString(8, getOtp());

            int res = ps.executeUpdate();
            if (res == 1) {
                ResultSet rs = ps.getGeneratedKeys();
                if(rs.next()) {
                    setUserId(rs.getInt(1));
                }
                flag = true;
            }
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return flag;
    }

    // //////////////////
    public boolean saveProvider(int userId, int providerTypeId){
        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lbdb?user=root&password=1234");
            String query = "insert into providers (user_id,provider_type_id) values (?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1,userId);
            ps.setInt(2,providerTypeId);
            int res = ps.executeUpdate();
            if (res == 1) {
                flag = true;
            }
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return flag;
    }
    // ################### Getter-Setters ######################
    public Integer getProviderId() {
        return providerId;
    }
    public void setProviderId(Integer providerId) {
        this.providerId = providerId;
    }
    public User getUser() {
        return user;
    }
    public void setUser(User user) {
        this.user = user;
    }
    public ProviderType getProviderType() {
        return providerType;
    }
    public void setProviderType(ProviderType providerType) {
        this.providerType = providerType;
    }
}
