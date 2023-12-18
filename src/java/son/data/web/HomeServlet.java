package son.data.web;

import java.io.IOException;
import java.util.List;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import java.util.ArrayList;
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
        addProductToCart(request);
       request.setAttribute("title", "Home Page");
       request.getRequestDispatcher("./views/home.jsp").include(request, response);
    }
    void addProductToCart(HttpServletRequest request){
        int id_product;
        try {
            id_product = Integer.parseInt(request.getParameter("id_product"));
        } catch (Exception e) {
            id_product=0;
        }
        List<Product> cart =(List<Product>)request.getSession().getAttribute("cart");
        if(cart == null)cart =new ArrayList<>();
        if(id_product>0){
            Product product =Database.getProductDao().findProduct(id_product);
            boolean isProductInCart= false;
            for(Product pro : cart)
                if(pro.getId()==id_product){
                    pro.setQuantity(pro.getQuantity()+1);
                    isProductInCart=true;
                }
            if(!isProductInCart)cart.add(product);
        }
        request.getSession().setAttribute("cart", cart);
      }
}
