package DataTransferObject;

public class requestDTO {

    private String firstname;
    private String lastname;
    private String email;
    public requestDTO() {
    }
    public requestDTO(String firstname, String lastname , String email) {
        this.firstname = firstname;
        this.lastname = lastname;
        this.email = email;
    }
    public String getFirstname() {
        return firstname;
    }
    public void setFirstname(String firstname) {
        this.firstname = firstname;
    }
    public String getLastname() {
        return lastname;
    }
    public void setLastname(String lastname) {
        this.lastname = lastname;
    }
    public String getEmail() {
        return email;
    }
    public void setEmail(String email) {
        this.email = email;
    }

}
