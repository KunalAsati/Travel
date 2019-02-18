package pack;


import java.sql.Connection;
import java.sql.DriverManager;

/*
 * To change this template, choose Tools | Templates
 * and open the template in the editor.
 */

/**
 *
 * @author ibn
 */
public class DbConnector {
    
    public static Connection getConnection() {
        Connection conn = null;
        String dbName = "coctail";
        String driver = "com.mysql.jdbc.Driver";

        try {
            Class.forName(driver).newInstance();
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/mysql" ,"root" ,"");
            System.out.println("Connected to the database");
    } catch (Exception e) {
            e.printStackTrace();
        }
        return conn;
    }
     public static void main(String arg[]){
        DbConnector.getConnection();
    }
}
