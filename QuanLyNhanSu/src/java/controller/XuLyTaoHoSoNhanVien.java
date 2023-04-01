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
import model.Personal2;
import model.employee;


@WebServlet(name = "XuLyTaoHoSoNhanVien", urlPatterns = {"/XuLyTaoHoSoNhanVien"})
public class XuLyTaoHoSoNhanVien extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        try {
            response.setCharacterEncoding("UTF-8");
            request.setCharacterEncoding("UTF-8");
            String command = request.getParameter("command");
            String Employee_ID = request.getParameter("Employee_ID");

            String url = "";
            switch (command) {
                case "xoa":
                    if (PersonalDAO.xoaEmployment(Integer.parseInt(Employee_ID)) && PersonalDAO.xoaPersonal(Integer.parseInt(Employee_ID))) {
                        request.setAttribute("xoa", "Đã Xóa Nhân Viên");
                        url = "QuanLyNhanVienMoi.jsp";
                        break;
                    }
                case "sua":
                    String Marital_Status = request.getParameter("Marital_Status");
                    String Last_Name = request.getParameter("Last_Name");
                    String Ethnicity = request.getParameter("Ethnicity");
                    String First_Name = request.getParameter("First_Name");
                    String Drivers_License = request.getParameter("Drivers_License");
                    String Gender = request.getParameter("Gender");
                    int g = 0;
                    if (Gender.equals("1")) {
                        g = 1;
                    } else {
                        g = 0;
                    }
                    String SSN = request.getParameter("SSN");
                    String email = request.getParameter("email");
                    String shareholder = request.getParameter("shareholder");
                    int s = 0;
                    if (shareholder.equals("1")) {
                        s = 1;
                    } else {
                        s = 0;
                    }
                    String birthday = request.getParameter("birthday");
                    String states = request.getParameter("states");
                    String city = request.getParameter("city");
                    String zip = request.getParameter("zip");
                    String Address = request.getParameter("Address");
                    String Phone_Number = request.getParameter("Phone_Number");

                    String Hire_Date = request.getParameter("Hire_Date");
                    String Termination_Date = request.getParameter("Termination_Date");
                    if (PersonalDAO.upDate_Personal_2_SQLSERVER(Marital_Status, Last_Name, Ethnicity, First_Name,
                            Drivers_License, g, Phone_Number, email, s, birthday, states, city, Integer.parseInt(zip),
                            Address, Phone_Number, Integer.parseInt(Employee_ID))
                            && PersonalDAO.upDate_Employment_2_SQLSERVER(Hire_Date, Termination_Date,
                                    Integer.parseInt(Employee_ID))) {
                        request.setAttribute("sua", "Đã Sửa Cộng Tác Viên");
                        url = "QuanLyNhanVienMoi.jsp";
                        break;
                    }
            }
            RequestDispatcher rd = request.getRequestDispatcher(url);
            rd.forward(request, response);

        } catch (Exception ex) {
            System.out.println("Loi " + ex.getMessage());
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        response.setCharacterEncoding("UTF-8");
        request.setCharacterEncoding("UTF-8");
        try {
            response.setCharacterEncoding("UTF-8");
            request.setCharacterEncoding("UTF-8");
            String Employee_Number = request.getParameter("Employee_Number");
            String Marital_Status = request.getParameter("Marital_Status");
            String Last_Name = request.getParameter("Last_Name");
            String Ethnicity = request.getParameter("Ethnicity");
            String First_Name = request.getParameter("First_Name");
            String Drivers_License = request.getParameter("Drivers_License");
            String Gender = request.getParameter("Gender");
            int g = 0;
            if (Gender.equals("1")) {
                g = 1;
            } else {
                g = 0;
            }
            String SSN = request.getParameter("SSN");
            String email = request.getParameter("email");
            String shareholder = request.getParameter("shareholder");
            int s = 0;
            if (shareholder.equals("1")) {
                s = 1;
            } else {
                s = 0;
            }
            String birthday = request.getParameter("birthday");
            String states = request.getParameter("states");
            String city = request.getParameter("city");
            String zip = request.getParameter("zip");
            String Address = request.getParameter("Address");
            String Phone_Number = request.getParameter("Phone_Number");

            String Hire_Date = request.getParameter("Hire_Date");
            String Termination_Date = request.getParameter("Termination_Date");

            Employement e = new Employement(PersonalDAO.getID() + 1, "Cộng Tác Viên", Hire_Date, Termination_Date);

            Personal2 p = new Personal2(First_Name, Last_Name, Address, city, states, Integer.parseInt(zip), email, Phone_Number, SSN, Drivers_License, Marital_Status, g, s, 1, Ethnicity, birthday);

            if (PersonalDAO.Them_Personal_2_SQLSERVER(p) && PersonalDAO.Them_Employment_2_SQLSERVER(e)) {
                request.setAttribute("add", "Đã Thêm Hồ Sơ Cộng Tác Viên");
                RequestDispatcher rd = request.getRequestDispatcher("indexAdmin.jsp");
                rd.forward(request, response);
            } else {
                response.sendRedirect("TaoHoSoNhanVien.jsp");
            }

        } catch (Exception ex) {
            System.out.println("Loi " + ex.getMessage());
        }

    }
}
