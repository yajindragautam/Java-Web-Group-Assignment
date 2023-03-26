package org.controller;

import org.dao.UserDao;
import org.dao.daoImpl.UserDaoImpl;
import org.database.Database;
import org.model.User;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import javax.servlet.http.HttpSession;
import java.io.IOException;

@WebServlet(name = "UserFormController", urlPatterns = {"/login"})
public class UserFormController extends HttpServlet {
    private final UserDao userDao = new UserDaoImpl();

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        RequestDispatcher requestDispatcher = request.getRequestDispatcher("index.jsp");
        requestDispatcher.forward(request, response);
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter("username").trim();
        String password = request.getParameter("password").trim();

        User user = new User();
        user.setUsername(username);
        user.setPassword(password);

        HttpSession session= request.getSession();
        User userData = (userDao.checkUser(user));

        if(username.length() == 0 && password.length() == 0) {
            request.setAttribute("error-msg" , "Please enter credentials");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        } else if(username.length() ==0) {
            request.setAttribute("error-msg" , "Please enter username");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        } else if(password.length() ==0) {
            request.setAttribute("error-msg" , "Please enter password");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        } else if(userData != null){
            session.setAttribute("userData", userData);
            response.sendRedirect("/Login_Application/dashboard");
        } else {
            request.setAttribute("error-msg" , "Sorry, you are not registered.");
            request.getRequestDispatcher("index.jsp").forward(request,response);
        }
    }
}
