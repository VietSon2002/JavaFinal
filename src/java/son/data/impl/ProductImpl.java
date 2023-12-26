package son.data.impl;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;
import java.util.logging.Level;
import java.util.logging.Logger;
import son.data.dao.ProductDao;
import son.data.driver.MySQLDriver;
import son.data.model.Product;

public class ProductImpl implements ProductDao {

    private final Connection con = MySQLDriver.getConnection();

    @Override
    public List<Product> findAll() {
        List<Product> listProduct = new ArrayList<>();
        String sql = "SELECT * FROM products";
        try (PreparedStatement sttm = con.prepareStatement(sql);
             ResultSet rs = sttm.executeQuery()) {
            while (rs.next()) {
                int id = rs.getInt("id");
                int id_category = rs.getInt("id_category");
                String name = rs.getString("name");
                String image = rs.getString("image");
                double price = rs.getDouble("price");
                listProduct.add(new Product(id, id_category, name, image, price));
            }
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return listProduct;
    }

    @Override
    public Product findProduct(int id_product) {
        String sql = "SELECT * FROM products WHERE id=?";
        try (PreparedStatement sttm = con.prepareStatement(sql)) {
            sttm.setInt(1, id_product);
            ResultSet rs = sttm.executeQuery();
            if (rs.next()) return new Product(rs);
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
        return null;
    }

    @Override
    public void addProduct(Product product) {
        String sql = "INSERT INTO products (id_category, name, image, price) VALUES (?, ?, ?, ?)";
        try (PreparedStatement sttm = con.prepareStatement(sql)) {
            sttm.setInt(1, product.getId_category());
            sttm.setString(2, product.getName());
            sttm.setString(3, product.getImage());
            sttm.setDouble(4, product.getPrice());
            sttm.executeUpdate();
        } catch (SQLException ex) {
            ex.printStackTrace();
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void editProduct(Product product) {
        String sql = "UPDATE products SET id_category=?, name=?, image=?, price=? WHERE id=?";
        try (PreparedStatement sttm = con.prepareStatement(sql)) {
            sttm.setInt(1, product.getId_category());
            sttm.setString(2, product.getName());
            sttm.setString(3, product.getImage());
            sttm.setDouble(4, product.getPrice());
            sttm.setInt(5, product.getId());
            sttm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }

    @Override
    public void deleteProduct(int id) {
        String sql = "DELETE FROM products WHERE id=?";
        try (PreparedStatement sttm = con.prepareStatement(sql)) {
            sttm.setInt(1, id);
            sttm.executeUpdate();
        } catch (SQLException ex) {
            Logger.getLogger(ProductImpl.class.getName()).log(Level.SEVERE, null, ex);
        }
    }
}
