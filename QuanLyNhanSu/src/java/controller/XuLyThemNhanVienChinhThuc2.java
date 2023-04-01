package controller;

import java.io.IOException;
import java.io.PrintWriter;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;


@WebServlet(name = "XuLyThemNhanVienChinhThuc2", urlPatterns = {"/XuLyThemNhanVienChinhThuc2"})
public class XuLyThemNhanVienChinhThuc2 extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        request.setCharacterEncoding("utf-8");
        response.setCharacterEncoding("utf-8");
        //Bảng Job_History
        String Employee_ID = request.getParameter("Employee_ID");
        String  a = "2";
        int d = Integer.parseInt(a);
        
        String DePartment = request.getParameter("DePartment");
        String division = request.getParameter("division");
        String Start_Date = request.getParameter("Start_Date");
        String End_Date = request.getParameter("End_Date");
        String Job_Title = request.getParameter("Job_Title");
        String Supervisor = request.getParameter("Supervisor");
        String Location = request.getParameter("Location");
        String Department_code = request.getParameter("Department_code");
        String Salary_Type = request.getParameter("Salary_Type");
        String Pay_Period = request.getParameter("Pay_Period");
        String Job_Category = request.getParameter("Job_Category");
        String Hours_per_Week = request.getParameter("Hours_per_Week");
        String Hazardous_Training = request.getParameter("Hazardous_Training");

        response.sendRedirect("NhanVienChinhThuc.jsp");
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

    }

}
