/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */
package my.common;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.SQLException;

/**
 *
 * @author ADMIN
 */
public class Database {
   
   public static Connection getConnection()
    {
        Connection conn = null;
        try {
            // 1. Nạp driver
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            // 2. Thiết lập kết nối CSDL
            conn = DriverManager.getConnection("jdbc:sqlserver://PC334;databaseName=QLTS", "sa", "sa");
            System.out.println("Kết nối thành công!");
        } catch (ClassNotFoundException e) {
            System.out.println("Lỗi nạp driver: " + e.getMessage());
            e.printStackTrace();
        } catch (SQLException e) {
            System.out.println("Lỗi kết nối CSDL: " + e.getMessage());
            e.printStackTrace();
        } catch (Exception e) {
            System.out.println("Lỗi không xác định: " + e.getMessage());
            e.printStackTrace();
        }
        return conn;
    }
   
    public static void main(String[] args) {
        Connection connection = Database.getConnection();
        if (connection != null) {
            try {
                // Đóng kết nối sau khi sử dụng
                connection.close();
                System.out.println("Đã đóng kết nối.");
            } catch (SQLException e) {
                System.out.println("Lỗi đóng kết nối: " + e.getMessage());
                e.printStackTrace();
            }
        }
    }
}


