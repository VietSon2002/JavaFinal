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

public class HomeServlet extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
       List<Category> listCategory= Database.getCategoryDao().findAll();
       request.setAttribute("listCategory", listCategory);
       List<Product>   listProduct  = Database.getProductDao().findAll();
       request.setAttribute("listProduct", listProduct);
       String id_category = (String)request.getParameter("id_category");
       request.setAttribute("id_category", id_category);
       request.setAttribute("title", "Home Page");
       request.getRequestDispatcher("./views/home.jsp").include(request, response);
        
    }
    }
