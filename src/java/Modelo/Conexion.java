/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package Modelo;

import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;

/**
 *
 * @author ASUS
 */
public class Conexion {
     private static final String JDBC_URL = "jdbc:mysql://localhost:3306/clientes_banco?zeroDateTimeBehavior=CONVERT_TO_NULL&useSSL = false";
    private static final String JDBC_USER = "root";
    private static final String JDBC_PASSWORD = "1234";
    
    public static Connection getConnection() throws SQLException{
        System.out.println("Pasa por conexion.");
        Connection conn = DriverManager.getConnection(JDBC_URL,JDBC_USER,JDBC_PASSWORD);
        return conn;
    }
    
    public static void Close(ResultSet rs){
        try {
            rs.close();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
    }
    
    public static void Close(PreparedStatement stmt){
        try {
            stmt.close();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
    }
    
    public static void Close(Connection conn){
        try {
            conn.close();
        } catch (Exception e) {
            e.printStackTrace(System.out);
        }
    }

}
