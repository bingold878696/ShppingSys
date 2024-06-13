

import main.java.com.example.model.User;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

public class Main {
    public static void main(String[] args) {
        String jdbcURL = "jdbc:mysql://localhost:3306/shoppingdb";
        String jdbcUsername = "root";
        String jdbcPassword = "123456";

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
        String INSERT_USERS_SQL = "INSERT INTO users ( username, password, email) VALUES ( ?, ?, ?);";
        User user = new User("username", "password", "email");

        try (
                PreparedStatement preparedStatement = connection.prepareStatement(INSERT_USERS_SQL)) {
            if (connection != null) {
               // preparedStatement.setInt(1, 1);
                preparedStatement.setString(1, "5435");
                preparedStatement.setString(2, "312414");
                preparedStatement.setString(3, "54542@qq.com");

                preparedStatement.executeUpdate();
                System.out.println("User registered successfully.");
            } else {
                System.err.println("Failed to make database connection.");
            }
        } catch (SQLException e) {
            System.err.println("SQL exception occurred while registering user.");
            e.printStackTrace();
        }
    }
}
