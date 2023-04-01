
<%@page import="model.Employement"%>
<%@page import="model.PersonalDAO"%>
<%@page import="model.Personal2"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Sửa Hồ Sơ Nhân Viên</title>
        <script src="js/jquery.js"></script>
        <script src="js/jquery-ui-1.10.4.min.js"></script>
        <script src="js/jquery-1.8.3.min.js"></script>
        <script type="text/javascript" src="js/jquery-ui-1.9.2.custom.min.js"></script>
        <!-- bootstrap -->
        <script src="js/bootstrap.min.js"></script>
        <!-- nice scroll -->
        <script src="js/jquery.scrollTo.min.js"></script>
        <script src="js/jquery.nicescroll.js" type="text/javascript"></script>
        <!-- charts scripts -->
        <script src="assets/jquery-knob/js/jquery.knob.js"></script>
        <script src="js/jquery.sparkline.js" type="text/javascript"></script>
        <script src="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.js"></script>
        <script src="js/owl.carousel.js"></script>
        <!-- jQuery full calendar -->
        <script src="js/fullcalendar.min.js"></script>
        <!-- Full Google Calendar - Calendar -->
        <script src="assets/fullcalendar/fullcalendar/fullcalendar.js"></script>
        <!--script for this page only-->
        <script src="js/calendar-custom.js"></script>
        <script src="js/jquery.rateit.min.js"></script>
        <!-- custom select -->
        <script src="js/jquery.customSelect.min.js"></script>
        <script src="assets/chart-master/Chart.js"></script>

        <!--custome script for all page-->
        <script src="js/scripts.js"></script>
        <!-- custom script for this page-->
        <script src="js/sparkline-chart.js"></script>
        <script src="js/easy-pie-chart.js"></script>
        <script src="js/jquery-jvectormap-1.2.2.min.js"></script>
        <script src="js/jquery-jvectormap-world-mill-en.js"></script>
        <script src="js/xcharts.min.js"></script>
        <script src="js/jquery.autosize.min.js"></script>
        <script src="js/jquery.placeholder.min.js"></script>
        <script src="js/gdp-data.js"></script>
        <script src="js/morris.min.js"></script>
        <script src="js/sparklines.js"></script>
        <script src="js/charts.js"></script>
        <script src="js/jquery.slimscroll.min.js"></script>


        <!-- Bootstrap CSS -->
        <link href="cssAdmin/bootstrap.min.css" rel="stylesheet">
        <!-- bootstrap theme -->
        <link href="cssAdmin/bootstrap-theme.css" rel="stylesheet">
        <!--external css-->
        <!-- font icon -->
        <link href="cssAdmin/elegant-icons-style.css" rel="stylesheet" />
        <link href="cssAdmin/font-awesome.min.css" rel="stylesheet" />
        <!-- full calendar css-->
        <link href="assets/fullcalendar/fullcalendar/bootstrap-fullcalendar.css" rel="stylesheet" />
        <link href="assets/fullcalendar/fullcalendar/fullcalendar.css" rel="stylesheet" />
        <!-- easy pie chart-->
        <link href="assets/jquery-easy-pie-chart/jquery.easy-pie-chart.css" rel="stylesheet" type="text/css" media="screen" />
        <!-- owl carousel -->
        <link rel="stylesheet" href="cssAdmin/owl.carousel.css" type="text/css">
        <link href="cssAdmin/jquery-jvectormap-1.2.2.css" rel="stylesheet">
        <!-- Custom styles -->
        <link rel="stylesheet" href="cssAdmin/fullcalendar.css" />
        <link href="cssAdmin/widgets.css" rel="stylesheet" />
        <link href="cssAdmin/style.css" rel="stylesheet" />
        <link href="cssAdmin/style-responsive.css" rel="stylesheet" />
        <link href="cssAdmin/xcharts.min.css" rel=" stylesheet" />
        <link href="cssAdmin/jquery-ui-1.10.4.min.css" rel="stylesheet" />
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"  />
        <style>
            #bang {
                font-family: "Trebuchet MS", Arial, Helvetica, sans-serif;
                border-collapse: collapse;
                width: 100%;
            }

            #bang td, #customers th {
                border: 1px solid #ddd;
                padding: 8px;
            }

            #bang trtd:nth-child(even){background-color: #f2f2f2;}

            #bang tr:hover {background-color: #ddd;}

            #bang th
            {   
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: rgba(0, 0, 0, 0.34);
                color:  white;
            }
            .blue-bg
            {
                background: none;
                background-color: none;
            }
            .brown-bg
            {
                background: none;
                background-color: none;
            }
            .dark-bg
            {
                background: none;
                background-color: none;
            }
            .green-bg
            {
                background: none;
                background-color: none;
            }
            .fa-pen-nib
            {
                opacity: 0.7;
                margin-left: 415px;
                margin-bottom: 20px;
                background-color: rgba(0, 0, 0, 0.34);
                color: white;
                font-size: 30px;
                cursor: pointer;
                margin-top: 6px;
            }
            #Searchhhh
            {
                opacity: 0.7;
                margin-left: 178px;
                background-color: rgba(0, 0, 0, 0.34);
                color: white;
                font-size:17px;
                cursor: pointer;
            }
            select
            {
                opacity: 0.7;
                margin-left: 178px;
                background-color: rgba(0, 0, 0, 0.34);
                color: white;
                font-size:17px;
                padding-left: 17px;
                margin-top: 5px;
                transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
                font-family: 'Oxygen', sans-serif;
                border: 2px solid #e4e9ec;
                border-radius: 4px;
                padding: 9px;
                width: 311px;
                margin-top: 17px;
                transition: all 0.3s linear;
                border: 2px solid #1a80d6;
                font-family: 'Oxygen', sans-serif;
                color: #898989;
            }
            input[type=text],input[type=email],input[type=submit],input[type=number],input[type=date]
            {
                opacity: 0.7;
                margin-left: 178px;
                background-color: rgba(0, 0, 0, 0.34);
                color: white;
                font-size:17px;
                padding-left: 17px;
                margin-top: 5px;
                transition: border-color ease-in-out .15s, box-shadow ease-in-out .15s;
                font-family: 'Oxygen', sans-serif;
                border: 2px solid #e4e9ec;
                border-radius: 4px;
                padding: 9px;
                width: 311px;
                margin-top: 17px;
                transition: all 0.3s linear;
                border: 2px solid #1a80d6;
                font-family: 'Oxygen', sans-serif;
                color: #898989;
                position: relative;
            }
            input[type=text]:focus,input[type=email]:focus,input[type=submit]:focus,input[type=number]:focus,input[type=date]:focus
            {
                box-shadow: 0 1px 4px -1px #a8a8a8 inset, 0 1px rgba(255, 255, 255, 0.6), 0 0 11px rgba(70, 100, 200, 0.7);
                border-color: #059;
                width:350px;
            }
            label
            {
                opacity: 0.4;
                margin-left: 415px;
                margin-bottom: 20px;
                background-color: rgba(0, 0, 0, 0);
                color: white;
                font-size: 20px;
                margin-top: 6px;
                position: absolute;
                position: absolute;
                line-height: 64px;
                margin-left: -189px;
            }
        </style>
    </head>
    <body style="background: url(images/hinhnen.jpg) fixed;font-size: 14px !important;">
        <section id="container" class="">
            <%
                if (session.getAttribute("user") == null) {
                    response.sendRedirect("404.jsp");
                }
            %>
            <jsp:include page="header.jsp"></jsp:include>
            <jsp:include page="menu.jsp"></jsp:include>
                <!--main content start-->
                <section id="main-content" style="padding-top: 39px;">
                    <section class="wrapper">
                        <!--overview start-->
                        <div class="row">
                            <div class="col-lg-12">
                                <h3 class="page-header"><i class="fa fa-laptop"></i>Sửa Hồ Sơ Employee</h3>
                                <ol class="breadcrumb" style="background-color: rgba(0, 0, 0, 0.34);">
                                    <li><i class="fa fa-home"></i><a href="indexAdmin.jsp">Home</a></li>
                                    <li><i class="fa fa-laptop"></i>Hồ Sơ Nhân Viên</li>
                                </ol>
                            </div>
                        </div>
                    </section>
                    <div>
                        <a href=""><i class="fas fa-pen-nib">Sửa Thông Tin Nhân Viên</i></a>

                    </div>
                    <div class="clearfix"></div>
                    <form action="XuLyTaoHoSoNhanVien" method="GET">
                    <%
                        response.setCharacterEncoding("UTF-8");
                        request.setCharacterEncoding("UTF-8");
                    %>
                    <%
                        for (Personal2 p : PersonalDAO.getListP(Integer.parseInt(request.getParameter("Employee_ID")))) {
                    %>

                    <div>
                        <div>
                            <span>
                                <input style="margin-left: 417px;" value="<%=p.getMarital_Status()%> " type="text" name="Marital_Status" placeholder="TT Hôn Nhân" required /></span>
                        </div>
                        <div>
                            <span><input type="text" name="Last_Name" value="<%=p.getLast_Name()%>" placeholder="Họ" required />
                                <input type="text" name="Ethnicity" value="<%=p.getEthnicity()%>" placeholder="Dân Tộc" required /></span>
                        </div>
                        <div>
                            <span><input type="text" name="First_Name" value="<%=p.getFirst_Name()%>" placeholder="Tên Lót+Tên" required />
                                <input type="text" name="Drivers_License" value="<%=p.getDrivers_license()%>" placeholder="Giấy Phép Lấy Xe" required /></span>
                        </div>
                        <div>
                            <span>
                                <span style="margin-left: 178px;">
                                    <select style="font-size: 17px;" name="Gender">
                                        <option value="1">Nam</option>
                                        <option value="0">Nữ</option>
                                    </select>
                                </span>
                                <input type="text" name="SSN" value="<%=p.getSsn()%>" placeholder="Số An Sinh Xã Hội" required /></span>
                        </div>
                        <div>
                            <span><input type="email" value="<%=p.getEmail()%>" name="email" placeholder="Email" required />
                                <span style="margin-left: 178px;" >
                                    <select style="font-size: 17px;" name="shareholder">
                                        <option >Thuộc Cổ Đông Công Ty?</option>
                                        <option value="1">Có</option>
                                        <option value="0">Không</option>
                                    </select>
                                </span>
                            </span>
                        </div>
                        <div>
                            <span><input type="date" name="birthday" required />
                                <label>Ngày Sinh</label>
                                <input type="text" name="states" value="<%=p.getState()%>" placeholder="Huyện/Quận" required /></span>
                        </div>
                        <div>
                            <span><input type="text" name="city" value="<%=p.getCity()%>" placeholder="Tỉnh/Thành Phố" required />
                                <input type="number" name="zip" value="<%=p.getZip()%>" placeholder="Zipcode" required /></span>
                        </div>
                        <div>
                            <span><input type="text" name="Address" value="<%=p.getAddress1()%>" placeholder="Địa Chỉ Thường Trú" required />
                                <input type="text" name="Phone_Number" value="<%=p.getPhone()%>" placeholder="Số Điện Thoại" required /></span>
                        </div>
                        <!--Bảng Employment-->
                        <div>
                            <span><input type="date" name="Hire_Date"  required />
                                <label>Ngày Cộng Tác</label>
                                <input type="date" name="Termination_Date"  required /></span>
                            <label>Ngày Kết Thúc</label>
                        </div>
                        <div>
                            <input style="margin-left: 417px;" type="submit" value="Sửa Lại" />
                            <input type="hidden" name="Employee_ID" value="<%=request.getParameter("Employee_ID")%>" >
                            <input type="hidden" name="command" value="sua">
                        </div>
                    </div>
                    <%}%>
                </form>
            </section>
        </section>
    </body>
</html>
