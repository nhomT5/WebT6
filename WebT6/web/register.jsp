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
                        $.post('CheckEmailServlet', {'email': email}, function (data) {
                            $("#user-result").html(data);
                        });
                    }


                });

            </script>
            <script  type="text/javascript">
                function formValidation()
                {
                    var uid = document.registration.userid;
                    var passid = document.registration.pass;
                    var uname = document.registration.username;
                    var uadd = document.registration.address;
                    var ucountry = document.registration.country;
//    var uzip = document.registration.zip;
                    var uemail = document.registration.email;
                    var umsex = document.registration.msex;
                    var ufsex = document.registration.fsex;
                    if (userid_validation(uid, 5, 12))
                    {
                        if (passid_validation(passid, 7, 12))
                        {
                            if (allLetter(uname))
                            {
                                if (alphanumeric(uadd))
                                {
                                    if (countryselect(ucountry))
                                    {

                                        if (ValidateEmail(uemail))
                                        {
                                            if (validsex(umsex, ufsex))
                                            {
                                            }
                                        }

                                    }
                                }
                            }
                        }
                    }
                    return false;

                }
                function userid_validation(uid, mx, my)
                {
                    var uid_len = uid.value.length;
                    if (uid_len == 0 || uid_len >= my || uid_len < mx)
                    {
                        alert("User Id should not be empty / length be between " + mx + " to " + my);
                        uid.focus();
                        return false;
                    }
                    return true;
                }
                function passid_validation(passid, mx, my)
                {
                    var passid_len = passid.value.length;
                    if (passid_len == 0 || passid_len >= my || passid_len < mx)
                    {
                        alert("Password should not be empty / length be between " + mx + " to " + my);
                        passid.focus();
                        return false;
                    }
                    return true;
                }
                function allLetter(uname)
                {
                    var letters = /^[A-Za-z]+$/;
                    if (uname.value.match(letters))
                    {
                        return true;
                    } else
                    {
                        alert('Username must have alphabet characters only');
                        uname.focus();
                        return false;
                    }
                }
                function alphanumeric(uadd)
                {
                    var letters = /^[0-9a-zA-Z]+$/;
                    if (uadd.value.match(letters))
                    {
                        return true;
                    } else
                    {
                        alert('User address must have alphanumeric characters only');
                        uadd.focus();
                        return false;
                    }
                }
//function countryselect(ucountry)
//{
//    if (ucountry.value == "Default")
//    {
//        alert('Select your country from the list');
//        ucountry.focus();
//        return false;
//    } else
//    {
//        return true;
//    }
//}
//function allnumeric(uzip)
//{
//    var numbers = /^[0-9]+$/;
//    if (uzip.value.match(numbers))
//    {
//        return true;
//    } else
//    {
//        alert('ZIP code must have numeric characters only');
//        uzip.focus();
//        return false;
//    }
//}
                function ValidateEmail(uemail)
                {
                    var mailformat = /^\w+([\.-]?\w+)*@\w+([\.-]?\w+)*(\.\w{2,3})+$/;
                    if (uemail.value.match(mailformat))
                    {
                        return true;
                    } else
                    {
                        alert("You have entered an invalid email address!");
                        uemail.focus();
                        return false;
                    }
                }
                function validsex(umsex, ufsex)
                {
                    x = 0;

                    if (umsex.checked)
                    {
                        x++;
                    }
                    if (ufsex.checked)
                    {
                        x++;
                    }
                    if (x == 0)
                    {
                        alert('Select Male/Female');
                        umsex.focus();
                        return false;
                    } else
                    {
                        alert('Form Succesfully Submitted');
                        window.location.reload()
                        return true;
                    }
                }
            </script>


        </head>
        <body onload="document.registration.userid.focus() >
        <jsp:include page="header.jsp"></jsp:include>

                < div class ="register_account">
            <div class="wrap">
                <h4 class="title">Tạo tài khoản mới</h4>
                <form action="UsersServlet" method="POST">
                    <form name = 'registration' onSubmit = "return formValidation()" >
                        <div class="col_1_of_2 span_1_of_2">
                            <div>
                                <p id="login-form-username">
                                    Username:  <input type="text" name="username" value='Tên' id="username" class="inputbox" size="18" autocomplete="on">

                                </p>
                            </div>
                            <div>
                                <p id="login-form-username">
                                    Tài khoản email: <input type="text" name="email" value='Email' id="email" class="inputbox" size="18" onchange="checkEmailRegist()">
                                    <span id="user-result"></span>
                                </p>
                            </div>
                            <div> 
                                <p id="login-form-password">
                                    Mật khẩu:  <input type="password" name="pass" id="pass" box-size="16" value="pass" class="inputbox"  >

                                </p>
                                <br>
                            </div>
                            <div> 
                                <p id="login-form-password">
                                    Nhập lại mật khẩu:  <input type="password" name="repass" id="repass" size="16"  value="pass" class="inputbox"  >
                                </p>
                            </div>
                            <div> 
                                <p id="login-form-password">
                                    Giới tính:<br>
                                <form>
                                    <input type="radio" name="sex" id="umsex" value="male" checked> Male
                                    <input type="radio" name="sex" id="ufsex" value="female"> Female<br>
                                </form>
                                </p>
                                <br>
                            </div>
                            <div> 
                                <p id="login-form-password">
                                    Địa chỉ:  <input type="text" name="address" id="address" box-size="16" value="pass"  class="inputbox"  >

                                </p>
                                <br>
                            </div>
                            <div> 
                                <p id="login-form-password">
                                    Thành phố: <input type="text" name="country" id="country" box-size="16" value="pass"  class="inputbox"  >

                                </p>
                                <br>
                            </div>

                            <div class="col_1_of_2 span_1_of_4">
                                <input type="hidden" value="insert" name="command">
                                <button type="submit" class="grey" name="insert">Đăng ký</button>
                            </div> 
                    </form>
            </div>

            <div class="clear"></div>

        </div>
    </div>

</form>

<jsp:include page="footer.jsp"></jsp:include>
</body>
</html>