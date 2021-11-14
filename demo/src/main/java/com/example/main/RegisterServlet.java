package com.example.main;

import java.io.*;
import javax.print.attribute.standard.JobOriginatingUserName;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.*;
import javax.servlet.annotation.*;

@WebServlet(name = "registerServlet", value = "/register-servlet")
public class RegisterServlet extends HttpServlet {

    public void doGet(HttpServletRequest request, HttpServletResponse response) throws IOException, ServletException {
        String username = request.getParameter(Constants.USERNAME);
        String password = request.getParameter(Constants.PASSWORD);
        String firstname = request.getParameter(Constants.FIRSTNAME);
        String lastname = request.getParameter(Constants.LASTNAME);
        String profession = request.getParameter(Constants.PROFESSION);
        String repeatPassword = request.getParameter(Constants.REPEATPASSWORD);

        request.setAttribute(Constants.USERNAME, username);
        request.setAttribute(Constants.FIRSTNAME, firstname);
        request.setAttribute(Constants.LASTNAME, lastname);
        request.setAttribute(Constants.PROFESSION, profession);


        Database db = new Database();
        if (!password.equals(repeatPassword)) {

            RequestDispatcher dispatcher = request.getRequestDispatcher("passwordEqual.jsp");
            dispatcher.forward(request, response);

        }else {
            if(db.userExists(username, password)){



                RequestDispatcher dispatcher = request.getRequestDispatcher("unavailableUser.jsp");
                dispatcher.forward(request, response);
            }else {
                db.userRegister(username, password, firstname, lastname, profession);


                RequestDispatcher dispatcher = request.getRequestDispatcher("loginSuccesful.jsp");
                dispatcher.forward(request, response);
            }
        }
    }
}