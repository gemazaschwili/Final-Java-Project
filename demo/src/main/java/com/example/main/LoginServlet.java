package com.example.main;

import java.io.*;
import javax.print.attribute.standard.JobOriginatingUserName;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "loginServlet", value = "/login-servlet")
public class LoginServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter(Constants.USERNAME);
        String password = request.getParameter(Constants.PASSWORD);
        String firstname = request.getParameter(Constants.FIRSTNAME);
        String lastname = request.getParameter(Constants.LASTNAME);
        String profession = request.getParameter(Constants.PROFESSION);

        Database db = new Database();
        if(db.userExists(username, password)){
            request.setAttribute(Constants.USERNAME, username);
            request.setAttribute(Constants.FIRSTNAME, firstname);
            request.setAttribute(Constants.LASTNAME, lastname);
            request.setAttribute(Constants.PROFESSION, profession);
            RequestDispatcher dispatcher = request.getRequestDispatcher("userPage.jsp");
            dispatcher.forward(request, response);
        }else{
            request.setAttribute(Constants.USERNAME, username);
            RequestDispatcher dispatcher = request.getRequestDispatcher("incorrectLogin.jsp");
            dispatcher.forward(request, response);

        }

    }

}