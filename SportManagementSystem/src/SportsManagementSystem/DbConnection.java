/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package SportsManagementSystem;

import com.mysql.cj.jdbc.MysqlDataSource;
import java.sql.Connection;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;

public class DbConnection {
    
    private static String servername = "localhost";
    private static Integer portnumber = 3306;
    private static String username = "root";
    private static String password = "";
    private static String dbname = "SportsManagementSystem";
    
    
    public static Connection getConnection(){
        Connection conn = null;
        
        MysqlDataSource datasource = new MysqlDataSource();
        datasource.setServerName(servername);
        datasource.setUser(username);
        datasource.setDatabaseName(dbname);
        datasource.setPortNumber(portnumber);
        
        try {
            conn = datasource.getConnection();
        } catch (SQLException ex) {
            Logger.getLogger("Get connection" + DbConnection.class.getName()).log(Level.SEVERE, null, ex);
        }
        
        return conn;
    }  
}
