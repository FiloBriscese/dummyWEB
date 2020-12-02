package jspexample;

//import sun.rmi.runtime.Log;

public class LoginBean {

    private String studentId;
    private String password;

    private String nome;
    private String cognome;

    private String role;

    public LoginBean() {
    }

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

    public String getNome() {
        return nome;
    }

    public void setNome(String nome) {
        this.nome = nome;
    }

    public String getCognome() {
        return cognome;
    }

    public void setCognome(String cognome) {
        this.cognome = cognome;
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
