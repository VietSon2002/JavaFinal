/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package son.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import son.data.dao.UserDao;
import son.data.driver.MySQLDriver;
import son.data.model.User;

/**
 *
 * @author LENOVO
 */
public class UserImpl implements UserDao {
    Connection con = MySQLDriver.getConnection();
    @Override
    public User findUser(String email,String password){
        try {
            String sql;
            if(email.contains("@"))sql="select * from users where email='"+email+"' and password='"+password+"'";
            else sql="select * from users where phone='"+email+"' and password='"+password+"'";
            PreparedStatement sttm = con.prepareStatement(sql);
            ResultSet rs = sttm.executeQuery();
            if(rs.next()) return  new User(rs);
        } catch (SQLException ex) {
            Logger.getLogger(UserImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }
}