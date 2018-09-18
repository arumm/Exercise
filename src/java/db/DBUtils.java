/*
 * To change this license header, choose License Headers in Project Properties.
 * To change this template file, choose Tools | Templates
 * and open the template in the editor.
 */
package db;


import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.SQLException;

/**
 *
 * @author Arum_M664
 */
public class DBUtils {
    public static PreparedStatement getPreparedStatement(String sql) throws ClassNotFoundException, SQLException{
        PreparedStatement ps = null;
        Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
        String url = "jdbc:sqlserver://localhost:1433;databasename=crud_news";
        String user = "am";
        String pass = "Ikom2004";
        
        Connection con = DriverManager.getConnection(url,user, pass);
        ps = con.prepareStatement(sql);
        //MTPC7065\SQLEXPRESS
        return ps;
    }
    //public static void main(String[] args) throws SQLException, ClassNotFoundException {
    //    getPreparedStatement("select * from news");
    //}
}
