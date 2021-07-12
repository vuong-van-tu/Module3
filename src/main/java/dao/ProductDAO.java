package dao;

import model.Product;

import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

public class ProductDAO implements DAO<Product> {
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

    private static final String SELECT_QUERY = "SELECT * FROM product";

    private static final String SELECT_PRODUCT_BY_ID = "select * from product where id = ?";

    private static final String INSERT_QUERY_2 =
            "INSERT INTO product" + "(id,`name`,price,quantity,color,description,category) VALUE" + "(?,?,?,?,?,?,?)";
    private static final String UPDATE_QUERY =
            "UPDATE product SET name=?, price=?, quantity=?, color=?, category =? WHERE `id`=? ";
    private static final String DELETE_QUERY = "DELETE FROM product WHERE `id` = ?";
    PreparedStatement ps = null;
    ResultSet rs = null;


    @Override
    public List<Product> showALl() throws SQLException, ClassNotFoundException {
        List<Product> products = new ArrayList<>();
        ps = connection.prepareStatement(SELECT_QUERY);
        rs = ps.executeQuery();
        while (rs.next()) {
            int productId = rs.getInt("id");
            String productName = rs.getString("name");
            int price = rs.getInt("price");
            int quantity = rs.getInt("quantity");
            String color = rs.getString("color");
            String description = rs.getString("description");
            int category = rs.getInt("category");
            products.add(new Product(productId, productName, price, quantity, color,description, category));
        }
        return products;
    }

    @Override
    public void insert(Product product) throws SQLException, ClassNotFoundException {
        PreparedStatement ps = connection.prepareStatement(INSERT_QUERY_2);
        ps.setString(1, product.getName());
        ps.setInt(2, product.getPrice());
        ps.setInt(3, product.getQuantity());
        ps.setString(4, product.getColor());
        ps.setInt(5, product.getCategory());
        ps.executeUpdate();
    }

    @Override
    public Product select(int id) throws SQLException, ClassNotFoundException {
        Product product = null;
        PreparedStatement ps = connection.prepareStatement(SELECT_PRODUCT_BY_ID);
        ps.setInt(1, id);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String p_id = rs.getString("id");
            String p_name = rs.getString("name");
            String p_price = rs.getString("price");
            String p_quantity = rs.getString("quantity");
            String p_color = rs.getString("color");
            String p_description = rs.getString("description");
            String p_category = rs.getString("category");

            product =
                    new Product(Integer.parseInt(p_id), p_name, Integer.parseInt(p_price), Integer.parseInt(p_quantity), p_color,p_description, Integer.parseInt(p_category));
        }
        return product;
    }

    @Override
    public boolean delete(int id) throws SQLException, ClassNotFoundException {
        boolean recordDelete;
        PreparedStatement ps = connection.prepareStatement(DELETE_QUERY);
        ps.setInt(1, id);
        recordDelete = ps.executeUpdate() > 0;
        return recordDelete;
    }

    @Override
    public boolean update(Product product) throws SQLException {
        boolean updateRecord;
        PreparedStatement ps = connection.prepareStatement(UPDATE_QUERY);
        ps.setString(1, product.getName());
        ps.setInt(2, product.getPrice());
        ps.setInt(3, product.getQuantity());
        ps.setString(4, product.getColor());
        ps.setString(5,product.getDescription());
        ps.setInt(6, product.getCategory());
        ps.executeUpdate();
        updateRecord = ps.executeUpdate() > 0;
        return updateRecord;
    }

    @Override
    public Product viewProduct(int id) throws SQLException {
        Product product = null;
        ps = connection.prepareStatement(SELECT_PRODUCT_BY_ID);
        ps.setInt(1, id);
        try {
            rs = ps.executeQuery();
        } catch (SQLException e) {
            e.printStackTrace();
        }
        while (rs.next()) {
            int productId = rs.getInt("id");
            String productName = rs.getString("name");
            int price = rs.getInt("price");
            int quantity = rs.getInt("quantity");
            String color = rs.getString("color");
            String description = rs. getString("description");
            int category = rs.getInt("category");
            product = new Product(productId, productName, price, quantity,color,description,category);
        }
        return product;
    }
    private static final String SELECT_PRODUCT_BY_NAME="select * from product where name like ?";
    @Override
    public List<Product> selectProduct(String name) throws SQLException {
        List<Product> products = new ArrayList<>();
        ps = connection.prepareStatement(SELECT_PRODUCT_BY_NAME);
        ps.setString(1, name);
        ResultSet rs = ps.executeQuery();
        while (rs.next()) {
            String p_id = rs.getString("id");
            String p_name = rs.getString("name");
            String p_price = rs.getString("price");
            String p_quantity = rs.getString("quantity");
            String p_color = rs.getString("color");
            String p_description = rs.getString("description");
            String p_category = rs.getString("category");

            products.add(new Product(Integer.parseInt(p_id), p_name, Integer.parseInt(p_price), Integer.parseInt(p_quantity), p_color,p_description, Integer.parseInt(p_category)));
        }
        return products;
    }
    private void printSQLException(SQLException ex) {
        for (Throwable e : ex) {
            if (e instanceof SQLException) {
                e.printStackTrace(System.err);
                System.err.println("SQLState: " + ((SQLException) e).getSQLState());
                System.err.println("Error Code: " + ((SQLException) e).getErrorCode());
                System.err.println("Message: " + e.getMessage());
                Throwable t = ex.getCause();
                while (t != null) {
                    System.out.println("Cause: " + t);
                    t = t.getCause();
                }
            }
        }
    }
}
