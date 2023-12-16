/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package son.data.model;

import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author LENOVO
 */
public class User {
    int id;
    String name;
    String email;
    String password;
    String role;

    public User (ResultSet rs) throws SQLException {
        this.id = rs.getInt("id");
        this.name = rs.getString("name");
        this.email = rs.getString("email");
        this.password = rs.getString("password");
        this.role = rs.getString("role");
    }

    public User(int id, String name, String email, String password, String role) {
        this.id = id;
        this.name = name;
        this.email = email;
        this.password = password;
        this.role = role;
    }

    public int getId() {
        return id;
    }

    public void setId(int id) {
        this.id = id;
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

    public String getRole() {
        return role;
    }

    public void setRole(String role) {
        this.role = role;
    }
    
}
