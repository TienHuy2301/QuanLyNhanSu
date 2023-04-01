package model;

import model.*;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import model.User;


public class UserDAO {

    //thêm user
    public static boolean them_user(User u) throws SQLException {
        Connection con = DBConnect.getConnectionMYSQL();
        PreparedStatement ps = con.prepareStatement("insert into users(username,password) value(?,?)");
        ps.setString(1, u.getUsername());
        ps.setString(2, u.getPassword());
//        INSERT INTO `payroll`.`users` (`User_ID`, `username`, `password`) VALUES ('3', 'admin', 'admin');
        return ps.executeUpdate() == 1;

    }

    //kiem tra dang nhap
    public static boolean kiemtradangnhap(String username, String password) throws SQLException {
        Connection con = DBConnect.getConnectionMYSQL();
        PreparedStatement ps = con.prepareStatement("select*from users where username='" + username + "' and password='" + password + "' ");
        ResultSet rs = ps.executeQuery();
        if (rs.next()) {
            return true;
        }
        return false;
    }

    //phuong thuc lay ra du lieu cua user
    public static User getUser(String username,String password) throws SQLException {

        Connection con = DBConnect.getConnectionMYSQL();
        PreparedStatement ps = con.prepareStatement("select*from users where username='" + username + "' and password='" + password + "' ");
        User u = new User();
        ResultSet rs = ps.executeQuery();
        if (rs.next()) 
        {
            u.setUsername(rs.getString("username"));
            u.setPassword(rs.getString("password"));
        }
       return u;
    }

    public static void main(String[] args) throws SQLException {

    }
}
