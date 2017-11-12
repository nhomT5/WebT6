/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package DAO;

import DB.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import Model.Category;

/**
 *
 * @author HOANG
 */
public class CategoryDAO {

    // get danh sách thể loại
    public ArrayList<Category> getListCategory() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM category WHERE category_id < '3'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Category> list = new ArrayList<>();
        while (rs.next()) {
            Category category = new Category();
            category.setCategoryID(rs.getLong("category_id"));
            category.setCategoryName(rs.getString("category_name"));
            list.add(category);
        }
        return list;
    }

//    public Category getCategory(long categoryID) throws SQLException {
//        Connection connection = DBConnect.getConnection();
//        String sql = "SELECT * FROM category WHERE category_id = '" + categoryID + "'";
//        PreparedStatement ps = connection.prepareCall(sql);
//        ResultSet rs = ps.executeQuery();
//        Category category = new Category();
//        while (rs.next()) {
//            category.setCategoryID(rs.getLong("category_id"));
//            category.setCategoryName(rs.getString("category_name"));
//        }
//        return category;
//    }
    
    public ArrayList<Category> getListCategory2() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM category where category_id > '2'";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Category> list = new ArrayList<>();
        while (rs.next()) {
            Category category = new Category();
            category.setCategoryID(rs.getLong("category_id"));
            category.setCategoryName(rs.getString("category_name"));
            list.add(category);
        }
        return list;
    }
    public ArrayList<Category> getListAllCategory() throws SQLException {
        Connection connection = DBConnect.getConnection();
        String sql = "SELECT * FROM category ";
        PreparedStatement ps = connection.prepareCall(sql);
        ResultSet rs = ps.executeQuery();
        ArrayList<Category> list = new ArrayList<>();
        while (rs.next()) {
            Category category = new Category();
            category.setCategoryID(rs.getLong("category_id"));
            category.setCategoryName(rs.getString("category_name"));
            list.add(category);
        }
        return list;
    }
    
    public static void main(String[] args) throws SQLException {
        CategoryDAO DAO = new CategoryDAO();
        for (Category ds : DAO.getListCategory()) {
            System.out.println(ds.getCategoryID() + " - " + ds.getCategoryName());
        }
    }

}
