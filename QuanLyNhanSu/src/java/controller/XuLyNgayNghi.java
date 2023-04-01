package controller;

import model.PersonalDAO;
import java.io.IOException;
import java.io.PrintWriter;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "XuLyNgayNghi", urlPatterns = {"/XuLyNgayNghi"})
public class XuLyNgayNghi extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        String Employee_ID = request.getParameter("Employee_ID");
        String ngaynghi = request.getParameter("ngaynghi");
        try {
            if(PersonalDAO.ngaynghi(ngaynghi, Integer.parseInt(Employee_ID) ) )
            {   
                request.setAttribute("sua", "Đã Sửa Ngày Nghỉ");
                request.getRequestDispatcher("QuanLyNghiPhep.jsp").forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(XuLyNgayNghi.class.getName()).log(Level.SEVERE, null, ex);
        }
         
    }
    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException 
    {
        
    }

}
