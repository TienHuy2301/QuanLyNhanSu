
<%@page import="model.NhanVienChinhThuc"%>
<%@page import="model.Personal2"%>
<%@page import="model.PersonalDAO"%>
<%--<%@page import="dao.PersonalDAO"%>--%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Hồ Sơ Nhân Viên</title>
        <!-- javascripts -->
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
        <script src="https://cdnjs.cloudflare.com/ajax/libs/limonte-sweetalert2/6.11.4/sweetalert2.all.js" ></script>

        <!-- Bootstrap CSS -->
        <link href='bootstrap/css/bootstrap.min.css' rel='stylesheet' type='text/css'>
        <script src="https://ajax.googleapis.com/ajax/libs/jquery/3.3.1/jquery.min.js"></script> 
        <script type="text/javascript" src="js/bootbox.min.js"></script>


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

            #bang tr:hover {background-color: rgba(0,0,0,0.5);}

            #bang th
            {   
                padding-top: 12px;
                padding-bottom: 12px;
                text-align: left;
                background-color: rgba(0, 0, 0, 0.34);
                color:  white;
                border-right: 1px solid white;
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
            .fa-chalkboard-teacher
            {
                opacity: 0.7;
                margin-left: 415px;
                margin-bottom: 20px;
                background-color: rgba(0, 0, 0, 0);
                color: white;
                font-size: 30px;
                margin-top: 6px;
            }
            #Searchhhh
            {
                opacity: 0.7;
                margin-left: 178px;
                background-color: rgba(0, 0, 0, 0);
                color: white;
                font-size:17px;
                cursor: pointer;
            }
            .far , .fas 
            {
                color: white;
                transition: 0.7s ease;
            }
            .far:hover , .fas:hover
            {

                border-color: #00c6d7;
                box-shadow: 0 10px 6px -6px #777;
                color: #00c6d7;
            }
            .dlg-container
            {
                position:absolute;
                left:50%;
                top:30%;
                transform: translateX(-50%) translateY(-50%);
                width:400px;
                background:#fff;
                padding:10px;
                border:2px solid #ddd;
                box-shadow:1px 1px 5px 1px #ccc;
                border-radius:10px;
                opacity:1;
                transition:all 0.3 linear 0s;
                z-index: 2;
                display:none;
                background: rgba(0,0,0,0.2);
            }
            .dlg-container:hover
            {
                border:1px solid #00a0df;

            }

            .dlg-header
            {
                padding: 10px;
                font-weight: bold;
                background: rgba(0,0,0,0.5);
                color: #f6f7f8;
                border: 1px solid white;
                border-radius: 10px;

            }
            .dlg-body
            {
                padding:10px;
                line-height:30px;
                color: white;
            }
            .dlg-footer
            {
                text-align:center;
                padding : 3px 0;
            }
            .dlg-footer a
            {
                display:inline-block;
                width:100px;
                padding:5px 0;
                border-radius:10px;
                background: rgba(0,0,0,0.3);
                cursor : pointer;
                border: 1px solid;
                color: white;
                transition: 0.9s ease;
            }
            .dlg-footer a:active
            {
                box-shadow: inset 2px 2px 4px 0 #ccc;
                color:#666;
            }
            .freeze-layer
            {
                position: fixed;
                top: 0;
                left:0;
                width:100%;
                height:100%;
                background:rgba(0,0,0,0.9);
                z-index:1;
            }
            


        </style>
        
        <script>
            $(document).ready(function ()
            {
                $("#xoa").click(function ()
                {
                    $("#dialogCont").show();
                    $("#freezeLayer").show();
                });
                $("#khongxoa").click(function ()
                {
                    $("#dialogCont").hide();
                    $("#freezeLayer").hide();
                });
            });
        </script>
    </head>
    <body>
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
                                <h3 class="page-header"><i class="fa fa-laptop"></i>Hồ Sơ Nhân Viên</h3>
                                <ol class="breadcrumb" style="background-color: rgba(0, 0, 0, 0);">
                                    <li><i class="fa fa-home"></i><a href="indexAdmin.jsp">Home</a></li>
                                    <li><i class="fa fa-laptop"></i>Hồ Sơ Nhân Viên</li>
                                </ol>
                            </div>
                        </div>
                    </section>  
                    <div>
                        <i style="opacity: 0.7;line-height: 51px;margin-left: 327px;" class="fas fa-chalkboard-teacher">Quản Lý Nhân Viên Chính Thức</i>
                        <span id="Searchhhh"><a href=""><i style="opacity:0.7;line-height: 51px;margin-left: 13px;" class="fas fa-search"></i></a><input  style="color:white;opacity:0.7;width:257px;border-radius:14px;background-color: rgba(0, 0, 0, 0);position: absolute;padding-left: 16px;margin-top: 23px;" type="text" placeholder="Tìm Kiếm Theo Tên" /></span>
                    </div>
                    <div class="clearfix"></div>
                    <div>
                        <table id="bang">
                            <tr>
                                <!--Pha Trộn 3 Bảng Personal,Employment,Job_History  -->
                                <th>STT</th>
                                <th>Họ Và Tên</th>
                                <th>Bộ Phận</th>
                                <th>Loại Nhân Viên</th>
                                <th>Hire_Date</th>
                                <th>Terminate_Date</th>
                                <th>Ngày Sinh</th>
                                <th>Điện Thoại</th>
                                <th>Email</th>
                                <th>Địa Chỉ</th>
                                <th>Giới Tính</th>
                                <th>Salary_Type</th>
                                <th>Job_Title</th>
                                <th>Supervisor</th>
                                <!-- Bảng Employee Thuộc MYSQL-->
                                <th>Pay Rate</th>
                                <!--Bảng Pay Rates Thuộc MYSQL -->
                                <th>Pay Rate Name</th>
                                <th>Value</th>
                                <th>Tax Percentage</th>
                                <th>Pay Type</th>
                                <th>Pay Amount</th>
                                <th>PT_Level C</th>
                                <!--Công Cụ-->
                                <th>Công Cụ</th>
                            </tr>
                        <%
                            int count = 0;
                            for (NhanVienChinhThuc nv : PersonalDAO.getNhanVienChinhThuc()) {
                                count++;
                        %>
                        <tr>
                            <td><%=count%></td>
                            <td><%=nv.getLast_Name() + nv.getFirst_Name()%></td>
                            <td><%=nv.getDepartment()%></td>
                            <td><%=nv.getEmployment_Status()%></td>
                            <td><%=nv.getHire_Date()%></td>
                            <td><%=nv.getTerminate_Date()%></td>
                            <td><%=nv.getBirthday()%></td>
                            <td><%=nv.getPhone()%></td>
                            <td><%=nv.getEmail()%></td>
                            <td><%=nv.getAddress1()%></td>

                            <%
                                if (nv.getGender() == 1) {
                            %>
                            <td>Nam</td>
                            <%} else {%>
                            <td>Nữ</td>
                            <%}%>

                            <td><%=nv.getSalary_Type()%></td>
                            <td><%=nv.getSupervisor()%></td>
                            <td><%=nv.getJob_Title()%></td>
                            <td><%=nv.getPay_Rate()%></td>
                            <td><%=nv.getPay_Rate_Name()%></td>
                            <td><%=nv.getValue()%></td>
                            <td><%=nv.getTax_Percentage()%></td>
                            <td><%=nv.getPay_Type()%></td>
                            <td><%=nv.getPay_Amount()%></td>
                            <td><%=nv.getPT_Level_C()%></td>
                            
                            
                           
                            <td>
                                    <!--<span style="font-size: 18px;" id="xoa"><a href="XuLyThemNhanVienChinhThuc?command=xoa&Employee_ID=<%=nv.getEmployee_ID()%>"><i class="fas fa-wrench" style="text-align: center;border: 1px solid white;border-radius: 5px;margin-right: 53px;">Xóa</i></a></span>-->
                                <span style="font-size: 17px;" ><a id="xoa" onclick=""><i class="fas fa-user-slash" style="border: 1px solid white;border-radius: 5px;cursor: pointer;text-align: center;">Xóa</i></a></span>
                                <div id="freezeLayer" class="freeze-layer" style="display:none;"></div>
                                <div id="dialogCont" class="dlg-container">
                                    <div class="dlg-header"><i class="fas fa-exclamation-triangle">Xác Nhận Xóa Cộng Tác Viên?</i></div>
                                    <div id="dlgBody" class="dlg-body">Bạn Có Tiếp Tục Xóa ,<strong style="color:red;"><%=nv.getLast_Name() + nv.getFirst_Name()%></strong>?</div>
                                    <div class="dlg-footer">
                                        <a href="XuLyThemNhanVienChinhThuc?command=xoa&Employee_ID=<%=nv.getEmployee_ID()%>" style="margin-left: 4px;" ><i class="fas fa-user-times" style="margin-left:2px;">Xóa</i></a>
                                        <a style="margin-left: 56px;" id="khongxoa" ><i class="fas fa-times-circle">Không</i></a>
                                    </div>
                                </div>
                            </td>
                        </tr>
                        <%
                            }
                        %>
                    </table>
                </div>

            </section>
        </section>
    </body>
</body>
</html>
