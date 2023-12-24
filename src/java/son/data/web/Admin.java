package son.data.web;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import son.data.dao.Database;
import son.data.model.Category;
import son.data.model.Product;

public class Admin extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        List<Category> listCategory = Database.getCategoryDao().findAll();
        request.setAttribute("listCategory", listCategory);
        List<Product> listProduct = Database.getProductDao().findAll();
        request.setAttribute("listProduct", listProduct);
        request.setAttribute("title", "Admin Page");
        request.getRequestDispatcher("./views/admin.jsp").include(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        String action = request.getParameter("action");

        switch (action) {
            case "add":
                doAddProduct(request, response);
                break;
            case "edit":
                doEditProduct(request, response);
                break;
            case "delete":
                doDeleteProduct(request, response);
                break;
        }

        response.sendRedirect("admin");
    }

    private void doAddProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_category = Integer.parseInt(request.getParameter("id_category"));
        String name = request.getParameter("name");
        String image = request.getParameter("image");
        double price = Double.parseDouble(request.getParameter("price"));

        Product product = new Product(0, id_category, name, image, price);
        Database.getProductDao().addProduct(product);
    }

    private void doEditProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_product = Integer.parseInt(request.getParameter("id_product"));
        int id_category = Integer.parseInt(request.getParameter("id_category"));
        String name = request.getParameter("name");
        String image = request.getParameter("image");
        double price = Double.parseDouble(request.getParameter("price"));

        Product product = new Product(id_product, id_category, name, image, price);
        Database.getProductDao().editProduct(product);
    }

    private void doDeleteProduct(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        int id_product = Integer.parseInt(request.getParameter("id_product"));
        Database.getProductDao().deleteProduct(id_product);
    }
}
