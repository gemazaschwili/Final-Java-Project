package com.example.main;

import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.*;
class Database {
    public static void main(String args[]) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/main", "root", "Gemaza123_");

            Statement stmt = con.createStatement();
            ResultSet rs = stmt.executeQuery("select * from users");
            while (rs.next())
                System.out.println(rs.getString(1) + "  " + rs.getString(2) + "  " + rs.getString(3) + "  " + rs.getString(4) + "  " + rs.getString(5));
        } catch (Exception e) {
            System.out.println(e);
        }
    }

    public static boolean userExists(String username, String password) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/main", "root", "Gemaza123_");

            PreparedStatement stmt = con.prepareStatement("select * from users where username = ? and userpassword = ?");
            stmt.setString(1, username);
            stmt.setString(2, password);
            ResultSet rs = stmt.executeQuery();
            if (rs.next())
                return true;
        } catch (Exception e) {
            System.out.println(e);
        }
        return false;
    }

    public static void userRegister(String username, String password, String firstname, String lastname, String profession) {
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            Connection con = DriverManager.getConnection("jdbc:mysql://localhost:3306/main", "root", "Gemaza123_");

            PreparedStatement stmt = con.prepareStatement("insert into users (username,userpassword,firstname,lastname,profession)\n" +
                                                                "values (?,?,?,?,?)");
            stmt.setString(1, username);
            stmt.setString(2, password);
            stmt.setString(3, firstname);
            stmt.setString(4, lastname);
            stmt.setString(5, profession);

            stmt.execute();

        } catch (Exception e) {
            System.out.println(e);
        }
    }
    }


