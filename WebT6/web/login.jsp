<%@page contentType="text/html" pageEncoding="UTF-8"%>
<!DOCTYPE HTML>
<html>
    <head>
        <title>Free Leoshop Website Template | Login :: w3layouts</title>
        <jsp:include page="head.jsp"></jsp:include>
        </head>
        <body>
        <jsp:include page="header.jsp"></jsp:include>
            <div class="login">
                <div class="wrap">
                    <div class="col_1_of_login span_1_of_login">
                        <h4 class="title">Bạn chưa có tài khoản</h4>
                        <p>Lorem ipsum dolor sit amet, consectetuer adipiscing elit, sed diam nonummy nibh euismod tincidunt ut laoreet dolore magna aliquam erat volutpat. Ut wisi enim ad minim veniam, quis nostrud exerci tation ullamcorper suscipit lobortis nisl ut aliquip ex ea commodo consequat. Duis autem vel eum iriure dolor in hendrerit in vulputate velit esse molestie consequat, vel illum dolore eu feugiat nulla facilisis at vero eros et accumsan</p>
                        <div class="button1">
                            <a href="register.jsp"><input type="submit" name="Submit" value="Tạo tài khoản mới"></a>
                        </div>
                        <div class="clear"></div>
                    </div>
                    <div class="col_1_of_login span_1_of_login">
                        <div class="login-title">
                            <h4 class="title">Bạn đã có tài khoản</h4>
                            <div id="loginbox" class="loginbox">
                                <form action="UsersServlet" method="POST" name="login" id="login-form">
                                <%if (request.getParameter("error") != null) {%>
                                <div>
                                    <p style="color:red"><%=request.getParameter("error")%></p>
                                </div> 
                                <%}%>
                                <fieldset class="input">
                                    <p id="login-form-username">
                                        <label for="modlgn_username">Email</label>
                                        <input id="modlgn_username" type="text" name="email" class="inputbox" size="18" autocomplete="off">
                                    </p>
                                    <p id="login-form-password">
                                        <label for="modlgn_passwd">Password</label>
                                        <input id="modlgn_passwd" type="password" name="pass" class="inputbox" size="18" autocomplete="off">
                                    </p>
                                    
                                    <div class="remember">
                                        <p id="login-form-remember">
                                            <label for="modlgn_remember"><a href="#">Quên mật khẩu ? </a></label>
                                        </p>
                                        <input type="hidden" value="login" name="command">
                                        <input type="submit" name="login" class="button" value="Login">
                                        <div class="clear"></div>
                                    </div>
                                </fieldset>
                            </form>
                        </div>
                    </div>
                </div>
                <div class="clear"></div>
            </div>
        </div>
        <jsp:include page="footer.jsp"></jsp:include>
    </body>
</html>