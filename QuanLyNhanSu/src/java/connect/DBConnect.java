
package connect;

import model.PersonalDAO;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;


public class DBConnect {
    //kết nối đến MYSQL
    public static Connection getConnectionMYSQL()
    {
        Connection conn = null;
        try
        {
            Class.forName("com.mysql.jdbc.Driver");
            conn = DriverManager.getConnection("jdbc:mysql://localhost:3306/payroll?useUnicode=true&characterEncoding=utf8", "root", "admin");
            
            
        } catch (Exception e) 
        {
            System.out.println("Loi" + e.getMessage() );
        }
        return conn;
    }
    //kết nối đến MS SQL Server
    public static Connection getConnectionSQLServer()
    {
        Connection conn = null;
        try
        {
            Class.forName("com.microsoft.sqlserver.jdbc.SQLServerDriver");
            conn = DriverManager.getConnection("jdbc:sqlserver://TIENHUY:1433;databaseName=HR","sa","sa");
        } catch (Exception e) 
        {
            System.out.println("Loi " + e.getMessage() );
        }
        return conn;
    }
            
    public static void main(String[] args) throws SQLException
    {
        System.out.println(DBConnect.getConnectionMYSQL() );
    }
}
