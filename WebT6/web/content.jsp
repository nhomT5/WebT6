<%@page contentType="text/html" pageEncoding="UTF-8"%>
<%@page import="Model.Cart"%>
<%@page import="Model.Product"%>
<%@page import="DAO.ProductDAO"%>
<%@page import="DAO.CategoryDAO"%>
<%@page import="Model.Category"%>
<%@page import="java.util.ArrayList"%>

<div class="mens"> 
    <%
        ProductDAO productDAO = new ProductDAO();
        CategoryDAO categoryDAO = new CategoryDAO();

        long categoryID = 0;
        if (request.getParameter("categoryID") != null) {
            categoryID = (long) Long.parseLong(request.getParameter("categoryID"));
        }
        int pages = 0, firstResult = 0, maxResult = 0, total = 0;
        if (request.getParameter("pages") != null) {
            pages = (int) Integer.parseInt(request.getParameter("pages"));
        }

        total = productDAO.countProductByCategory(categoryID);
        if (total <= 4) {
            firstResult = 1;
            maxResult = total;
        } else {
            firstResult = (pages - 1) * 4;
            maxResult = 4;
        }

        ArrayList<Product> listProduct = productDAO.getListProductByNav(
                categoryID, firstResult, maxResult);

    %>
    <div class="main">
        <div class="wrap">
            <div class="cont span_2_of_3">
                <h2 class="head">Sản phẩm mới</h2>   
                <div class="top-box">
                    <%    for (Product pr : productDAO.getListProductNew()) {
                    %>
                    <div class="col_1_of_3 span_1_of_3">
                        <a href="single.jsp?productID=<%=pr.getProductID()%>&pages=1">
                            <div class="inner_content clearfix">
                                <div class="product_image">
                                    <img src="<%=pr.getProductImage()%>" alt=""/>
                                </div>
                                <div class="sale-box"><span class="on_sale title_shop">Hàng mới</span></div>	
                                <div class="price">
                                    <div class="cart-left">
                                        <p class="title"><%=pr.getProductName()%></p>
                                        <div class="price1">
                                            <span class="actual"><%=pr.getProductPrice()%>đ</span>
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
                <ul class="dc_pagination trang">
                    <li><a>Trang</a></li>
                        <%for (int i = 1; i <= (total / 4) + 1; i++) {%>
                    <li><a href="product.jsp?categoryID=<%=categoryID%>&pages=<%=i%>"><%=i%></a></li>
                        <%}%>
                </ul>
            </div>

            <div class="rsidebar span_1_of_left">
                <h5 class="m_1">Sản phẩm</h5>
                <%
                    for (Category s : categoryDAO.getListAllCategory()) {
                %>
                <li><a href="product.jsp?category=<%=s.getCategoryID()%>"><%=s.getCategoryName()%></a></li>
                    <%
                        }
                    %>
            </div>
            <div class="cont span_2_of_3">
                <h2 class="head">Sản phẩm bán chạy</h2> 
                <div class="top-box">
                    <%
                        for (Product h : productDAO.getListProductHot()) {
                    %>
                    <div class="col_1_of_3 span_1_of_3">
                        <a href="single.jsp?productID=<%=h.getProductID()%>">
                            <div class="inner_content clearfix">
                                <div class="product_image">
                                    <img src="<%=h.getProductImage()%>" alt=""/>
                                </div>
                                <div class="sale-box"><span class="on_sale title_shop">Bán chạy</span></div>	
                                <div class="price">
                                    <div class="cart-left">
                                        <p class="title"><%=h.getProductName()%></p>
                                        <div class="price1">
                                            <span class="actual"><%=h.getProductPrice()%>đ</span>
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
                <ul class="dc_pagination trang">
                    <li><a>Trang</a></li>
                        <%for (int i = 1; i <= (total / 4) + 1; i++) {%>
                    <li><a href="product.jsp?categoryID=<%=categoryID%>&pages=<%=i%>"><%=i%></a></li>
                        <%}%>
                </ul>
            </div>
            <div class="clear"></div>
        </div>
    </div>
</div>