package dao;

import model.Product;

import java.sql.SQLException;
import java.util.List;

public interface DAO<T> {
    List<T> showALl() throws SQLException, ClassNotFoundException;

    void insert(T t) throws SQLException, ClassNotFoundException;

    T select(int id) throws SQLException, ClassNotFoundException;

    boolean delete(int id) throws SQLException, ClassNotFoundException;

    boolean update(T t) throws SQLException;

    T viewProduct(int id) throws SQLException;

    List<Product> selectProduct(String name) throws SQLException;
}
