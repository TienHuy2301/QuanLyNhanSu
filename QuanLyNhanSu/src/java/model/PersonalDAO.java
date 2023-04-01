package model;

import model.*;
import connect.DBConnect;
import java.sql.Connection;
import java.sql.DriverManager;
import java.sql.PreparedStatement;
import java.sql.ResultSet;
import java.sql.SQLException;
import java.sql.Statement;
import java.text.ParseException;
import java.text.SimpleDateFormat;
import java.util.ArrayList;
import java.util.Date;
import model.Employement;
import model.Job_History;
import model.NhanVienChinhThuc;
import model.Personal2;
import model.Personal_Employment;
import model.employee;


public class PersonalDAO {

    //Arraylist chứa nhân viên cho hồ sơ tất cả nhân viên mới bên SQL Server
    //Đã Test
    public static ArrayList<Personal_Employment> getAllPersonal() throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("select*from Personal inner join Employment on Personal.Employee_ID = Employment.Employee_ID;  ");
        ResultSet rs = ps.executeQuery();
        ArrayList<Personal_Employment> list = new ArrayList<Personal_Employment>();
        while (rs.next()) {
            Personal_Employment p = new Personal_Employment();
            p.setEmployee_ID(rs.getInt("Employee_ID"));
            p.setFirst_Name(rs.getString("First_Name"));
            p.setLast_Name(rs.getString("Last_Name"));
            p.setEmployment_Status(rs.getString("Employment_Status"));
            p.setAddress1(rs.getString("Address1"));
            p.setCity(rs.getString("City"));
            p.setState(rs.getString("State"));
            p.setZip(rs.getInt("Zip"));
            p.setEmail(rs.getString("Email"));
            p.setPhone(rs.getString("Phone_Number"));
            p.setSsn(rs.getString("Social_Security_Number"));
            p.setDrivers_license(rs.getString("Drivers_License"));
            p.setMarital_Status(rs.getString("Marital_Status"));
            p.setGender(rs.getInt("Gender"));
            p.setShareholderStatus(rs.getInt("Shareholder_Status"));
            p.setEthnicity(rs.getString("Ethnicity"));
            p.setBirthday(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("birthday")));

            list.add(p);
        }
        return list;
    }

    //Arraylist chứa nhân viên chính
    //Đây là nội dung chính của thầy (Cơ Sở Dữ Liệu Phân Tán),lấy dữ liệu MYSQL từ MS SQL SERVER 2014
    //Hiển Thị Thông Tin Từ MYSQL: employee,Pay Rates Nhập Vào Personal,Employment,Job_History Của MS SQL SERVER 2014 
    public static ArrayList<NhanVienChinhThuc> getNhanVienChinhThuc() throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("select * from \n"
                + "openquery(MYSQL,'select*from employee,`Pay Rates` where `Pay Rates_idPay Rates`=`idPay Rates`') as A \n"
                + "inner join dbo.Personal on Personal.Employee_ID = A.idEmployee\n"
                + "inner join dbo.Job_History on Job_History.Employee_ID = A.idEmployee\n"
                + "inner join dbo.Employment on Employment.Employee_ID = A.idEmployee");

        ResultSet rs = ps.executeQuery();
        ArrayList<NhanVienChinhThuc> list = new ArrayList<NhanVienChinhThuc>();
        while (rs.next()) {
            NhanVienChinhThuc nv = new NhanVienChinhThuc();
            nv.setLast_Name(rs.getString("Last Name"));
            nv.setFirst_Name(rs.getString("First Name"));
            nv.setDepartment(rs.getString("Department"));
            nv.setEmployment_Status(rs.getString("Employment_Status"));
            nv.setHire_Date(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("Hire_Date")));
            nv.setTerminate_Date(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("Termination_Date")));
            nv.setBirthday(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("birthday")));
            nv.setPhone(rs.getString("Phone_Number"));
            nv.setEmail(rs.getString("Email"));
            nv.setAddress1(rs.getString("Address1"));
            nv.setGender(rs.getInt("Gender"));
            nv.setSalary_Type(rs.getInt("Salary_Type"));
            nv.setJob_Title(rs.getString("Job_Title"));
            nv.setSupervisor(rs.getString("Supervisor"));
            nv.setPay_Rate(rs.getString("Pay Rate"));
            nv.setPay_Rate_Name(rs.getString("Pay Rate Name"));
            nv.setValue(rs.getInt("Value"));
            nv.setTax_Percentage(rs.getInt("Tax Percentage"));
            nv.setPay_Type(rs.getInt("Pay Type"));
            nv.setPay_Amount(rs.getInt("Pay Amount"));
            nv.setPT_Level_C(rs.getInt("PT - Level C"));

            list.add(nv);
        }
        return list;
    }
        public static boolean xoaNhanVienChinhThuc(int id) throws SQLException {
            Connection con = DBConnect.getConnectionSQLServer();
            //PreparedStatement ps = con.prepareStatement("DELETE OPENQUERY (MYSQL, 'select*from employee,`Pay Rates` where `idEmployee` = '" + id + "')");
        
            PreparedStatement ps = con.prepareStatement("delete from Job_History where Employee_ID = '" + id + "' ");
            return ps.executeUpdate() == 1;
           
//            String deleteQuery = "DELETE FROM [DatabaseName].[dbo].[Users] WHERE UserName = 'UserNameToDelete'";
   
     }
    
    

    //lấy personal theo ID
    //Đã Test
    public static Personal2 getInfoToEmployee(int id) throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("select*from Personal where Employee_ID = '" + id + "' ");
        ResultSet rs = ps.executeQuery();
        Personal2 p = new Personal2();
        while (rs.next()) {
            p.setEmployee_ID(rs.getInt("Employee_ID"));
            p.setLast_Name(rs.getString("Last_Name"));
            p.setFirst_Name(rs.getString("First_Name"));
            p.setSsn(rs.getString("Social_Security_Number"));
        }
        return p;
    }

    //phương thức thêm Personal vào sqlserver
    //Đã Test
    public static boolean Them_Personal_2_SQLSERVER(Personal2 p) throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("insert into personal(First_Name,Last_Name,Address1,City,State,Zip,Email,Phone_Number,\n"
                + "Social_Security_Number,Drivers_License,Marital_Status,Gender,Shareholder_Status,Benefit_Plans,Ethnicity,birthday) values(?,?,?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setString(1, p.getFirst_Name());
        ps.setString(2, p.getLast_Name());
        ps.setString(3, p.getAddress1());
        ps.setString(4, p.getCity());
        ps.setString(5, p.getState());
        ps.setInt(6, p.getZip());
        ps.setString(7, p.getEmail());
        ps.setString(8, p.getPhone());
        ps.setString(9, p.getSsn());
        ps.setString(10, p.getDrivers_license());
        ps.setString(11, p.getMarital_Status());
        ps.setInt(12, p.getGender());
        ps.setInt(13, p.getShareholderStatus());
        ps.setInt(14, p.getBenefitplans());
        ps.setString(15, p.getEthnicity());
        ps.setString(16, p.getBirthday());
        return ps.executeUpdate() == 1;
    }

    //phương thức thêm Job History vào sqlserver
    //
    public static boolean Them_JobHistory_2_SQLSERVER(Job_History j) throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("insert into dbo.Job_History(Employee_ID,Department,Division,Start_Date,End_Date,\n"
                + "Job_Title,Supervisor,Job_Category,Location,Departmen_Code,Salary_Type,Pay_Period,Hours_per_Week,Hazardous_Training) \n"
                + "values(?,?,?,?,?,?,?,?,?,?,?,?,?,?)");
        ps.setInt(1, j.getEmployee_ID());
        ps.setString(2, j.getDepartment());
        ps.setString(3, j.getDivision());
        ps.setString(4, j.getStart_Date());
        ps.setString(5, j.getEnd_Date());
        ps.setString(6, j.getJob_Title());
        ps.setString(7, j.getSupervisor());
        ps.setString(8, j.getJob_Category());
        ps.setString(9, j.getLocation());
        ps.setInt(10, j.getDepartmen_Code());
        ps.setInt(11, j.getSalary_Type());
        ps.setString(12, j.getPay_Period());
        ps.setInt(13, j.getHours_per_Week());
        ps.setInt(14, j.getHazardous_Training());
        return ps.executeUpdate() == 1;
    }

    //lấy Id nhân viên cuối bỏ qua employements
    //Đã Test , Phải + 1 khi chạy nó
    public static int getID() throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("select*from Personal ");
        ResultSet rs = ps.executeQuery();
        int k = 0;
        while (rs.next()) {
            k = rs.getInt("Employee_ID");
        }
        return k;
    }

    //phương thức thêm vào mysql
    //Đã Test
    //Có thể dùng select*from openquery(MYSQL,insert into employee values() ) để insert into zô
    public static boolean Them_Employee_2_MySQL(employee e) throws SQLException {
        Connection con = DBConnect.getConnectionMYSQL();
        PreparedStatement ps = con.prepareStatement("insert into employee(idEmployee,`Last Name`,`First Name`,SSN,`Pay Rates_idPay Rates`) values(?,?,?,?,?) ");
        ps.setInt(1, e.getEmolyee_id());
        ps.setString(2, e.getLast_Name());
        ps.setString(3, e.getFrist_Name());
        ps.setInt(4, e.getSSN());
        ps.setInt(5, e.getPay_Rate_idPay_Rates());
        return ps.executeUpdate() == 1;
    }

    //phương thức thêm Employment vào sqlserver
    //Đã Test
    public static boolean Them_Employment_2_SQLSERVER(Employement e) throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("insert into Employment(Employee_ID,Employment_Status,Hire_Date,Termination_Date) values(?,?,?,?)");
        ps.setInt(1, e.getEmployee_ID());
        ps.setString(2, e.getEmployment_Status());
        ps.setString(3, e.getHire_Date());
        ps.setString(4, e.getTermination_Date());
        return ps.executeUpdate() == 1;
    }

    //phương thức update employment
    public static boolean upDate_Employment_2_SQLSERVER(int Employee_ID, String Employment_Status, String Hire_Date, String Termination_Date, String Rehire_Date, String Last_Review_Date) throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("update dbo.Employment set Employment_Status = '" + Employment_Status + "' , Hire_Date='" + Hire_Date + "',Termination_Date='" + Termination_Date + "',Rehire_Date='" + Rehire_Date + "',Last_Review_Date='" + Last_Review_Date + "' where Employee_ID='" + Employee_ID + "' ");

        return ps.executeUpdate() == 1;
    }

    //Phương thức update personal nhân viên mới
    //Đã Test
    public static boolean upDate_Personal_2_SQLSERVER(String Marital_Status, String Last_Name, String Ethnicity, String First_Name,
            String Drivers_License, int Gender, String Social_Security_Number, String Email, int Shareholder_Status, String birthday,
            String State, String City, int Zip, String Address1, String Phone_Number, int Employee_ID) throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("update dbo.Personal \n"
                + "set Marital_Status='" + Marital_Status + "',Last_Name='" + Last_Name + "',Ethnicity='" + Ethnicity + "',First_Name='" + First_Name + "',Drivers_License='" + Drivers_License + "',Gender='" + Gender + "',Social_Security_Number='" + Social_Security_Number + "',\n"
                + "Email='" + Email + "',Shareholder_Status='" + Shareholder_Status + "',birthday='" + birthday + "',State='" + State + "',City='" + City + "',Zip='" + Zip + "',Address1='" + Address1 + "',Phone_Number='" + Phone_Number + "'\n"
                + "where Employee_ID='" + Employee_ID + "' ");

        return ps.executeUpdate() == 1;
    }

    //Phương thức update employment nhân viên mới
    //Đã Test
    public static boolean upDate_Employment_2_SQLSERVER(String Hire_Date, String Termination_Date, int Employee_ID) throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("update dbo.Employment set Hire_Date='" + Hire_Date + "', \n "
                + "  Termination_Date='" + Termination_Date + "' where Employee_ID ='" + Employee_ID + "' ");

        return ps.executeUpdate() == 1;
    }

    //phương thức xóa Personal
    //Đã Test
    public static boolean xoaPersonal(int id) throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("delete from Personal where Employee_ID = '" + id + "' ");
        return ps.executeUpdate() == 1;
    }

    //phương thức xóa Employment từ Personal (thuộc nhân viên mới)
    public static boolean xoaEmployment(int id) throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("delete from Employment where Employee_ID = '" + id + "' ");
        return ps.executeUpdate() == 1;
    }

    //phương thức lấy dữ liệu MYSQL  từ MS SQL SERVER thông qua openquery(đã Linked Server)
    //Đã Test
    public static ArrayList<employee> getAllEmployee() throws SQLException {
        Connection con = DBConnect.getConnectionMYSQL();
        PreparedStatement ps = con.prepareStatement("select*from employee");
        ResultSet rs = ps.executeQuery();
        ArrayList<employee> list = new ArrayList<employee>();
        while (rs.next()) {
            employee e = new employee();
            e.setEmolyee_id(rs.getInt("idEmployee"));
            e.setPay_Rate(rs.getString("Pay Rate"));
            e.setLast_Name(rs.getString("Last Name"));
            e.setFrist_Name(rs.getString("First Name"));
            e.setSSN(rs.getInt("SSN"));
            e.setPay_Rate_idPay_Rates(rs.getInt("Pay Rates_idPay Rates"));
            e.setVacation_Days(rs.getInt("Vacation Days"));
            e.setPaid_To_Date(rs.getInt("Paid To Date"));
            e.setPaid_Last_Year(rs.getInt("Paid Last Year"));
            list.add(e);
        }

        return list;
    }

    public static boolean ngaynghi(String Vacation_Day, int id) throws SQLException {
        Connection con = DBConnect.getConnectionMYSQL();
        PreparedStatement ps = con.prepareStatement("update employee set `Vacation Days`='" + Vacation_Day + "' where idEmployee='" + id + "' ");
        return ps.executeUpdate() == 1;
    }
    
    //phương thức lấy nhân viên theo id đưa vào
    public static ArrayList<Personal2> getListP(int id) throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("select*from personal where Employee_ID = '" + id + "' ");
        ResultSet rs = ps.executeQuery();
        ArrayList<Personal2> list = new ArrayList<Personal2>();
        Personal2 p = new Personal2();
        while (rs.next()) 
        {   
            p.setEmployee_ID(rs.getInt("Employee_ID"));
            p.setFirst_Name(rs.getString("First_Name"));
            p.setLast_Name(rs.getString("Last_Name"));
            p.setAddress1(rs.getString("Address1"));
            p.setCity(rs.getString("City"));
            p.setState(rs.getString("State"));
            p.setZip(rs.getInt("Zip"));
            p.setEmail(rs.getString("Email"));
            p.setPhone(rs.getString("Phone_Number"));
            p.setSsn(rs.getString("Social_Security_Number"));
            p.setDrivers_license(rs.getString("Drivers_License"));
            p.setMarital_Status(rs.getString("Marital_Status"));
            p.setGender(rs.getInt("Gender"));
            p.setShareholderStatus(rs.getInt("Shareholder_Status"));
            p.setEthnicity(rs.getString("Ethnicity"));
            p.setBirthday(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("birthday")));
            list.add(p);
        }
        return list;
    }

    //phương thức lấy employment theo id đưa vào
    public static ArrayList<Employement> getListE(int id) throws SQLException {
        Connection con = DBConnect.getConnectionSQLServer();
        PreparedStatement ps = con.prepareStatement("select*from personal where Employee_ID = '"+id+"' ");
        ResultSet rs = ps.executeQuery();
        ArrayList<Employement> list = new ArrayList<Employement>();
        while (rs.next())
        {
            Employement e = new Employement();
            ps.setInt(1, e.getEmployee_ID());
            ps.setString(2, e.getEmployment_Status());
            ps.setString(3, e.getHire_Date());
            ps.setString(4, e.getTermination_Date());
            e.setEmployee_ID(rs.getInt("Employee_ID"));
            e.setEmployment_Status(rs.getString("Employment_Status"));
            e.setHire_Date(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("Hire_Date")) );
            e.setTermination_Date(new SimpleDateFormat("dd-MM-yyyy").format(rs.getDate("Termination_Date")));
        }
        return list;
    }
    
    // Test Xem Chạy Oke Ko?
    public static void main(String[] args) throws SQLException, ParseException
    {
        for(  Personal2 p: PersonalDAO.getListP ( 1 ) )
        {
            System.out.println(p.getAddress1() );
        }
            
        for(NhanVienChinhThuc nv:PersonalDAO.getNhanVienChinhThuc() )
        {
           
            String d = new SimpleDateFormat("dd-MM").format(new Date().getTime()) ;
            Date d1 = new SimpleDateFormat("dd-MM").parse(d);
            
            
            
            String s = nv.getBirthday();
            Date d2 = new SimpleDateFormat("dd-MM").parse(s);
            
            Long ngay = (d2.getTime() - d1.getTime())/(24 * 60 * 60 * 1000);
            
            
            System.out.println(ngay);
            System.out.println(nv.getBirthday() );
            if( ngay >= -7  && ngay <=0)
            {
                System.out.println("Gần Đến SN" + ngay );
            }
            
        }

        for (employee e : PersonalDAO.getAllEmployee()) {
            System.out.println(e.getLast_Name());
        }

    }
}
