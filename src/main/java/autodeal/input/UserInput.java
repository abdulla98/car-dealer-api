package autodeal.input;

public class UserInput {
    private String username;
    private String name;
    private String email;
    private Integer phonenumber;
    private String address;
    private String password;

    public UserInput() {

    }

    public UserInput(String username, String name, String email, Integer phonenumber, String address, String password) {

        this.username = username;
        this.name = name;
        this.email = email;
        this.phonenumber = phonenumber;
        this.address = address;
        this.password = password;
    }

    public String getUsername() {
        return username;
    }

    public void setUsername(String username) {
        this.username = username;
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

    public Integer getPhonenumber() {
        return phonenumber;
    }

    public void setPhonenumber(Integer phonenumber) {
        this.phonenumber = phonenumber;
    }

    public String getAddress() {
        return address;
    }

    public void setAddress(String address) {
        this.address = address;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }
}
