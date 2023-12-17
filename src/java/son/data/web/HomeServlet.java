package son.data.web;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.List;
import son.data.dao.Database;
import son.data.model.Category;
import son.data.model.Product;
/**
 *
 * @author LENOVO
 */
public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
       List<Category> listCategory= Database.getCategoryDao().findAll();
       request.setAttribute("listCategory", listCategory);
       List<Product> listProduct= Database.getProductDao().findAll();
       request.setAttribute("listProduct", listProduct);
       request.setAttribute("title", "Trang chu");
       request.getRequestDispatcher("./views/home.jsp").include(request, response);    
        }
}
