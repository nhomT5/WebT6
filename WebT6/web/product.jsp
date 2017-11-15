<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Cart"%>
<%@page import="Model.Product"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="Model.Category"%>
<%@page import="java.util.ArrayList"%>
<html>
    <%
        CategoryDAO categoryDAO = new CategoryDAO();
        ProductDAO productDAO = new ProductDAO();
        long categoryID = 0;
        if (request.getParameter("categoryID") != null) {
            categoryID = (long) Long.parseLong(request.getParameter("categoryID"));
        }
        int pages = 0, firstResult = 0, maxResult = 0, total = 0;
        if (request.getParameter("pages") != null) {
            pages = (int) Integer.parseInt(request.getParameter("pages"));
        }

        total = productDAO.countProductByCategory(categoryID);
        if (total <= 8) {
            firstResult = 1;
            maxResult = total;
        } else {
            firstResult = (pages - 1) * 8;
            maxResult = 8;
        }

        ArrayList<Product> listProduct = productDAO.getListProductByNav(
                categoryID, firstResult, maxResult);


    %>
    <head>
        <title>Thực Phẩm</title>
        <script src="js/jquery.easydropdown.js"></script>
        <jsp:include page="head.jsp"></jsp:include>
        </head>
        <body>

        <jsp:include page="header.jsp"></jsp:include>
            <div class="mens"> 
                <div class="main">
                    <div class="wrap">
                        <div class="cont span_2_of_3">


                            <div class="top-box">
                            <%                                for (Product p : listProduct) {
                            %>
                            <div class="col_1_of_3 span_1_of_3"> 
                                <a href="single.jsp?productID=<%=p.getProductID()%>">
                                    <div class="inner_content clearfix">
                                        <div class="product_image">
                                            <img src="<%=p.getProductImage()%>" alt=""/>
                                        </div>
                                        <div class="sale-box"><span class="on_sale title_shop">Hàng mới</span></div>	
                                        <div class="price">
                                            <div class="cart-left">
                                                <p class="title"><%=p.getProductName()%></p>
                                                <div class="price1">
                                                    <span class="actual"><%=p.getProductPrice()%>đ</span>
                                                </div>
                                            </div>
                                            <div class="cart-right"> </div>
                                            <div class="clear"></div>
                                        </div>				
                                    </div>
                                </a>
                            </div>
                            <%}%>
                        </div>
                        <div class="clear"></div>
                        <ul class="dc_pagination trang">
                            <%for (int i = 1; i <= (total / 8) + 1; i++) {%>
                            <li><a href="product.jsp?categoryID=<%=categoryID%>&pages=<%=i%>"><%=i%></a></li>
                                <%}%>
                        </ul>
                    </div>
                    <div class="rsidebar span_1_of_left">
                        <h5 class="m_1">Sản phẩm</h5>
                        <%
                            for (Category d : categoryDAO.getListAllCategory()) {
                        %>
                        <li><a href="product.jsp?category=<%=d.getCategoryID()%>"><%=d.getCategoryName()%></a></li>
                            <%
                                }
                            %>
                    </div>

                    <div class="clear"></div>

                </div>
            </div>

        </div>

        <div class="clear"></div>
        <jsp:include page="footer.jsp"></jsp:include>

    </body>
</html>