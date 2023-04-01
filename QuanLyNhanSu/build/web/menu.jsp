
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head>
        <meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
        <title>Menu</title>
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
        <link rel="stylesheet" href="https://use.fontawesome.com/releases/v5.5.0/css/all.css"  />
        <script>
            //knob
            $(function () {
                $(".knob").knob({
                    'draw': function () {
                        $(this.i).val(this.cv + '%')
                    }
                })
            });

            //carousel
            $(document).ready(function () {
                $("#owl-slider").owlCarousel({
                    navigation: true,
                    slideSpeed: 300,
                    paginationSpeed: 400,
                    singleItem: true

                });
            });

            //custom select box

            $(function () {
                $('select.styled').customSelect();
            });

            /* ---------- Map ---------- */
            $(function () {
                $('#map').vectorMap({
                    map: 'world_mill_en',
                    series: {
                        regions: [{
                                values: gdpData,
                                scale: ['#000', '#000'],
                                normalizeFunction: 'polynomial'
                            }]
                    },
                    backgroundColor: '#eef3f7',
                    onLabelShow: function (e, el, code) {
                        el.html(el.html() + ' (GDP - ' + gdpData[code] + ')');
                    }
                });
            });
        </script>

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
    </head>
    <body>
        <!--sidebar start-->
        <%
            if (session.getAttribute("user") == null) {
                response.sendRedirect("404.jsp");
            }
        %>
        <aside>
            <div id="sidebar" class="nav-collapse ">
                <!-- sidebar menu start-->
                <ul class="sidebar-menu">
                    <li class="active">
                        <a id="a" href="indexAdmin.jsp">
                            <i class="icon_house_alt"></i>
                            <span>Dashboard</span>
                        </a>
                    </li>
                    <li>
                        <a class="a" href="QuanLyNhanVienMoi.jsp">
                            <i class="fas fa-child"></i>
                            <span>Quản Lý Cộng Tác Viên</span>
                        </a>
                    </li>
                    <li>
                        <a class="" href="QuanLyNhanVienChinhThuc.jsp">
                            <i class="fas fa-users"></i>
                            <span>Quản Lý Nhân Viên Chính Thức</span>
                        </a>
                    </li>
                    <li>
                        <a class="" href="QuanLyNgayVao.jsp">
                            <i class="fas fa-calendar-alt"></i>
                            <span>Quản Lý Ngày Vào</span>
                        </a>
                    </li>
                    <li>
                        <a class="" href="QuanLyLuong.jsp">
                            <i class="fas fa-hand-holding-usd"></i>
                            <span>Quản Lý Lương</span>
                        </a>
                    </li>
                    <li>
                        <a class="" href="QuanLySN.jsp">
                            <i style="margin-left:0px;" class="fas fa-birthday-cake"></i>
                            <span>Quản Lý Sinh Nhật</span>
                        </a>
                    </li>
                    <li>
                        <a class="" href="QuanLyNghiPhep.jsp">
                            <i class="fas fa-temperature-low"></i>
                            <span>Quản Lý Ngày Nghỉ</span>
                        </a>
                    </li>
                </ul>
                <!-- sidebar menu end-->
            </div>
        </aside>
        <!--sidebar end-->
    </body>
</html>
