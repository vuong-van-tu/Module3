package dao;

import model.Category;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class CategoryDAO {
    MySQLConnection mySQLConnection = new MySQLConnection();
    Connection connection;

    {
        try {
            connection = mySQLConnection.getConnection();
        } catch (ClassNotFoundException e) {
            e.printStackTrace();
        } catch (SQLException throwables) {
            throwables.printStackTrace();
        }
    }
    PreparedStatement ps = null;
    ResultSet rs = null;
    private static final String SELECT_QUERY = "SELECT * FROM category";
    public List<Category> showALl() throws SQLException, ClassNotFoundException {
        List<Category> categorys = new ArrayList<>();
        ps = connection.prepareStatement(SELECT_QUERY);
        rs = ps.executeQuery();
        while (rs.next()) {
            int id = rs.getInt("id");
            String name = rs.getString("name");
            categorys.add(new Category(id,name));
        }
        return categorys;
    }


}
