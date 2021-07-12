package dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

public class MySQLConnection {
    private String jdbcURL = "jdbc:mysql://localhost:3306/testmodule3?useSSL=false";
    private String jdbcUsername = "root";
    private String jdbcPassword = "123456";
    public Connection getConnection() throws ClassNotFoundException, SQLException {
        Connection connection = null;
        Class.forName("com.mysql.jdbc.Driver");
        connection = DriverManager.getConnection(jdbcURL, jdbcUsername, jdbcPassword);
        return connection;
    }
}
