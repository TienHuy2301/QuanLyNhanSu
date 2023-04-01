
<%@page import="java.text.SimpleDateFormat"%>
<%@page import="java.util.Date"%>
<%@page import="model.NhanVienChinhThuc"%>
<%@page import="model.Personal_Employment"%>
<%@page import="model.Personal2"%>
<%@page import="model.PersonalDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Content</title>
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
        <<script src="js/fullcalendar.min.js"></script>
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
        <link rel="stylesheet" href="cssAdmin/fullcalendar.css">
        <link href="cssAdmin/widgets.css" rel="stylesheet">
        <link href="cssAdmin/style.css" rel="stylesheet">
        <link href="cssAdmin/style-responsive.css" rel="stylesheet" />
        <link href="cssAdmin/xcharts.min.css" rel=" stylesheet">
        <link href="cssAdmin/jquery-ui-1.10.4.min.css" rel="stylesheet">
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css" />
        <style>
            .blue-bg
            {
                background: none;
                background-color: none;
                transition: color 0.25s;
            }

            .brown-bg
            {
                background: none;
                background-color: none;
                transition: color 0.25s;
            }
            .dark-bg
            {
                background: none;
                background-color: none;
                transition: color 0.25s;
            }
            .green-bg
            {
                background: none;
                background-color: none;
                transition: color 0.25s;
            }
            #bang1:hover , #bang2:hover, #bang3:hover, #bang4:hover, #bang5:hover, #bang6:hover, #bang7:hover, #bang8:hover
            {
                border : 1px solid #00c6d7;
                box-shadow: 0 10px 6px -6px #777;
                color: #00c6d7;
            }
            i:hover
            {
                color :#00c6d7;
            }
        </style>

    </head>
    <body>
        <%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <!--main content start-->
        <section id="main-content" style="padding-top: 17px;">
            <section class="wrapper">
                <!--overview start-->
                <div class="row">
                    <div class="col-lg-12">
                        <h3 class="page-header"><i class="fa fa-laptop"></i> Dashboard</h3>
                        <div style="margin-left:423px;font-size:22px;margin-top:-31px;">
                            <%
                                String add = (String) request.getAttribute("add");
                                if (add != null) {
                            %>
                            <span style="color:white;"><%out.print(add); %></span>
                                <%
                                    }
                                %>
                        </div>
                        <ol class="breadcrumb" style="background-color: rgba(0, 0, 0, 0.34);">
                            <li><i class="fa fa-home"></i><a href="index.html">Home</a></li>
                            <li><i class="fa fa-laptop"></i>Dashboard</li>
                        </ol>
                    </div>
                </div>

                <div class="row">
                    <a href="QuanLyNhanVienMoi.jsp">
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                            <div id="bang1" class="info-box dark-bg">
                                <i class="fas fa-address-book"></i>
                                <%
                                    int count = 0;
                                    for (Personal_Employment p : PersonalDAO.getAllPersonal()) {
                                        if (p.getEmployment_Status().equals("Cộng Tác Viên")) {
                                            count++;
                                        }
                                    }

                                %>
                                <div class="count">
                                    <%=count%>
                                </div>
                                <div class="title">Tổng Các Cộng Tác Nhân Viên</div>
                            </div>
                            <!--/.info-box-->
                        </div>
                    </a>
                    <!--/.col-->

                    <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <a href="QuanLySN.jsp">
                            <div id="bang2" class="info-box dark-bg">
                                <i class="fas fa-birthday-cake"></i>
                                <div class="count">
                                    <%
                                        String d = new SimpleDateFormat("dd-MM").format(new Date().getTime());
                                        Date d1 = new SimpleDateFormat("dd-MM").parse(d);
                                        int countSN = 0;
                                        for (NhanVienChinhThuc nv : PersonalDAO.getNhanVienChinhThuc()) {
                                            String s = nv.getBirthday();
                                            Date d2 = new SimpleDateFormat("dd-MM").parse(s);

                                            Long ngaySN = (d2.getTime() - d1.getTime()) / (24 * 60 * 60 * 1000);

                                            if (ngaySN >= -7 && ngaySN <= 0) 
                                            {   countSN++;}
                                        }
                                    %>
                                    <%
                                        out.print(countSN);
                                    %>
                                    
                                </div>
                                <div class="title">Birthday NV Chính Sắp Đến</div>
                            </div>
                        </a>
                        <!--/.info-box-->
                    </div>
                    <!--/.col-->

                    <a href="QuanLyNgayVao.jsp">
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                            <div id="bang3" class="info-box dark-bg">
                                <i class="far fa-clock"></i>
                                <div class="count">
                                    <%
                                        int countngaynghi = 0;
                                        String d3 = new SimpleDateFormat("dd-MM").format(new Date().getTime());
                                        Date d4 = new SimpleDateFormat("dd-MM").parse(d3);
                                        for (NhanVienChinhThuc nvs : PersonalDAO.getNhanVienChinhThuc()) {

                                            String t = nvs.getHire_Date();
                                            Date d5 = new SimpleDateFormat("dd-MM").parse(t);
                                            Long ngaydau = (d5.getTime() - d4.getTime()) / (24 * 60 * 60 * 1000);
                                            if (ngaydau >= -7 && ngaydau <= 0) {
                                                countngaynghi++;
                                            }
                                        }

                                    %>
                                    <%=countngaynghi%>

                                </div>
                                <div class="title">Anniversary Nhân Viên</div>
                            </div>
                            <!--/.info-box-->
                        </div>
                    </a>
                    <!--/.col-->



<!--                    <a href="">
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                            <div id="bang4" class="info-box dark-bg">
                                <i class="fa fa-cubes"></i>

                                <div class="count">
                                    ???
                                </div>
                                <div class="title">???</div>
                            </div>
                            /.info-box
                        </div>
                    </a>-->

                    <!--/.col-->
                    <a href="TaoHoSoNhanVien.jsp">
                        <div class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                            <div id="bang5" class="info-box blue-bg">
                                <i class="fas fa-plus-square"></i>
                                <div class="count"></div>
                                <div class="title">Thêm Nhân Viên Mới</div>
                            </div>
                            <!--/.info-box-->
                        </div>
                    </a>
<!--                    <div style="margin-top: -170px;" class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div id="bang6" class="info-box dark-bg">
                            <i class="fas fa-people-carry"></i>
                            <div class="count">??</div>
                            <div class="title">???</div>
                        </div>
                        /.info-box
                    </div>-->
                    <!--/.col-->
<!--                    <div style="margin-top: -170px;margin-left: 289px;" class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div id="bang7" class="info-box dark-bg">
                            <i class="far fa-clock"></i>
                            <div class="count">??</div>
                            <div class="title">???</div>
                        </div>
                        /.info-box
                    </div>  -->
<!--                    <div style="margin-top: -170px; margin-left: 585px;" class="col-lg-3 col-md-3 col-sm-12 col-xs-12">
                        <div id="bang8" class="info-box dark-bg">
                            <i class="fas fa-umbrella-beach"></i>
                            <div class="count"></div>
                            <div class="title">Kỳ Nghỉ</div>
                        </div>
                    </div>-->

                    <!--/.info-box-->


                </div>
                <!--/.row-->

            </section>
            <div class="text-center">
                <div class="credits">
                    <a href="#">Quản Lý Nhân Sự Của Công Ty B34</a>
                </div>
            </div>
        </section>
    </body>
</html>
