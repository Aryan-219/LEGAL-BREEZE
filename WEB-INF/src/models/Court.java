package models;

public class Court {


    private Integer courtId;
    private String name;


    public Court(Integer courtId) {
        this.courtId = courtId;
    }
    public Court() {
    }


    
    public Integer getCourtId() {
        return courtId;
    }
    public void setCourtId(Integer courtId) {
        this.courtId = courtId;
    }
    public String getName() {
        return name;
    }
    public void setName(String name) {
        this.name = name;
    }
    
}
