package son.data.dao;

import java.util.List;
import son.data.model.Product;

public interface ProductDao {
    List<Product> findAll();
    Product findProduct(int id_product);
    void addProduct(Product product);
    void editProduct(Product product);
    void deleteProduct(int id);
}