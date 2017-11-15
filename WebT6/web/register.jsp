<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Đăng ký</title>
        <jsp:include page="head.jsp"></jsp:include>
            <script src="//ajax.googleapis.com/ajax/libs/jquery/1.9.1/jquery.min.js" type="text/javascript"></script>
            <script type="text/javascript">
                $(document).ready(function () {
                    var x_timer;
                    $("#email").keyup(function (e) {
                        clearTimeout(x_timer);
                        var user_email = $(this).val();
                        x_timer = setTimeout(function () {
                            check_username_ajax();
                        }, 1000);
                    });

                    function check_username_ajax(email) {
                        $("#user-result").html('<img src="img/ajax-loader.gif" />');
                        $.post('CheckEmailServlet', {'username': email}, function (data) {
                            $("#user-result").html(data);
                        });
                    }
                });
            </script>
        </head>
        <body> 
        <jsp:include page="header.jsp"></jsp:include>
            <div class="register_account">
                <div class="wrap">
                    <h4 class="title">Tạo tài khoản mới</h4>
                    <form action="UsersServlet" method="POST">
                        <div class="col_1_of_2 span_1_of_2">
<!--                            <div>
                                <p id="login-form-username">
                                    <input type="text" name="username" value='Tên' id="email" class="inputbox" size="18" autocomplete="on">
                                    <span id="user-result"></span>
                                </p>
                            </div>-->
                            <div>
                                <p id="login-form-email">
                                    <input type="text" name="email" value='Email' class="inputbox" size="18" autocomplete="on">
                                    <span id="user-result"></span>
                                </p>
                            </div>
                            <div> 
                                <p id="login-form-password">
                                    <input type="password" name="pass" value='Mật khẩu'  class="inputbox" size="18" autocomplete="off" >
                                    <span></span>
                                </p>
                            </div>
                        </div>
                        <div class="col_1_of_2 span_1_of_2">
                        </div>
                        <!--                        <button class="grey" name=''>Đăng ký</button>-->
                        <input type="hidden" value="insert" name="command">
                        <button class="grey" name="insert">Đăng ký</button>
                        <div class="clear"></div>
                    </form>
                </div>
            </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>