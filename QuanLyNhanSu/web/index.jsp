<%@page import="model.User"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html lang="en">
    <head>
    <body style="background: url(images/hinhnen.jpg)"></body>
    
        <title>Đăng Nhập</title>
        <!-- Meta tag Keywords -->
        <meta name="viewport" content="width=device-width, initial-scale=1">
        <meta http-equiv="Content-Type" content="text/html; charset=utf-8" />

        <script type="application/x-javascript"> addEventListener("load", function() { setTimeout(hideURLbar, 0); }, false);
            function hideURLbar(){ window.scrollTo(0,1); } </script>
        <!-- Meta tag Keywords -->
        <!-- css files -->
        <link rel="stylesheet" href="css/font-awesome.css"> <!-- Font-Awesome-Icons-CSS -->
        <link rel="stylesheet" href="css/style.css" type="text/css" media="all" /> <!-- Style-CSS --> 
        <!-- //css files -->
        <!-- web-fonts -->
        <link href="//fonts.googleapis.com/css?family=Open+Sans:300,300i,400,400i,600,600i,700" rel="stylesheet">
        <link href="//fonts.googleapis.com/css?family=Josefin+Slab:100,300,400,600,700" rel="stylesheet">
        <!-- //web-fonts -->
        <style>
            input[type=button]
            {
                opacity: 0.7;
                margin-left: 160px;
                margin-right: 0%;
                margin-bottom: 40px;
                background-color: rgba(0, 0, 0, 0.34);
                color: white;
                font-size: 30px;
                cursor: pointer;
                margin-top: 31px;
                transition: 0.5s ease;
                /*text-align: center;*/
                
            }
            .header-w3l
            {
                color: #fff;
                letter-spacing: 9px;
                text-shadow: 4px 4px 3px #000;
                word-spacing: 4px;
                font-weight: 500;
                font-family: 'Josefin Slab', serif;
                margin: 1.7em 0 1em;
                font-size: 30px;
                margin-left: 336px;
                /*text-align: center;*/
            }
            input[type=button]:hover
            {
                animation: swing 1s ease;
                border-color: #00c6d7;
                box-shadow: 0 10px 6px -6px #777;
                color: #00c6d7;
                text-align: center;
            }
            
        </style>
        <script type='text/javascript' src='js/jquery-3.3.1.js'></script>
        <script type='text/javascript'>

            $(document).ready(function ()
            {
                $("#class_login_hide").hide();
                $("#login").click(function ()
                {
                    $("#class_register_hide").hide();
                    $("#class_login_hide").fadeToggle(2000);
                });
                $("#class_register_hide").hide();
                $("#register").click(function ()
                {
                    $("#class_login_hide").hide();
                    $("#class_register_hide").fadeToggle(2000);
                });

            });
            
        </script>
    </head>
    <body>
        <!--header-->
        <div class="header-w3l">
            <h1 style="margin-right: 400px;">Quản Lý Nhân Sự</h1>
            <!--<h3> Quản Lý Nhân Sự </h3>-->
            <input  id="login"  type="button" value="Đăng Nhập" />
            <input id="register"  type="button" value="Đăng Ký" />
            <% String err = (String) request.getAttribute("error");
                if (err != null) {%>
            <div>
                <p style="color:white;"><span style="margin-left:30px;"><%out.print(err); %></span></p>
            </div> 
            <% }%>
            <% User add = (User) request.getAttribute("add");
                if (add != null) {%>
            <div>
                <p style="color:white;"><span style="margin-left:110px;">Đã Đăng Ký Tài Khoản  <%=add.getUsername()%></span></p>
            </div> 
            <% }%>
        </div>
        <!--//header-->
        <!--main-->
        <div id="class_login_hide" class="main-w3layouts-agileinfo" style="position: relative;display:none;">
            <div class="wthree-form">
                <h2>Điền Thông Tin Để Đăng Nhập</h2>
                <form name="hide_form" action="XuLyDangNhap" method="get">
                    <div class="form-sub-w3">
                        <input type="text" name="Username" placeholder="Tên Đăng Nhập" required="" />
                        <div class="icon-w3">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="form-sub-w3">
                        <input type="password" name="Password" placeholder="Mật Khẩu" required="" />
                        <div class="icon-w3">
                            <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                        </div>
                    </div>
                    <label class="anim">
                        <input type="checkbox" class="checkbox">
                        <span>Remember me</span> 
                        <a href="#">Quên Mật Khẩu</a>
                    </label> 
                    <div class="clear"></div>
                    <div class="submit-agileits">
                        <span><input type="submit" value="Đăng Nhập"></span>
                    </div>
                </form>
            </div>
        </div>
        <div id="class_register_hide" class="main-w3layouts-agileinfo" style="position: relative;display:none;">
        <!--<div id="class_register_hide" style="position: absolute;margin-left: 421px;display:none;" name="register" class="main-w3layouts-agileinfo">-->
            <div class="wthree-form">
                <h2>Điền Thông Tin Đăng Ký</h2>
                <form name="hide_form" action="XuLyDangNhap" method="post">
                    <div class="form-sub-w3">
                        <input type="text" name="userN" placeholder="Tên Đăng Nhập " required="" />
                        <div class="icon-w3">
                            <i class="fa fa-user" aria-hidden="true"></i>
                        </div>
                    </div>
                    <div class="form-sub-w3">
                        <input type="password" name="userP" placeholder="Mật Khẩu" required="" />
                        <input type="password" name="retype" placeholder="Nhập Lại Mật Khẩu" required="" />
                        <div class="icon-w3">
                            <i class="fa fa-unlock-alt" aria-hidden="true"></i>
                        </div>
                    </div>
                    <label class="anim">
                        <input type="checkbox" class="checkbox">
                        <span>Remember me</span> 
                        <a href="#">Quên Mật Khẩu</a>
                    </label> 
                    <div class="clear"></div>
                    <div class="submit-agileits">
                        <input type="submit" value="Đăng Ký">
                    </div>
                </form>
            </div>
        </div>
    </div>
    <!--//main-->
</body>
</html>