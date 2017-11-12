
<%@page import="Model.Item"%>
<%@page import="java.util.Map"%>
<%@page import="Model.Cart"%>
<%@page import="Model.Users"%>
<%@page import="Model.Category"%>
<%@page import="DAO.CategoryDAO"%>
<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%
    CategoryDAO categoryDAO = new CategoryDAO();

    Users users = null;
    if (session.getAttribute("user") != null) {
        users = (Users) session.getAttribute("user");
    }
    Cart cart = (Cart) session.getAttribute("cart");
    if (cart == null) {
        cart = new Cart();
        session.setAttribute("cart", cart);
    }

%>
<div class="header-top">
    <div class="wrap"> 
        <div class="cssmenu">
            <ul>
                <li class="active"><a href="login.jsp">Tài khoản</a></li> |
                <li><a href="cart.jsp">Giỏ hàng</a></li> |
                <li><a href="login.jsp">Đăng Nhập</a></li> |
                <li><a href="register.jsp">Đăng ký</a></li>
            </ul>
        </div>
        <div class="clear"></div>
    </div>
</div>
<div class="header-bottom">
    <div class="wrap">
        <div class="header-bottom-left">
            <div class="logo">
                <a href="index.jsp"><img src="images/logo.png" alt=""/></a>
            </div>
            <div class="menu">
                <ul class="megamenu skyblue">
                    <li class="active grid"><a href="index.jsp">Trang chủ</a></li>
                    <li><a class="color4" href="#">Thực phẩm tươi sạch</a>
                        <div class="megapanel">

                            <div class="row">
                                <div class="col1">
                                    <div class="h_nav">
                                        <ul>
                                            <%                                                                                        
                                                for (Category c : categoryDAO.getListCategory()){
                                            %>
                                            <li><a href="product.jsp?category=<%=c.getCategoryID()%>"><%=c.getCategoryName()%></a></li>
                                                <%
                                                    }
                                                %>
                                        </ul>	
                                    </div>							
                                </div>
                            </div>

                        </div>
                    </li>				
                    <li><a class="color5" href="#">Đồ uống</a>
                        <div class="megapanel">
                            <div class="col1">
                                <div class="h_nav">

                                    <ul>
                                        <%
                                            for (Category c2 : categoryDAO.getListCategory2()) {
                                        %>
                                        <li><a href="product.jsp?category=<%=c2.getCategoryID()%>"><%=c2.getCategoryName()%></a></li>
                                            <%
                                                }
                                            %>
                                    </ul>	
                                </div>							
                            </div>
                        </div>
                    </li>
                </ul>
            </div>
        </div>
        <div class="header-bottom-right">
            <div class="search">	  
                <input type="text" name="s" class="textbox" value="Search" onfocus="this.value = '';" onblur="if (this.value == '') {
                            this.value = 'Search';
                        }">
                <input type="submit" value="Subscribe" id="submit" name="submit">
                <div id="response"> </div>
            </div>
            <div class="tag-list">
                <ul class="last"><li><a href="cart.jsp">Cart(<%=cart.countItem()%>)</a></li></ul>


            </div>
        </div>
        <div class="clear"></div>
    </div>
</div>