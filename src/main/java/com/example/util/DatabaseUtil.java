package main.java.com.example.util;

import java.sql.*;


public class DatabaseUtil {
    private static String jdbcURL = "jdbc:mysql://localhost:3306/shoppingdb?";
    private static String jdbcUsername = "root";
    private static String jdbcPassword = "123456";

    public static Connection getConnection() {
        Connection connection = null;
        try {
            Class.forName("com.mysql.cj.jdbc.Driver");
            connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
            System.out.println("Database connection established successfully.");
        } catch (SQLException e) {
            System.err.println("Failed to create database connection.");
            e.printStackTrace();
        } catch (ClassNotFoundException e) {
            System.err.println("Database driver class not found.");
            e.printStackTrace();
        }
        return connection;
    }
}
