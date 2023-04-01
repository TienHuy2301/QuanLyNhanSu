package controller;

import model.UserDAO;
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
import javax.servlet.http.HttpSession;
import model.User;


@WebServlet(name = "XuLyDangNhap", urlPatterns = {"/XuLyDangNhap"})
public class XuLyDangNhap extends HttpServlet {

    @Override
    protected void doGet(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {
        HttpSession session = request.getSession();
        try {
            String Username = request.getParameter("Username");
            String Password = request.getParameter("Password");

            if (UserDAO.kiemtradangnhap(Username, Password)) {
                User u = UserDAO.getUser(Username, Password);
                if (u != null) {
                    session.setAttribute("user", u);
                    response.sendRedirect("indexAdmin.jsp");
                }

            } else {
                request.setAttribute("error", "Sai Tên Đăng Nhập Hoặc Mật Khẩu!");
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
        } catch (SQLException ex) {
            Logger.getLogger(XuLyDangNhap.class.getName()).log(Level.SEVERE, null, ex);
        }

    }

    @Override
    protected void doPost(HttpServletRequest request, HttpServletResponse response)
            throws ServletException, IOException {

        String userN = request.getParameter("userN");
        String userP = request.getParameter("userP");
        String retype = request.getParameter("retype");
        User u = new User();
        u.setUsername(userN);
        u.setPassword(userP);
        try {
            if (userP.equals(retype) && UserDAO.them_user(u)) {
                request.setAttribute("add", u);
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            } else {
                RequestDispatcher rd = request.getRequestDispatcher("index.jsp");
                rd.forward(request, response);
            }
        } catch (SQLException ex) {
            System.out.println("Loi " + ex.getMessage());
        }
    }

}
