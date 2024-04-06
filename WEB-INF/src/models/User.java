package models;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Timestamp;

import utils.AppUtility;

public class User {
    // ################### Properties #########################
    private Integer userId;
    private String name;
    private String email;
    private String password;
    private String phone;
    private String address;
    private String pin;
    private State state;
    private Gender gender;
    private UserType userType;
    private Category category;
    private Integer experience;
    private String profilePic;
    private Badge badge;
    private Timestamp joinedOn;
    private Integer casesFought;
    private Integer casesWon;
    private Integer successRatio;
    private Status status;
    private String uid;

    private String otp;

    // ################### Constructors #########################
    public User() {

    }

    public User(String name, String email, String password, String phone, State state, UserType userType, String otp) {
        this.name = name;
        this.email = email;
        this.password = password;
        this.phone = phone;
        this.state = state;
        this.userType = userType;
        this.otp = otp;
    }

    public User(String password, String email) {
        this.password = password;
        this.email = email;
    }

    // ################### Other Methods #########################
    public static boolean checkEmailExists(String email) {
        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select user_id from users where email=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                flag = true;
                System.out.println("Duplicate entry found");
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return flag;
    }
    public static int checkEmail(String email) {
        int result = 0;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost/lbdb?user=root&password=1234");
            String query = "select * from users where email=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if(rs.getInt(19)==1){
                    result = 1;
                    System.out.println("Verified Email found ");
                }else if(rs.getInt(19)==2){
                    result = 2;
                    System.out.println("Unverified Email found ");
                }
            }
            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        System.out.println(result);
        return result;
    }
    
    public static boolean checkPhoneExists(String phone) {
        boolean flag = false;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lbdb?user=root&password=1234");
            String query = "select user_id from users where phone=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, phone);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                System.out.println("Entry found");
                flag = true;
            }
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public static int verifyEmail(String email, String otp) {
        int x = -1;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lbdb?user=root&password=1234");

            String query = "update users set status_id=1,otp='' where email=? and otp=? and status_id!=1";

            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, email);
            ps.setString(2, otp);

            int res = ps.executeUpdate();
            System.out.println("Result of the update query" + res);
            if (res == 1) {
                System.out.println("email verification successful");
                System.out.println("Updating flag value to true");
                x = 1;
            } else {
                x = 0;
                System.out.println("You are already verified");
            }

            con.close();
        } catch (ClassNotFoundException | SQLException e) {
            e.printStackTrace();
        }
        return x;
    }

    public int signInUser() {
        int flag =0;
        // boolean flag = false;
        // Date date = new Date().getTime()
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lbdb?user=root&password=1234");
            String query = "select * from users where password=? and email=?";
            PreparedStatement ps = con.prepareStatement(query);
            ps.setString(1, password);
            ps.setString(2, email);
            ResultSet rs = ps.executeQuery();
            while (rs.next()) {
                if (rs.getInt(19) == 1) {
                    
                    // Update the user object with all the variables
                    userId = rs.getInt(1);
                    name = rs.getString(2);
                    email = rs.getString(3);
                    password = rs.getString(4);
                    phone = rs.getString(5);
                    // address = rs.getString(6);
                    state = new State(rs.getInt(8));
                    userType = new UserType(rs.getInt(10));
                    joinedOn = rs.getTimestamp(15);
                    // status = new Status(rs.getInt(19));

                    flag = 1;
                }else{
                    flag = 2;
                }
            }
            con.close();
        } catch (SQLException | ClassNotFoundException e) {
            e.printStackTrace();
        }
        return flag;
    }

    public boolean signUpUser() {
        boolean flag = false;
        // Date date = new Date().getTime()
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/lbdb?user=root&password=1234");
            String query = "insert into users (name,email,password,phone,state_id,user_type_id,joined_on,otp) values (?,?,?,?,?,?,?,?)";
            PreparedStatement ps = con.prepareStatement(query);
            System.out.println(name + " " + email + " " + password + " " + phone + " " + state.getStateId()
                    + userType.getUserTypeId() + " " + AppUtility.getTodayDateTime());
            ps.setString(1, name);
            ps.setString(2, email);
            ps.setString(3, password);
            ps.setString(4, phone);
            ps.setInt(5, state.getStateId());
            ps.setInt(6, userType.getUserTypeId());
            ps.setTimestamp(7, AppUtility.getTodayDateTime());
            ps.setString(8, otp);

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

    // ################### Getters-Setters #########################
    public String getOtp() {
        return otp;
    }

    public void setOtp(String otp) {
        this.otp = otp;
    }

    public Integer getUserId() {
        return userId;
    }

    public void setUserId(Integer userId) {
        this.userId = userId;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getEmail() {
        return email;
    }

    public void setEmail(String email) {
        this.email = email;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public void setPhone(String phone) {
        this.phone = phone;
    }

    public String getPhone() {
        return phone;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPin() {
        return pin;
    }

    public void setPin(String pin) {
        this.pin = pin;
    }

    public State getState() {
        return state;
    }

    public void setState(State state) {
        this.state = state;
    }

    public Gender getGender() {
        return gender;
    }

    public void setGender(Gender gender) {
        this.gender = gender;
    }

    public UserType getUserType() {
        return userType;
    }

    public void setUserType(UserType userType) {
        this.userType = userType;
    }

    public Category getCategory() {
        return category;
    }

    public void setCategory(Category category) {
        this.category = category;
    }

    public Integer getExperience() {
        return experience;
    }

    public void setExperience(Integer experience) {
        this.experience = experience;
    }

    public String getProfilePic() {
        return profilePic;
    }

    public void setProfilePic(String profilePic) {
        this.profilePic = profilePic;
    }

    public Badge getBadge() {
        return badge;
    }

    public void setBadge(Badge badge) {
        this.badge = badge;
    }

    public Timestamp getJoinedOn() {
        return joinedOn;
    }

    public void setJoinedOn(Timestamp joinedOn) {
        this.joinedOn = joinedOn;
    }

    public Integer getCasesFought() {
        return casesFought;
    }

    public void setCasesFought(Integer casesFought) {
        this.casesFought = casesFought;
    }

    public Integer getCasesWon() {
        return casesWon;
    }

    public void setCasesWon(Integer casesWon) {
        this.casesWon = casesWon;
    }

    public Integer getSuccessRatio() {
        return successRatio;
    }

    public void setSuccessRatio(Integer successRatio) {
        this.successRatio = successRatio;
    }

    public Status getStatus() {
        return status;
    }

    public void setStatus(Status status) {
        this.status = status;
    }

    public String getUid() {
        return uid;
    }

    public void setUid(String uid) {
        this.uid = uid;
    }
}
