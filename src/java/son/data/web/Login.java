/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/JSP_Servlet/Servlet.java to edit this template
 */
package son.data.web;

import java.io.IOException;
import java.io.PrintWriter;
import jakarta.servlet.ServletException;
import jakarta.servlet.http.HttpServlet;
import jakarta.servlet.http.HttpServletRequest;
import jakarta.servlet.http.HttpServletResponse;
import son.data.dao.Database;
import son.data.model.User;

/**
 *
 * @author LENOVO
 */
public class Login extends HttpServlet {
           @Override
           protected void doGet(HttpServletRequest request, HttpServletResponse response)
                   throws ServletException, IOException{
               request.setAttribute("title", "Login Page");
                 request.getRequestDispatcher("./views/login.jsp").include(request,response);
           }
           @Override
       protected void doPost(HttpServletRequest request, HttpServletResponse response)
                   throws ServletException, IOException{
               String email= request.getParameter("email");
               String password= request.getParameter("password");
               User user= Database.getUserDao().findUser(email, password);
               if(user==null){
                   request.getSession().setAttribute( "error_login", "You information is incorrect!");
                   response.sendRedirect("login");
               }else 
                     if(user.getRole().equals("admin")) response.sendRedirect("admin");
                     else{
                            request.getSession().setAttribute( "user", user);
                            request.getSession().removeAttribute("error_login");
                            response.sendRedirect("home");
                     }
              }
}