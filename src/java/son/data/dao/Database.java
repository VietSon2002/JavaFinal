/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package son.data.dao;

import son.data.impl.CategoryImpl;
import son.data.impl.ProductImpl;
import son.data.impl.UserImpl;

/**
 *
 * @author LENOVO
 */
public class Database {
    public static CategoryDao getCategoryDao(){
        return new CategoryImpl();
        }
    public static ProductDao getProductDao(){
        return new ProductImpl();
        }

    public static UserDao getUserDao() {
        return new UserImpl();
    }
}
