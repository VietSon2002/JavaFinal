/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Interface.java to edit this template
 */
package son.data.dao;

import son.data.model.User;

/**
 *
 * @author LENOVO
 */
public interface UserDao {
    public User findUser(String email,String phone);
}
