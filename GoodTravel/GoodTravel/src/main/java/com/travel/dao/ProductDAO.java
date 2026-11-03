package com.travel.dao;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.util.ArrayList;
import java.util.List;

import com.travel.dto.Product;
import com.travel.util.DBUtil;

public class ProductDAO {

    /**
     * 1. 전체 상품 목록 조회 (최신 등록순)
     * @throws ClassNotFoundException 
     */
    public List<Product> getAllProducts() throws ClassNotFoundException {
        List<Product> productList = new ArrayList<>();
        String sql = "SELECT product_id, title, region, price, period, description, image, reg_date "
                   + "FROM product ORDER BY product_id DESC"; // 가장 최근 우선순위 가져옴 

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                productList.add(mapRow(rs));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productList;
    }

    /**
     * 2. 최근 등록된 상품 4개 조회
     * @throws ClassNotFoundException 
     */
    public List<Product> getTopProducts() throws ClassNotFoundException {
        List<Product> productList = new ArrayList<>();
        // 최근 등록순(product_id DESC 또는 reg_date DESC)으로 상위 4개 추출
        String sql = "SELECT product_id, title, region, price, period, description, image, reg_date "
                   + "FROM product ORDER BY product_id DESC LIMIT 4";

        try (Connection conn = DBUtil.getConnection();
             PreparedStatement pstmt = conn.prepareStatement(sql);
             ResultSet rs = pstmt.executeQuery()) {

            while (rs.next()) {
                productList.add(mapRow(rs));
            }

        } catch (SQLException e) {
            e.printStackTrace();
        }

        return productList;
    }

    /**
     * ResultSet 결과 행을 Product 객체로 매핑하는 헬퍼 메서드
     */
    private Product mapRow(ResultSet rs) throws SQLException {
        Product product = new Product();
        product.setProductID(rs.getInt("product_id"));
        product.setTitle(rs.getString("title"));
        product.setRegion(rs.getString("region"));
        product.setPrice(rs.getInt("price"));
        product.setPeriod(rs.getString("period"));
        product.setDescription(rs.getString("description"));
        product.setImage(rs.getString("image"));
        product.setRegDate(rs.getDate("reg_date")); // java.sql.Date는 java.util.Date의 자식이므로 그대로 대입 가능
        return product;
    }
}




