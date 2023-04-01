package controller;

import model.PersonalDAO;
import java.io.IOException;
import java.sql.SQLException;
import java.util.logging.Level;
import java.util.logging.Logger;
import javax.servlet.RequestDispatcher;
import javax.servlet.ServletException;
import javax.servlet.annotation.WebServlet;
import javax.servlet.http.HttpServlet;
import javax.servlet.http.HttpServletRequest;
import javax.servlet.http.HttpServletResponse;
import model.Employement;
import model.Job_History;
import model.employee;


@WebServlet(name = "XuLyThemNhanVienChinhThuc", urlPatterns = {"/XuLyThemNhanVienChinhThuc"})
public class XuLyThemNhanVienChinhThuc extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        try {

            //Bảng Job_History
            String Employee_ID = request.getParameter("Employee_ID");
            int EmployeeID = Integer.parseInt(Employee_ID);

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
            // Bảng Employement
            String Hire_Date = request.getParameter("Hire_Date");
            String Termination_Date = request.getParameter("Termination_Date");
            String Rehire_Date = request.getParameter("Rehire_Date");
            String Last_Review_Date = request.getParameter("Last_Review_Date");
            //Bảng Employee Bên MYSQL
            String Pay_Rate_idPay_Rates = request.getParameter("Pay_Rate_idPay_Rates");

            Job_History j = new Job_History(EmployeeID, DePartment, division, Start_Date,
                    End_Date, Job_Title, Supervisor, Job_Category, Location, Integer.parseInt(Department_code),
                    Integer.parseInt(Salary_Type), Pay_Period, Integer.parseInt(Hours_per_Week), Integer.parseInt(Hazardous_Training));

            Employement e = new Employement(EmployeeID,"Chính Thuc",Hire_Date, Termination_Date, Rehire_Date,Last_Review_Date);

            employee ee = new employee
            (
                    EmployeeID,
                    PersonalDAO.getInfoToEmployee(EmployeeID).getLast_Name(),
                    PersonalDAO.getInfoToEmployee(EmployeeID).getFirst_Name(),
                    Integer.parseInt(PersonalDAO.getInfoToEmployee(EmployeeID).getSsn()),
                    Integer.parseInt(Pay_Rate_idPay_Rates)
            );

            if (PersonalDAO.Them_JobHistory_2_SQLSERVER(j) && PersonalDAO.upDate_Employment_2_SQLSERVER(EmployeeID, "Chính Thức", Hire_Date, Termination_Date, Rehire_Date, Last_Review_Date) && PersonalDAO.Them_Employee_2_MySQL(ee)) {
                request.setAttribute("add", "Đã Thêm Vào Hồ Sơ Nhân Viên Chính Thức");
                RequestDispatcher rd = request.getRequestDispatcher("indexAdmin.jsp");
                rd.forward(request, response);
            } else {
                response.sendRedirect("NhanVienChinhThuc.jsp");
            }

        } catch (SQLException ex) {
            System.out.println("Loi " + ex.getMessage());
        }
    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException
    {

    }

}
