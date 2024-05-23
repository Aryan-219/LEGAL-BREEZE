package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;

import utils.AppUtility;
import java.util.ArrayList;

public class Provider extends User {
    // ################### Properties #########################
    Integer providerId;
    User user;
    ProviderType providerType;

    // ################### Constructors ########################
    public Provider(String name, String email, String password, String phone, State state, UserType userType,
            String otp) {
        super(name, email, password, phone, state, userType, otp);
    }

    public Provider() {

    }

    // ################### Other Methods #######################
    public static ArrayList<Provider> collectAllProviders() {
        ArrayList<Provider> providers = new ArrayList<Provider>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from providers as p inner join users as u where u.user_type_id=2;";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Provider provider = new Provider();
                provider.setProviderId(1);
                provider.setProviderType(new ProviderType(3));
                provider.setUserId(rs.getInt(4));
                provider.setName(rs.getString(5));
                provider.setEmail(rs.getString(6));
                provider.setPassword(rs.getString(7));
                provider.setPhone(rs.getString(8));
                provider.setAddress(rs.getString(9));
                provider.setPin(rs.getString(10));
                provider.setState(new State(rs.getInt(11)));
                provider.setGender(new Gender(rs.getInt(12)));
                provider.setUserType(new UserType(rs.getInt(13)));
                provider.setCategory(new Category(rs.getInt(14)));
                provider.setExperience(rs.getInt(15));
                provider.setProfilePic(rs.getString(16));
                provider.setBadge(new Badge(rs.getInt(17)));
                provider.setJoinedOn(rs.getTimestamp(18));
                provider.setCasesFought(rs.getInt(19));
                provider.setCasesWon(rs.getInt(20));
                provider.setSuccessRatio(21);
                provider.setStatus(new Status(22));
                provider.setUid(rs.getString(23));
                providers.add(provider);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return providers;
    }

    public static ArrayList<Provider> collectAllLawyers() {
        ArrayList<Provider> providers = new ArrayList<Provider>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from providers as p inner join users as u where u.user_id=p.user_id and p.provider_type_id<25 and p.provider_type_id>0;";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Provider provider = new Provider();
                provider.setProviderId(rs.getInt(1));
                provider.setProviderType(new ProviderType(rs.getInt("provider_type_id")));
                provider.setUserId(rs.getInt(4));
                provider.setName(rs.getString(5));
                provider.setEmail(rs.getString(6));
                provider.setPassword(rs.getString(7));
                provider.setPhone(rs.getString(8));
                provider.setAddress(rs.getString(9));
                provider.setPin(rs.getString(10));
                provider.setState(new State(rs.getInt(11)));
                provider.setGender(new Gender(rs.getInt(12)));
                provider.setUserType(new UserType(rs.getInt(13)));
                provider.setCategory(new Category(rs.getInt(14)));
                provider.setExperience(rs.getInt(15));
                provider.setProfilePic(rs.getString(16));
                provider.setBadge(new Badge(rs.getInt(17)));
                provider.setJoinedOn(rs.getTimestamp(18));
                provider.setCasesFought(rs.getInt(19));
                provider.setCasesWon(rs.getInt(20));
                provider.setSuccessRatio(21);
                provider.setStatus(new Status(22));
                provider.setUid(rs.getString(23));
                providers.add(provider);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return providers;
    }
    public static ArrayList<Provider> collectAllNotaries() {
        ArrayList<Provider> providers = new ArrayList<Provider>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from providers as p inner join users as u where u.user_id=p.user_id and p.provider_type_id<30 and p.provider_type_id>24;";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Provider provider = new Provider();
                provider.setProviderId(rs.getInt("provider_id"));
                provider.setProviderType(new ProviderType(rs.getInt("provider_type_id")));
                provider.setUserId(rs.getInt(4));
                provider.setName(rs.getString(5));
                provider.setEmail(rs.getString(6));
                provider.setPassword(rs.getString(7));
                provider.setPhone(rs.getString(8));
                provider.setAddress(rs.getString(9));
                provider.setPin(rs.getString(10));
                provider.setState(new State(rs.getInt(11)));
                provider.setGender(new Gender(rs.getInt(12)));
                provider.setUserType(new UserType(rs.getInt(13)));
                provider.setCategory(new Category(rs.getInt(14)));
                provider.setExperience(rs.getInt(15));
                provider.setProfilePic(rs.getString(16));
                provider.setBadge(new Badge(rs.getInt(17)));
                provider.setJoinedOn(rs.getTimestamp(18));
                provider.setCasesFought(rs.getInt(19));
                provider.setCasesWon(rs.getInt(20));
                provider.setSuccessRatio(21);
                provider.setStatus(new Status(22));
                provider.setUid(rs.getString(23));
                providers.add(provider);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return providers;
    }
    public static ArrayList<Provider> collectAllDocwriters() {
        ArrayList<Provider> providers = new ArrayList<Provider>();
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from providers as p inner join users as u where u.user_id=p.user_id and p.provider_type_id>29;";
            PreparedStatement ps = con.prepareStatement(query);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                Provider provider = new Provider();
                provider.setProviderId(rs.getInt("provider_id"));
                provider.setProviderType(new ProviderType(rs.getInt("provider_type_id")));
                provider.setUserId(rs.getInt(4));
                provider.setName(rs.getString(5));
                provider.setEmail(rs.getString(6));
                provider.setPassword(rs.getString(7));
                provider.setPhone(rs.getString(8));
                provider.setAddress(rs.getString(9));
                provider.setPin(rs.getString(10));
                provider.setState(new State(rs.getInt(11)));
                provider.setGender(new Gender(rs.getInt(12)));
                provider.setUserType(new UserType(rs.getInt(13)));
                provider.setCategory(new Category(rs.getInt(14)));
                provider.setExperience(rs.getInt(15));
                provider.setProfilePic(rs.getString(16));
                provider.setBadge(new Badge(rs.getInt(17)));
                provider.setJoinedOn(rs.getTimestamp(18));
                provider.setCasesFought(rs.getInt(19));
                provider.setCasesWon(rs.getInt(20));
                provider.setSuccessRatio(21);
                provider.setStatus(new Status(22));
                provider.setUid(rs.getString(23));
                providers.add(provider);
            }
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return providers;
    }

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
                if (rs.next()) {
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
    public boolean saveProvider(int userId, int providerTypeId) {
        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lbdb?user=root&password=1234");
            String query = "insert into providers (user_id,provider_type_id) values (?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setInt(1, userId);
            ps.setInt(2, providerTypeId);
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
