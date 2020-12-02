package jspexample;


public class LoginBean {

    private String studentId;
    private String password;

    private String name;
    private String surname;

    private String role;


    public String getStudentId() {
        return studentId;
    }

    public void setStudentId(String studentId) {
        this.studentId = studentId;
    }

    public String getPassword() {
        return password;
    }

    public void setPassword(String password) {
        this.password = password;
    }

    public String getName() {
        return name;
    }

    public void setName(String name) {
        this.name = name;
    }

    public String getSurname() {
        return surname;
    }

    public void setSurname(String surname) {
        this.surname = surname;
    }

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }

    public boolean validate() {
        // controllo sintattico
        if (studentId == null || studentId.equals("") || password == null || password.equals("")) {
            return false;
        }

        LoginBean utenteTrovato = LoginController.getInstance().login(this);

        return utenteTrovato != null;

    }

}
